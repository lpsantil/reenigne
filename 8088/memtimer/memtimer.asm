  %include "../defaults_bin.asm"

  mov al,TIMER0 | BOTH | MODE2 | BINARY
  out 0x43,al
  xor al,al
  out 0x40,al
  out 0x40,al

  cli

  mov ax,0
  mov ds,ax
  mov ax,cs
  mov word[0x20],interrupt8
  mov [0x22],ax

  mov ds,ax
  mov es,ax
  mov ss,ax
  mov sp,0

  mov si,experimentData
nextExperiment:
  xor bx,bx
  mov [lastQuotient],bx

  ; Print name of experiment
printLoop:
  lodsb
  cmp al,'$'
  je donePrint
  outputCharacter
  inc bx
  jmp printLoop
donePrint:
  cmp bx,0
  jne printSpaces

  ; Finish
  complete


  ; Print spaces for alignment
printSpaces:
  mov cx,21  ; Width of column
  sub cx,bx
  jg spaceLoop
  mov cx,1
spaceLoop:
  outputCharacter ' '
  loop spaceLoop

  lodsb
  cmp al,0
  je noRefresh
  mov byte[pitMode],TIMER1 | LSB | MODE2 | BINARY
  mov [pitCount],al
  jmp doneRefresh
noRefresh:
  mov byte[pitMode],TIMER1 | LSB | MODE0 | BINARY
  mov byte[pitCount],1
doneRefresh:

  mov cx,5    ; Number of repeats
repeatLoop:

  push cx

  mov cx,480+48  ; Number of iterations in primary measurement
  call doMeasurement
  push bx
  mov cx,48      ; Number of iterations in secondary measurement
  call doMeasurement
  pop ax         ; The primary measurement will have the lower value, since the counter counts down
  sub ax,bx      ; Subtract the secondary value, which will be higher, now AX is negative
  neg ax         ; Negate to get the positive difference.

  xor dx,dx
  mov cx,120
  div cx       ; Divide by 120 to get number of cycles (quotient) and number of extra tcycles (remainder)

  push dx      ; Store remainder

  ; Output quotient
  xor dx,dx
  mov [quotient],ax
  mov cx,10
  div cx
  add dl,'0'
  mov [output+2],dl
  xor dx,dx
  div cx
  add dl,'0'
  mov [output+1],dl
  xor dx,dx
  div cx
  add dl,'0'
  mov [output+0],dl

  ; Output remainder
  pop ax
  xor dx,dx
  div cx
  add dl,'0'
  mov [output+7],dl
  xor dx,dx
  div cx
  add dl,'0'
  mov [output+6],dl
  xor dx,dx
  div cx
  add dl,'0'
  mov [output+5],dl

  ; Emit the final result text
  push si
  mov ax,[quotient]
  cmp ax,[lastQuotient]
  jne fullPrint

  mov cx,6
  mov si,output+4
  jmp doPrint
fullPrint:
  mov [lastQuotient],ax
  mov cx,10
  mov si,output
doPrint:
  outputString
  pop si
  pop cx


  loop repeatLoop1

  ; Advance to the next experiment
  lodsw
  add si,ax
  lodsw
  add si,ax

  outputNewLine

  jmp nextExperiment

repeatLoop1:
  jmp repeatLoop

quotient: dw 0
lastQuotient: dw 0

output:
  db "000 +000  "


doMeasurement:
  push si
  push cx
  push cx  ; Save number of iterations

  ; Copy init
  lodsw    ; Number of init bytes
  mov cx,ax
  mov di,timerStartEnd
  call codeCopy

  ; Copy code
  lodsw    ; Number of code bytes
  pop cx
iterationLoop:
  push cx

  push si
  mov cx,ax
  call codeCopy
  pop si

  pop cx
  loop iterationLoop

  ; Copy timer end
  mov si,timerEndStart
  mov cx,timerEndEnd-timerEndStart
  call codeCopy

  ; Turn off refresh
  refreshOff

  ; Enable IRQ0
  mov al,0xfe  ; Enable IRQ 0 (timer), disable others
  out 0x21,al

  ; Use IRQ0 to go into lockstep with timer 0
  mov al,TIMER0 | LSB | MODE2 | BINARY
  out 0x43,al
  mov al,0x04  ; Count = 0x0004 which should be after the hlt instruction has
  out 0x40,al  ; taken effect.
  sti
  hlt

  mov al,0xff  ; Disble IRQs
  out 0x21,al

  ; The actual measurement happens in the the IRQ0 handler which runs here and
  ; returns the timer value in BX.

  ; Pop the flags pushed when the interrupt occurred
  pop ax

  pop cx
  pop si
  ret

codeCopy:
  cmp cx,0
  je codeCopyDone
codeCopyLoop:
  cmp di,0
  je codeCopyOutOfSpace
  movsb
  loop codeCopyLoop
codeCopyDone:
  ret
codeCopyOutOfSpace:
  mov si,outOfSpaceMessage
  mov cx,outOfSpaceMessageEnd-outOfSpaceMessage
  outputString
  complete

outOfSpaceMessage:
  db "Copy out of space - use fewer iterations"
outOfSpaceMessageEnd:


experimentData:

experimentUnpackShift:
  db "UnpackShift$"
  db 19
  dw .endInit - ($+2)
.endInit:
  dw .endCode - ($+2)
  mov cl,4    ;ax = ???????? -xxx-yyy
  cbw         ;ax = -------- -xxx-yyy
  shl ax,cl   ;ax = -----xxx -yyy0000
  sar al,cl   ;ax = -----xxx -----yyy
.endCode:

experimentUnpackTable:
  db "UnpackTable$"
  db 19
  dw .endInit - ($+2)
.endInit:
  dw .endCode - ($+2)
  xor bx,bx
  mov bl,al
  shl bx,1
  mov ax,word[cs:bx+0x1234]
.endCode:

experimentUnpackTable2:
  db "UnpackTable$"
  db 19
  dw .endInit - ($+2)
.endInit:
  dw .endCode - ($+2)
  xchg ax,bx
  mov bl,0
  add bx,bx
  mov ax,word[cs:bx+0x1234]
.endCode:

experimentKefrens:
  db "Kefrens$"
  db 19
  dw .endInit - ($+2)

  mov dx,0x3d9

.endInit:
  dw .endCode - ($+2)

  mov ax,0x7000
  mov ds,ax            ; 2 0
  mov sp,[bx]          ; 2 2

  pop di               ; 1 2
  mov al,[es:di]       ; 3 1 +WS
  pop cx               ; 1 2
  and ax,cx            ; 2 0
  pop cx               ; 1 2
  or ax,cx             ; 2 0
  stosw                ; 1 2 +WS +WS
  pop cx               ; 1 2
  and ch,[es:di+1]     ; 4 1 +WS
  mov al,0
  out dx,al
  pop ax               ; 1 2
  or ax,cx             ; 2 0
  stosw                ; 1 2 +WS +WS

  cld
  cld
;  mov ds,bp            ; 2 0

  pop ax               ; 1 2
  out dx,al            ; 1 1
.endCode:


experimentKBload:
  db "KBload$"
  db 18
  dw .endInit - ($+2)

  mov dx,0xe0
  mov ax,ds
  mov es,ax

.endInit:
  dw .endCode - ($+2)

  mov al,bl
  out dx,al
  mov al,bh
  out dx,al
  dec dx
.tst1:
  in al,0xe0
  and al,ah
  jnz .tst1
  stosb
  inc dx
  loop .tst
.tst:

.endCode:


experimentOctodeXL7:
  db "OctodeXL7$"
  db 18
  dw .endInit - ($+2)
.endInit:
  dw .endCode - ($+2)

  mov di,cx

.top:
  dec bl
  jz .noCarry1
  mov bl,9
  inc ax
.noCarry1:
  shl al,1
  shl al,1
  shl al,1
  out 0xe0,al
  xor ax,ax
  dec di
  jnz .top


.endCode:


experimentOctodeXL1a:
  db "OctodeXL1a$"
  db 18
  dw .endInit - ($+2)
.endInit:
  dw .endCode - ($+2)

  dec bl
  jnz .noCarry1
  mov bl,9
  db 5
.noCarry1:
.endCode:

experimentOctodeXL1b:
  db "OctodeXL1b$"
  db 18
  dw .endInit - ($+2)
.endInit:
  dw .endCode - ($+2)

  dec bl
  jnz .noCarry1
  mov bl,9
  db 5
.noCarry1:
.endCode:

experimentOctodeXL2:
  db "OctodeXL2$"
  db 18
  dw .endInit - ($+2)
.endInit:
  dw .endCode - ($+2)

  dec bl
  jz .noCarry1
  mov bl,9
  inc ax
.noCarry1:
.endCode:


lastExperiment:
  db '$'


savedSS: dw 0
savedSP: dw 0
pitMode: db 0
pitCount: db 0

timerEndStart:
  in al,0x40
  mov bl,al
  in al,0x40
  mov bh,al

  refreshOn

  mov al,0x20
  out 0x20,al

  mov ax,cs
  mov ds,ax
  mov es,ax
  mov ss,[savedSS]
  mov sp,[savedSP]

  ; Don't use IRET here - it'll turn interrupts back on and IRQ0 will be
  ; triggered a second time.
  popf
  retf
timerEndEnd:


  ; This must come last in the program so that the experiment code can be
  ; copied after it.

interrupt8:
  pushf

  mov al,[pitMode]
  out 0x43,al
  mov al,[pitCount]
  out 0x41,al

  xor ax,ax
  push ax
  popf
  mov [savedSS],ss
  mov [savedSP],sp
  mov bx,0x8000
  mov ds,bx
  mov bx,0x7000
  mov ss,bx
  mov bx,0xb800
  mov es,bx
  mov dx,ax
  mov bx,ax
  mov si,ax
  mov di,ax
  mov bp,ax
  mov sp,ax

  mov al,TIMER0 | BOTH | MODE2 | BINARY
  out 0x43,al
  mov al,0x00
  out 0x40,al
  out 0x40,al

  mov ax,bp
timerStartEnd:



org 0
cpu 8086

  cli

  ; Copy data
  mov ax,cs
  mov ds,ax
  mov ax,0xb800
  mov es,ax
  mov cx,8000
  mov si,data
  xor di,di
  cld
  rep movsw


; Scanline   0 = row  0 of  2-line screen (Address 0 = blank)
; Scanline   1 = row  1 of  2-line screen (Address 160 = pixel line 0)
; Scanline   2 = row  0 of  2-line screen (Address 160 = pixel line 0)
; Scanline   3 = row  1 of  2-line screen (Address 320 = pixel line 1)
; ...
; Scanline 198 = row  0 of  2-line screen (Address 15840 = pixel line 98)
; Scanline 199 = row  1 of  2-line screen (Address 16000 = pixel line 99)
; Scanline 200 = row  0 of 62-line screen (Address 16000 = pixel line 99)
; Scanline 201 = row  1 of 62-line screen (Address 16160 = blank)
; ...
; Scanline 224 = row 24 of 62-line screen - sync start
; ...
; Scanline 261 = row 61 of 62-line screen


  ; Mode                                                09
  ;      1 +HRES                                         1
  ;      2 +GRPH                                         0
  ;      4 +BW                                           0
  ;      8 +VIDEO ENABLE                                 8
  ;   0x10 +1BPP                                         0
  ;   0x20 +ENABLE BLINK                                 0
  ; *** http://stanislavs.org/helppc/6845.html    ***
  ; *** 3D8 = CGA Mode Select Controller Register ***
  mov dx,0x3d8
  mov al,0x09
  out dx,al

  ; Palette                                             00
  ;      1 +OVERSCAN B                                   0
  ;      2 +OVERSCAN G                                   2
  ;      4 +OVERSCAN R                                   4
  ;      8 +OVERSCAN I                                   0
  ;   0x10 +BACKGROUND I                                 0
  ;   0x20 +COLOR SEL                                    0
  ; *** 3D9 = CGA Color Select Register ***
  inc dx
  mov al,0
  out dx,al

  ; *** 3D4 = CGA Index Register ***
  mov dl,0xd4

  ; *** Select Register 0x00, write 0x71 (CO80) Horizontal total characters  ***
  ;   0xff Horizontal Total                             71
  mov ax,0x7100
  out dx,ax

  ; *** Select Register 01, write 0x50 (CO80) Horizontal displayed characters per line  ***
  ;   0xff Horizontal Displayed                         50
  mov ax,0x5001
  out dx,ax

  ; *** Select Register 02, write 0x5A (CO80) Horizontal Synch Pos  ***
  ;   0xff Horizontal Sync Position                     5a
  mov ax,0x5a02
  out dx,ax

  ; *** Select Register 03, write 00 (0??) Horizontal Synch Width in Chars  ***
  ;   0x0f Horizontal Sync Width                        0d
  mov ax,0x0003
  out dx,ax

  ; *** Select Register 04, write 0x3D (62??) Vert. total lines  ***
  ;   0x7f Vertical Total                               3d
  mov ax,0x3d04
  out dx,ax

  ; *** Select Register 05, write 00 (0??) Vert. scan lines  ***
  ;   0x1f Vertical Total Adjust                        00
  mov ax,0x0005
  out dx,ax

  ; *** Select Register 06, write 0x02 (2??) Vert. display rows  ***
  ;   0x7f Vertical Displayed                           02
  mov ax,0x0206
  out dx,ax

  ; *** Select Register 07, write 0x18 (24??) Vert. synch pos.  ***
  ;   0x7f Vertical Sync Position                       18
  mov ax,0x1807
  out dx,ax

  ; *** Select Register 08, write 0x02 Interlace mode on  ***
  ;   0x03 Interlace Mode                               02
  mov ax,0x0208
  out dx,ax

  ; *** Select Register 09, write 00 (0??) Maximum scan line address  ***
  ;   0x1f Max Scan Line Address                        00
  mov ax,0x0009
  out dx,ax

  ; *** Select Register 0A, write 0x06 (C080) Cursor start scan line  ***
  ; Cursor Start                                        06
  ;   0x1f Cursor Start                                  6
  ;   0x60 Cursor Mode                                   0
  mov ax,0x060a
  out dx,ax

  ; *** Select Register 0B, write 0x07 (CO80) Cursor end scan line  ***
  ;   0x1f Cursor End                                   07
  mov ax,0x070b
  out dx,ax

  ; *** Select Register 0C, write 00 (C080) Start address MSB  ***
  ;   0x3f Start Address (H)                            00
  mov ax,0x000c
  out dx,ax

  ; *** Select Register 0D, write 00 (C080) Start address LSB  ***
  ;   0xff Start Address (L)                            00
  mov ax,0x000d
  out dx,ax

  ; *** Select Register 0E, write 0x03 (??) Cursor address MSB  ***
  ;   0x3f Cursor (H)                                   03
  mov ax,0x030e
  out dx,ax

  ; *** Select Register 0F, write 0xC0 (??) Cursor address MSB  ***
  ;   0xff Cursor (L)                                   c0
  mov ax,0xc00f
  out dx,ax


%macro waitForDisplayEnable 0
  %%waitForDisplayEnable
    in al,dx                       ; 1 1 2
    test al,1                      ; 2 0 2
    jnz %%waitForDisplayEnable     ; 2 0 2
%endmacro

%macro waitForDisplayDisable 0
  %%waitForDisplayDisable
    in al,dx                       ; 1 1 2
    test al,1                      ; 2 0 2
    jz %%waitForDisplayDisable     ; 2 0 2
%endmacro

%macro waitForVerticalSync 0
  %%waitForVerticalSync
    in al,dx
    test al,8
    jz %%waitForVerticalSync
%endmacro

%macro waitForNoVerticalSync 0
  %%waitForNoVerticalSync
    in al,dx
    test al,8
    jnz %%waitForNoVerticalSync
%endmacro

  ; *** Look at 3DA status register ***
  mov dl,0xda
  ; *** Assume a vert retrace in progress ***
  mov bx,80     ; Initial
  mov cx,0      ; Frame counter
frameLoop:
  ; *** Synchronize and let vsync start ***
  waitForVerticalSync
  ; *** Wait for vsync to finish now ***
  waitForNoVerticalSync

  ; During line 0-1 we set up the start address for line 2 and change the vertical total to 0x01
  waitForDisplayEnable
  mov dl,0xd4
  mov ax,0x0104 ; 4: Vertical total: 2 rows/frame
  out dx,ax
  mov dl,0xda
  waitForDisplayDisable
  waitForDisplayEnable
  mov dl,0xd4
  mov ah,bh
  mov al,0x0c
  out dx,ax     ; Start address high
  mov ah,bl
  inc ax
  out dx,ax     ; Start address low
  add bx,80     ; Next start address
  mov dl,0xda
  waitForDisplayDisable

  ; During lines 2..199 we set up the start address for the next line
%rep 99
    waitForDisplayEnable
    waitForDisplayDisable
    waitForDisplayEnable
    mov dl,0xd4
    mov ah,bh
    mov al,0x0c
    out dx,ax     ; Start address high
    mov ah,bl
    inc ax
    out dx,ax     ; Start address low
    add bx,80     ; Next start address
    mov dl,0xda
    waitForDisplayDisable
%endrep

  ; During line 200 we set up the start address for line 0 and change the vertical total to 0x3d
  waitForDisplayEnable
  mov dl,0xd4
  mov ax,0x3d04  ; 4: Vertical total: 62 rows/frame
  out dx,ax
  mov dl,0xda
  waitForDisplayDisable
  waitForDisplayEnable
  mov dl,0xd4
  mov ax,0x000c
  out dx,ax      ; Start address high
  inc ax
  out dx,ax      ; Start address low
  mov bx,80
  mov dl,0xda
  waitForDisplayDisable

  ; Take a screenshot after 1 second
  inc cx
  cmp cx,60
  jne noScreenshot
;  int 0x60
noScreenshot:
  ; Wait a further minute before exiting
  cmp cx,3600*5
  je finish

  jmp frameLoop
finish:

  ; Set the CGA back to a normal mode so we don't risk breaking anything
  mov ax,3
  int 0x10

  ; Relinquish control
  int 0x67

data:

;%rep 80
;  db 0x00,0x00
;%endrep
;
;%assign i 0
;%rep 50
;  %rep 2
;    db 0x00,0x00
;    %rep 26
;      %rep 3
;        %if (i & 0x3ff) < 256
;          db 0x55
;        %elif (i & 0x3ff) < 512
;          db 0x13
;        %elif (i & 0x3ff) < 768
;          db 0xb0
;        %else
;          db 0xb1
;        %endif
;        db (i & 0xff)
;      %endrep
;      %assign i i+1
;    %endrep
;    db 0x00,0x00
;    %assign i i-26
;  %endrep
;  %assign i i+26
;%endrep
;
;%rep 80
;  db 0x00,0x00
;%endrep

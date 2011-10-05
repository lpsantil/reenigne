@echo off
set AVR=C:\Program Files\Arduino\hardware\tools\avr
"%AVR%\bin\avr-gcc" -g -Wall -O3 -mmcu=atmega328p -c -o keyboard_c.o keyboard_c.c -DF_CPU=16000000 -std=c99 --save-temps
"%AVR%\bin\avr-gcc" -g -Wall -O3 -mmcu=atmega328p -c -o keyboard.o keyboard.s --save-temps
"%AVR%\bin\avr-gcc" -g -Wall -O3 -mmcu=atmega328p -o keyboard.elf keyboard.o keyboard_c.o --save-temps -Wl,-Map,keyboard.map -Wl,--cref
"%AVR%\bin\avr-objdump" -h -S keyboard.elf > keyboard.lst
"%AVR%\bin\avr-objcopy" -j .text -j .data -O ihex keyboard.elf keyboard.hex
"%AVR%\bin\avr-nm" -n keyboard.elf >keyboard.nm
"C:\Program Files\WinAVR-20100110\bin\avrdude" -p m328p -P COM3 -c arduino -U flash:w:keyboard.hex -C "C:\Program Files\WinAVR-20100110\bin\avrdude.conf" -b 57600

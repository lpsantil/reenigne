;	Static Name Aliases
;
	TITLE   3d.cpp
	.8087
INCLUDELIB      SLIBCE
INCLUDELIB	OLDNAMES.LIB
_TEXT	SEGMENT  WORD PUBLIC 'CODE'
_TEXT	ENDS
_DATA	SEGMENT  WORD PUBLIC 'DATA'
_DATA	ENDS
CONST	SEGMENT  WORD PUBLIC 'CONST'
CONST	ENDS
_BSS	SEGMENT  WORD PUBLIC 'BSS'
_BSS	ENDS
DGROUP	GROUP	CONST, _BSS, _DATA
	ASSUME DS: DGROUP, SS: DGROUP
PUBLIC  ?sintab@@3QAHA
EXTRN	__acrtused:ABS
EXTRN	_int86:NEAR
EXTRN	__aNldiv:NEAR
_DATA      SEGMENT
?sintab@@3QAHA	DW	00H
	DW	01H
	DW	02H
	DW	02H
	DW	03H
	DW	04H
	DW	05H
	DW	05H
	DW	06H
	DW	07H
	DW	08H
	DW	09H
	DW	09H
	DW	0aH
	DW	0bH
	DW	0cH
	DW	0dH
	DW	0dH
	DW	0eH
	DW	0fH
	DW	010H
	DW	010H
	DW	011H
	DW	012H
	DW	013H
	DW	014H
	DW	014H
	DW	015H
	DW	016H
	DW	017H
	DW	018H
	DW	018H
	DW	019H
	DW	01aH
	DW	01bH
	DW	01bH
	DW	01cH
	DW	01dH
	DW	01eH
	DW	01fH
	DW	01fH
	DW	020H
	DW	021H
	DW	022H
	DW	022H
	DW	023H
	DW	024H
	DW	025H
	DW	026H
	DW	026H
	DW	027H
	DW	028H
	DW	029H
	DW	029H
	DW	02aH
	DW	02bH
	DW	02cH
	DW	02dH
	DW	02dH
	DW	02eH
	DW	02fH
	DW	030H
	DW	030H
	DW	031H
	DW	032H
	DW	033H
	DW	033H
	DW	034H
	DW	035H
	DW	036H
	DW	037H
	DW	037H
	DW	038H
	DW	039H
	DW	03aH
	DW	03aH
	DW	03bH
	DW	03cH
	DW	03dH
	DW	03dH
	DW	03eH
	DW	03fH
	DW	040H
	DW	040H
	DW	041H
	DW	042H
	DW	043H
	DW	044H
	DW	044H
	DW	045H
	DW	046H
	DW	047H
	DW	047H
	DW	048H
	DW	049H
	DW	04aH
	DW	04aH
	DW	04bH
	DW	04cH
	DW	04dH
	DW	04dH
	DW	04eH
	DW	04fH
	DW	050H
	DW	050H
	DW	051H
	DW	052H
	DW	053H
	DW	053H
	DW	054H
	DW	055H
	DW	056H
	DW	056H
	DW	057H
	DW	058H
	DW	058H
	DW	059H
	DW	05aH
	DW	05bH
	DW	05bH
	DW	05cH
	DW	05dH
	DW	05eH
	DW	05eH
	DW	05fH
	DW	060H
	DW	061H
	DW	061H
	DW	062H
	DW	063H
	DW	063H
	DW	064H
	DW	065H
	DW	066H
	DW	066H
	DW	067H
	DW	068H
	DW	068H
	DW	069H
	DW	06aH
	DW	06bH
	DW	06bH
	DW	06cH
	DW	06dH
	DW	06dH
	DW	06eH
	DW	06fH
	DW	070H
	DW	070H
	DW	071H
	DW	072H
	DW	072H
	DW	073H
	DW	074H
	DW	075H
	DW	075H
	DW	076H
	DW	077H
	DW	077H
	DW	078H
	DW	079H
	DW	079H
	DW	07aH
	DW	07bH
	DW	07bH
	DW	07cH
	DW	07dH
	DW	07dH
	DW	07eH
	DW	07fH
	DW	080H
	DW	080H
	DW	081H
	DW	082H
	DW	082H
	DW	083H
	DW	084H
	DW	084H
	DW	085H
	DW	086H
	DW	086H
	DW	087H
	DW	088H
	DW	088H
	DW	089H
	DW	08aH
	DW	08aH
	DW	08bH
	DW	08cH
	DW	08cH
	DW	08dH
	DW	08eH
	DW	08eH
	DW	08fH
	DW	090H
	DW	090H
	DW	091H
	DW	091H
	DW	092H
	DW	093H
	DW	093H
	DW	094H
	DW	095H
	DW	095H
	DW	096H
	DW	097H
	DW	097H
	DW	098H
	DW	098H
	DW	099H
	DW	09aH
	DW	09aH
	DW	09bH
	DW	09cH
	DW	09cH
	DW	09dH
	DW	09dH
	DW	09eH
	DW	09fH
	DW	09fH
	DW	0a0H
	DW	0a1H
	DW	0a1H
	DW	0a2H
	DW	0a2H
	DW	0a3H
	DW	0a4H
	DW	0a4H
	DW	0a5H
	DW	0a5H
	DW	0a6H
	DW	0a7H
	DW	0a7H
	DW	0a8H
	DW	0a8H
	DW	0a9H
	DW	0aaH
	DW	0aaH
	DW	0abH
	DW	0abH
	DW	0acH
	DW	0adH
	DW	0adH
	DW	0aeH
	DW	0aeH
	DW	0afH
	DW	0afH
	DW	0b0H
	DW	0b1H
	DW	0b1H
	DW	0b2H
	DW	0b2H
	DW	0b3H
	DW	0b3H
	DW	0b4H
	DW	0b4H
	DW	0b5H
	DW	0b6H
	DW	0b6H
	DW	0b7H
	DW	0b7H
	DW	0b8H
	DW	0b8H
	DW	0b9H
	DW	0b9H
	DW	0baH
	DW	0baH
	DW	0bbH
	DW	0bcH
	DW	0bcH
	DW	0bdH
	DW	0bdH
	DW	0beH
	DW	0beH
	DW	0bfH
	DW	0bfH
	DW	0c0H
	DW	0c0H
	DW	0c1H
	DW	0c1H
	DW	0c2H
	DW	0c2H
	DW	0c3H
	DW	0c3H
	DW	0c4H
	DW	0c4H
	DW	0c5H
	DW	0c5H
	DW	0c6H
	DW	0c6H
	DW	0c7H
	DW	0c7H
	DW	0c8H
	DW	0c8H
	DW	0c9H
	DW	0c9H
	DW	0caH
	DW	0caH
	DW	0cbH
	DW	0cbH
	DW	0ccH
	DW	0ccH
	DW	0cdH
	DW	0cdH
	DW	0ceH
	DW	0ceH
	DW	0cfH
	DW	0cfH
	DW	0cfH
	DW	0d0H
	DW	0d0H
	DW	0d1H
	DW	0d1H
	DW	0d2H
	DW	0d2H
	DW	0d3H
	DW	0d3H
	DW	0d4H
	DW	0d4H
	DW	0d4H
	DW	0d5H
	DW	0d5H
	DW	0d6H
	DW	0d6H
	DW	0d7H
	DW	0d7H
	DW	0d7H
	DW	0d8H
	DW	0d8H
	DW	0d9H
	DW	0d9H
	DW	0daH
	DW	0daH
	DW	0daH
	DW	0dbH
	DW	0dbH
	DW	0dcH
	DW	0dcH
	DW	0dcH
	DW	0ddH
	DW	0ddH
	DW	0deH
	DW	0deH
	DW	0deH
	DW	0dfH
	DW	0dfH
	DW	0e0H
	DW	0e0H
	DW	0e0H
	DW	0e1H
	DW	0e1H
	DW	0e1H
	DW	0e2H
	DW	0e2H
	DW	0e3H
	DW	0e3H
	DW	0e3H
	DW	0e4H
	DW	0e4H
	DW	0e4H
	DW	0e5H
	DW	0e5H
	DW	0e5H
	DW	0e6H
	DW	0e6H
	DW	0e6H
	DW	0e7H
	DW	0e7H
	DW	0e7H
	DW	0e8H
	DW	0e8H
	DW	0e8H
	DW	0e9H
	DW	0e9H
	DW	0e9H
	DW	0eaH
	DW	0eaH
	DW	0eaH
	DW	0ebH
	DW	0ebH
	DW	0ebH
	DW	0ecH
	DW	0ecH
	DW	0ecH
	DW	0edH
	DW	0edH
	DW	0edH
	DW	0edH
	DW	0eeH
	DW	0eeH
	DW	0eeH
	DW	0efH
	DW	0efH
	DW	0efH
	DW	0efH
	DW	0f0H
	DW	0f0H
	DW	0f0H
	DW	0f1H
	DW	0f1H
	DW	0f1H
	DW	0f1H
	DW	0f2H
	DW	0f2H
	DW	0f2H
	DW	0f2H
	DW	0f3H
	DW	0f3H
	DW	0f3H
	DW	0f3H
	DW	0f4H
	DW	0f4H
	DW	0f4H
	DW	0f4H
	DW	0f5H
	DW	0f5H
	DW	0f5H
	DW	0f5H
	DW	0f5H
	DW	0f6H
	DW	0f6H
	DW	0f6H
	DW	0f6H
	DW	0f7H
	DW	0f7H
	DW	0f7H
	DW	0f7H
	DW	0f7H
	DW	0f8H
	DW	0f8H
	DW	0f8H
	DW	0f8H
	DW	0f8H
	DW	0f9H
	DW	0f9H
	DW	0f9H
	DW	0f9H
	DW	0f9H
	DW	0f9H
	DW	0faH
	DW	0faH
	DW	0faH
	DW	0faH
	DW	0faH
	DW	0faH
	DW	0fbH
	DW	0fbH
	DW	0fbH
	DW	0fbH
	DW	0fbH
	DW	0fbH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fbH
	DW	0fbH
	DW	0fbH
	DW	0fbH
	DW	0fbH
	DW	0fbH
	DW	0faH
	DW	0faH
	DW	0faH
	DW	0faH
	DW	0faH
	DW	0faH
	DW	0f9H
	DW	0f9H
	DW	0f9H
	DW	0f9H
	DW	0f9H
	DW	0f9H
	DW	0f8H
	DW	0f8H
	DW	0f8H
	DW	0f8H
	DW	0f8H
	DW	0f7H
	DW	0f7H
	DW	0f7H
	DW	0f7H
	DW	0f7H
	DW	0f6H
	DW	0f6H
	DW	0f6H
	DW	0f6H
	DW	0f5H
	DW	0f5H
	DW	0f5H
	DW	0f5H
	DW	0f5H
	DW	0f4H
	DW	0f4H
	DW	0f4H
	DW	0f4H
	DW	0f3H
	DW	0f3H
	DW	0f3H
	DW	0f3H
	DW	0f2H
	DW	0f2H
	DW	0f2H
	DW	0f2H
	DW	0f1H
	DW	0f1H
	DW	0f1H
	DW	0f1H
	DW	0f0H
	DW	0f0H
	DW	0f0H
	DW	0efH
	DW	0efH
	DW	0efH
	DW	0efH
	DW	0eeH
	DW	0eeH
	DW	0eeH
	DW	0edH
	DW	0edH
	DW	0edH
	DW	0edH
	DW	0ecH
	DW	0ecH
	DW	0ecH
	DW	0ebH
	DW	0ebH
	DW	0ebH
	DW	0eaH
	DW	0eaH
	DW	0eaH
	DW	0e9H
	DW	0e9H
	DW	0e9H
	DW	0e8H
	DW	0e8H
	DW	0e8H
	DW	0e7H
	DW	0e7H
	DW	0e7H
	DW	0e6H
	DW	0e6H
	DW	0e6H
	DW	0e5H
	DW	0e5H
	DW	0e5H
	DW	0e4H
	DW	0e4H
	DW	0e4H
	DW	0e3H
	DW	0e3H
	DW	0e3H
	DW	0e2H
	DW	0e2H
	DW	0e1H
	DW	0e1H
	DW	0e1H
	DW	0e0H
	DW	0e0H
	DW	0e0H
	DW	0dfH
	DW	0dfH
	DW	0deH
	DW	0deH
	DW	0deH
	DW	0ddH
	DW	0ddH
	DW	0dcH
	DW	0dcH
	DW	0dcH
	DW	0dbH
	DW	0dbH
	DW	0daH
	DW	0daH
	DW	0daH
	DW	0d9H
	DW	0d9H
	DW	0d8H
	DW	0d8H
	DW	0d7H
	DW	0d7H
	DW	0d7H
	DW	0d6H
	DW	0d6H
	DW	0d5H
	DW	0d5H
	DW	0d4H
	DW	0d4H
	DW	0d4H
	DW	0d3H
	DW	0d3H
	DW	0d2H
	DW	0d2H
	DW	0d1H
	DW	0d1H
	DW	0d0H
	DW	0d0H
	DW	0cfH
	DW	0cfH
	DW	0cfH
	DW	0ceH
	DW	0ceH
	DW	0cdH
	DW	0cdH
	DW	0ccH
	DW	0ccH
	DW	0cbH
	DW	0cbH
	DW	0caH
	DW	0caH
	DW	0c9H
	DW	0c9H
	DW	0c8H
	DW	0c8H
	DW	0c7H
	DW	0c7H
	DW	0c6H
	DW	0c6H
	DW	0c5H
	DW	0c5H
	DW	0c4H
	DW	0c4H
	DW	0c3H
	DW	0c3H
	DW	0c2H
	DW	0c2H
	DW	0c1H
	DW	0c1H
	DW	0c0H
	DW	0c0H
	DW	0bfH
	DW	0bfH
	DW	0beH
	DW	0beH
	DW	0bdH
	DW	0bdH
	DW	0bcH
	DW	0bcH
	DW	0bbH
	DW	0baH
	DW	0baH
	DW	0b9H
	DW	0b9H
	DW	0b8H
	DW	0b8H
	DW	0b7H
	DW	0b7H
	DW	0b6H
	DW	0b6H
	DW	0b5H
	DW	0b4H
	DW	0b4H
	DW	0b3H
	DW	0b3H
	DW	0b2H
	DW	0b2H
	DW	0b1H
	DW	0b1H
	DW	0b0H
	DW	0afH
	DW	0afH
	DW	0aeH
	DW	0aeH
	DW	0adH
	DW	0adH
	DW	0acH
	DW	0abH
	DW	0abH
	DW	0aaH
	DW	0aaH
	DW	0a9H
	DW	0a8H
	DW	0a8H
	DW	0a7H
	DW	0a7H
	DW	0a6H
	DW	0a5H
	DW	0a5H
	DW	0a4H
	DW	0a4H
	DW	0a3H
	DW	0a2H
	DW	0a2H
	DW	0a1H
	DW	0a1H
	DW	0a0H
	DW	09fH
	DW	09fH
	DW	09eH
	DW	09dH
	DW	09dH
	DW	09cH
	DW	09cH
	DW	09bH
	DW	09aH
	DW	09aH
	DW	099H
	DW	098H
	DW	098H
	DW	097H
	DW	097H
	DW	096H
	DW	095H
	DW	095H
	DW	094H
	DW	093H
	DW	093H
	DW	092H
	DW	091H
	DW	091H
	DW	090H
	DW	090H
	DW	08fH
	DW	08eH
	DW	08eH
	DW	08dH
	DW	08cH
	DW	08cH
	DW	08bH
	DW	08aH
	DW	08aH
	DW	089H
	DW	088H
	DW	088H
	DW	087H
	DW	086H
	DW	086H
	DW	085H
	DW	084H
	DW	084H
	DW	083H
	DW	082H
	DW	082H
	DW	081H
	DW	080H
	DW	080H
	DW	07fH
	DW	07eH
	DW	07dH
	DW	07dH
	DW	07cH
	DW	07bH
	DW	07bH
	DW	07aH
	DW	079H
	DW	079H
	DW	078H
	DW	077H
	DW	077H
	DW	076H
	DW	075H
	DW	075H
	DW	074H
	DW	073H
	DW	072H
	DW	072H
	DW	071H
	DW	070H
	DW	070H
	DW	06fH
	DW	06eH
	DW	06dH
	DW	06dH
	DW	06cH
	DW	06bH
	DW	06bH
	DW	06aH
	DW	069H
	DW	068H
	DW	068H
	DW	067H
	DW	066H
	DW	066H
	DW	065H
	DW	064H
	DW	063H
	DW	063H
	DW	062H
	DW	061H
	DW	061H
	DW	060H
	DW	05fH
	DW	05eH
	DW	05eH
	DW	05dH
	DW	05cH
	DW	05bH
	DW	05bH
	DW	05aH
	DW	059H
	DW	058H
	DW	058H
	DW	057H
	DW	056H
	DW	056H
	DW	055H
	DW	054H
	DW	053H
	DW	053H
	DW	052H
	DW	051H
	DW	050H
	DW	050H
	DW	04fH
	DW	04eH
	DW	04dH
	DW	04dH
	DW	04cH
	DW	04bH
	DW	04aH
	DW	04aH
	DW	049H
	DW	048H
	DW	047H
	DW	047H
	DW	046H
	DW	045H
	DW	044H
	DW	044H
	DW	043H
	DW	042H
	DW	041H
	DW	040H
	DW	040H
	DW	03fH
	DW	03eH
	DW	03dH
	DW	03dH
	DW	03cH
	DW	03bH
	DW	03aH
	DW	03aH
	DW	039H
	DW	038H
	DW	037H
	DW	037H
	DW	036H
	DW	035H
	DW	034H
	DW	033H
	DW	033H
	DW	032H
	DW	031H
	DW	030H
	DW	030H
	DW	02fH
	DW	02eH
	DW	02dH
	DW	02dH
	DW	02cH
	DW	02bH
	DW	02aH
	DW	029H
	DW	029H
	DW	028H
	DW	027H
	DW	026H
	DW	026H
	DW	025H
	DW	024H
	DW	023H
	DW	022H
	DW	022H
	DW	021H
	DW	020H
	DW	01fH
	DW	01fH
	DW	01eH
	DW	01dH
	DW	01cH
	DW	01bH
	DW	01bH
	DW	01aH
	DW	019H
	DW	018H
	DW	018H
	DW	017H
	DW	016H
	DW	015H
	DW	014H
	DW	014H
	DW	013H
	DW	012H
	DW	011H
	DW	010H
	DW	010H
	DW	0fH
	DW	0eH
	DW	0dH
	DW	0dH
	DW	0cH
	DW	0bH
	DW	0aH
	DW	09H
	DW	09H
	DW	08H
	DW	07H
	DW	06H
	DW	05H
	DW	05H
	DW	04H
	DW	03H
	DW	02H
	DW	02H
	DW	01H
	DW	00H
	DW	0ffffH
	DW	0fffeH
	DW	0fffeH
	DW	0fffdH
	DW	0fffcH
	DW	0fffbH
	DW	0fffbH
	DW	0fffaH
	DW	0fff9H
	DW	0fff8H
	DW	0fff7H
	DW	0fff7H
	DW	0fff6H
	DW	0fff5H
	DW	0fff4H
	DW	0fff3H
	DW	0fff3H
	DW	0fff2H
	DW	0fff1H
	DW	0fff0H
	DW	0fff0H
	DW	0ffefH
	DW	0ffeeH
	DW	0ffedH
	DW	0ffecH
	DW	0ffecH
	DW	0ffebH
	DW	0ffeaH
	DW	0ffe9H
	DW	0ffe8H
	DW	0ffe8H
	DW	0ffe7H
	DW	0ffe6H
	DW	0ffe5H
	DW	0ffe5H
	DW	0ffe4H
	DW	0ffe3H
	DW	0ffe2H
	DW	0ffe1H
	DW	0ffe1H
	DW	0ffe0H
	DW	0ffdfH
	DW	0ffdeH
	DW	0ffdeH
	DW	0ffddH
	DW	0ffdcH
	DW	0ffdbH
	DW	0ffdaH
	DW	0ffdaH
	DW	0ffd9H
	DW	0ffd8H
	DW	0ffd7H
	DW	0ffd7H
	DW	0ffd6H
	DW	0ffd5H
	DW	0ffd4H
	DW	0ffd3H
	DW	0ffd3H
	DW	0ffd2H
	DW	0ffd1H
	DW	0ffd0H
	DW	0ffd0H
	DW	0ffcfH
	DW	0ffceH
	DW	0ffcdH
	DW	0ffcdH
	DW	0ffccH
	DW	0ffcbH
	DW	0ffcaH
	DW	0ffc9H
	DW	0ffc9H
	DW	0ffc8H
	DW	0ffc7H
	DW	0ffc6H
	DW	0ffc6H
	DW	0ffc5H
	DW	0ffc4H
	DW	0ffc3H
	DW	0ffc3H
	DW	0ffc2H
	DW	0ffc1H
	DW	0ffc0H
	DW	0ffc0H
	DW	0ffbfH
	DW	0ffbeH
	DW	0ffbdH
	DW	0ffbcH
	DW	0ffbcH
	DW	0ffbbH
	DW	0ffbaH
	DW	0ffb9H
	DW	0ffb9H
	DW	0ffb8H
	DW	0ffb7H
	DW	0ffb6H
	DW	0ffb6H
	DW	0ffb5H
	DW	0ffb4H
	DW	0ffb3H
	DW	0ffb3H
	DW	0ffb2H
	DW	0ffb1H
	DW	0ffb0H
	DW	0ffb0H
	DW	0ffafH
	DW	0ffaeH
	DW	0ffadH
	DW	0ffadH
	DW	0ffacH
	DW	0ffabH
	DW	0ffaaH
	DW	0ffaaH
	DW	0ffa9H
	DW	0ffa8H
	DW	0ffa8H
	DW	0ffa7H
	DW	0ffa6H
	DW	0ffa5H
	DW	0ffa5H
	DW	0ffa4H
	DW	0ffa3H
	DW	0ffa2H
	DW	0ffa2H
	DW	0ffa1H
	DW	0ffa0H
	DW	0ff9fH
	DW	0ff9fH
	DW	0ff9eH
	DW	0ff9dH
	DW	0ff9dH
	DW	0ff9cH
	DW	0ff9bH
	DW	0ff9aH
	DW	0ff9aH
	DW	0ff99H
	DW	0ff98H
	DW	0ff98H
	DW	0ff97H
	DW	0ff96H
	DW	0ff95H
	DW	0ff95H
	DW	0ff94H
	DW	0ff93H
	DW	0ff93H
	DW	0ff92H
	DW	0ff91H
	DW	0ff90H
	DW	0ff90H
	DW	0ff8fH
	DW	0ff8eH
	DW	0ff8eH
	DW	0ff8dH
	DW	0ff8cH
	DW	0ff8bH
	DW	0ff8bH
	DW	0ff8aH
	DW	0ff89H
	DW	0ff89H
	DW	0ff88H
	DW	0ff87H
	DW	0ff87H
	DW	0ff86H
	DW	0ff85H
	DW	0ff85H
	DW	0ff84H
	DW	0ff83H
	DW	0ff83H
	DW	0ff82H
	DW	0ff81H
	DW	0ff80H
	DW	0ff80H
	DW	0ff7fH
	DW	0ff7eH
	DW	0ff7eH
	DW	0ff7dH
	DW	0ff7cH
	DW	0ff7cH
	DW	0ff7bH
	DW	0ff7aH
	DW	0ff7aH
	DW	0ff79H
	DW	0ff78H
	DW	0ff78H
	DW	0ff77H
	DW	0ff76H
	DW	0ff76H
	DW	0ff75H
	DW	0ff74H
	DW	0ff74H
	DW	0ff73H
	DW	0ff72H
	DW	0ff72H
	DW	0ff71H
	DW	0ff70H
	DW	0ff70H
	DW	0ff6fH
	DW	0ff6fH
	DW	0ff6eH
	DW	0ff6dH
	DW	0ff6dH
	DW	0ff6cH
	DW	0ff6bH
	DW	0ff6bH
	DW	0ff6aH
	DW	0ff69H
	DW	0ff69H
	DW	0ff68H
	DW	0ff68H
	DW	0ff67H
	DW	0ff66H
	DW	0ff66H
	DW	0ff65H
	DW	0ff64H
	DW	0ff64H
	DW	0ff63H
	DW	0ff63H
	DW	0ff62H
	DW	0ff61H
	DW	0ff61H
	DW	0ff60H
	DW	0ff5fH
	DW	0ff5fH
	DW	0ff5eH
	DW	0ff5eH
	DW	0ff5dH
	DW	0ff5cH
	DW	0ff5cH
	DW	0ff5bH
	DW	0ff5bH
	DW	0ff5aH
	DW	0ff59H
	DW	0ff59H
	DW	0ff58H
	DW	0ff58H
	DW	0ff57H
	DW	0ff56H
	DW	0ff56H
	DW	0ff55H
	DW	0ff55H
	DW	0ff54H
	DW	0ff53H
	DW	0ff53H
	DW	0ff52H
	DW	0ff52H
	DW	0ff51H
	DW	0ff51H
	DW	0ff50H
	DW	0ff4fH
	DW	0ff4fH
	DW	0ff4eH
	DW	0ff4eH
	DW	0ff4dH
	DW	0ff4dH
	DW	0ff4cH
	DW	0ff4cH
	DW	0ff4bH
	DW	0ff4aH
	DW	0ff4aH
	DW	0ff49H
	DW	0ff49H
	DW	0ff48H
	DW	0ff48H
	DW	0ff47H
	DW	0ff47H
	DW	0ff46H
	DW	0ff46H
	DW	0ff45H
	DW	0ff44H
	DW	0ff44H
	DW	0ff43H
	DW	0ff43H
	DW	0ff42H
	DW	0ff42H
	DW	0ff41H
	DW	0ff41H
	DW	0ff40H
	DW	0ff40H
	DW	0ff3fH
	DW	0ff3fH
	DW	0ff3eH
	DW	0ff3eH
	DW	0ff3dH
	DW	0ff3dH
	DW	0ff3cH
	DW	0ff3cH
	DW	0ff3bH
	DW	0ff3bH
	DW	0ff3aH
	DW	0ff3aH
	DW	0ff39H
	DW	0ff39H
	DW	0ff38H
	DW	0ff38H
	DW	0ff37H
	DW	0ff37H
	DW	0ff36H
	DW	0ff36H
	DW	0ff35H
	DW	0ff35H
	DW	0ff34H
	DW	0ff34H
	DW	0ff33H
	DW	0ff33H
	DW	0ff32H
	DW	0ff32H
	DW	0ff31H
	DW	0ff31H
	DW	0ff31H
	DW	0ff30H
	DW	0ff30H
	DW	0ff2fH
	DW	0ff2fH
	DW	0ff2eH
	DW	0ff2eH
	DW	0ff2dH
	DW	0ff2dH
	DW	0ff2cH
	DW	0ff2cH
	DW	0ff2cH
	DW	0ff2bH
	DW	0ff2bH
	DW	0ff2aH
	DW	0ff2aH
	DW	0ff29H
	DW	0ff29H
	DW	0ff29H
	DW	0ff28H
	DW	0ff28H
	DW	0ff27H
	DW	0ff27H
	DW	0ff26H
	DW	0ff26H
	DW	0ff26H
	DW	0ff25H
	DW	0ff25H
	DW	0ff24H
	DW	0ff24H
	DW	0ff24H
	DW	0ff23H
	DW	0ff23H
	DW	0ff22H
	DW	0ff22H
	DW	0ff22H
	DW	0ff21H
	DW	0ff21H
	DW	0ff20H
	DW	0ff20H
	DW	0ff20H
	DW	0ff1fH
	DW	0ff1fH
	DW	0ff1fH
	DW	0ff1eH
	DW	0ff1eH
	DW	0ff1dH
	DW	0ff1dH
	DW	0ff1dH
	DW	0ff1cH
	DW	0ff1cH
	DW	0ff1cH
	DW	0ff1bH
	DW	0ff1bH
	DW	0ff1bH
	DW	0ff1aH
	DW	0ff1aH
	DW	0ff1aH
	DW	0ff19H
	DW	0ff19H
	DW	0ff19H
	DW	0ff18H
	DW	0ff18H
	DW	0ff18H
	DW	0ff17H
	DW	0ff17H
	DW	0ff17H
	DW	0ff16H
	DW	0ff16H
	DW	0ff16H
	DW	0ff15H
	DW	0ff15H
	DW	0ff15H
	DW	0ff14H
	DW	0ff14H
	DW	0ff14H
	DW	0ff13H
	DW	0ff13H
	DW	0ff13H
	DW	0ff13H
	DW	0ff12H
	DW	0ff12H
	DW	0ff12H
	DW	0ff11H
	DW	0ff11H
	DW	0ff11H
	DW	0ff11H
	DW	0ff10H
	DW	0ff10H
	DW	0ff10H
	DW	0ff0fH
	DW	0ff0fH
	DW	0ff0fH
	DW	0ff0fH
	DW	0ff0eH
	DW	0ff0eH
	DW	0ff0eH
	DW	0ff0eH
	DW	0ff0dH
	DW	0ff0dH
	DW	0ff0dH
	DW	0ff0dH
	DW	0ff0cH
	DW	0ff0cH
	DW	0ff0cH
	DW	0ff0cH
	DW	0ff0bH
	DW	0ff0bH
	DW	0ff0bH
	DW	0ff0bH
	DW	0ff0bH
	DW	0ff0aH
	DW	0ff0aH
	DW	0ff0aH
	DW	0ff0aH
	DW	0ff09H
	DW	0ff09H
	DW	0ff09H
	DW	0ff09H
	DW	0ff09H
	DW	0ff08H
	DW	0ff08H
	DW	0ff08H
	DW	0ff08H
	DW	0ff08H
	DW	0ff07H
	DW	0ff07H
	DW	0ff07H
	DW	0ff07H
	DW	0ff07H
	DW	0ff07H
	DW	0ff06H
	DW	0ff06H
	DW	0ff06H
	DW	0ff06H
	DW	0ff06H
	DW	0ff06H
	DW	0ff05H
	DW	0ff05H
	DW	0ff05H
	DW	0ff05H
	DW	0ff05H
	DW	0ff05H
	DW	0ff04H
	DW	0ff04H
	DW	0ff04H
	DW	0ff04H
	DW	0ff04H
	DW	0ff04H
	DW	0ff04H
	DW	0ff04H
	DW	0ff03H
	DW	0ff03H
	DW	0ff03H
	DW	0ff03H
	DW	0ff03H
	DW	0ff03H
	DW	0ff03H
	DW	0ff03H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff00H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff01H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff02H
	DW	0ff03H
	DW	0ff03H
	DW	0ff03H
	DW	0ff03H
	DW	0ff03H
	DW	0ff03H
	DW	0ff03H
	DW	0ff03H
	DW	0ff04H
	DW	0ff04H
	DW	0ff04H
	DW	0ff04H
	DW	0ff04H
	DW	0ff04H
	DW	0ff04H
	DW	0ff04H
	DW	0ff05H
	DW	0ff05H
	DW	0ff05H
	DW	0ff05H
	DW	0ff05H
	DW	0ff05H
	DW	0ff06H
	DW	0ff06H
	DW	0ff06H
	DW	0ff06H
	DW	0ff06H
	DW	0ff06H
	DW	0ff07H
	DW	0ff07H
	DW	0ff07H
	DW	0ff07H
	DW	0ff07H
	DW	0ff07H
	DW	0ff08H
	DW	0ff08H
	DW	0ff08H
	DW	0ff08H
	DW	0ff08H
	DW	0ff09H
	DW	0ff09H
	DW	0ff09H
	DW	0ff09H
	DW	0ff09H
	DW	0ff0aH
	DW	0ff0aH
	DW	0ff0aH
	DW	0ff0aH
	DW	0ff0bH
	DW	0ff0bH
	DW	0ff0bH
	DW	0ff0bH
	DW	0ff0bH
	DW	0ff0cH
	DW	0ff0cH
	DW	0ff0cH
	DW	0ff0cH
	DW	0ff0dH
	DW	0ff0dH
	DW	0ff0dH
	DW	0ff0dH
	DW	0ff0eH
	DW	0ff0eH
	DW	0ff0eH
	DW	0ff0eH
	DW	0ff0fH
	DW	0ff0fH
	DW	0ff0fH
	DW	0ff0fH
	DW	0ff10H
	DW	0ff10H
	DW	0ff10H
	DW	0ff11H
	DW	0ff11H
	DW	0ff11H
	DW	0ff11H
	DW	0ff12H
	DW	0ff12H
	DW	0ff12H
	DW	0ff13H
	DW	0ff13H
	DW	0ff13H
	DW	0ff13H
	DW	0ff14H
	DW	0ff14H
	DW	0ff14H
	DW	0ff15H
	DW	0ff15H
	DW	0ff15H
	DW	0ff16H
	DW	0ff16H
	DW	0ff16H
	DW	0ff17H
	DW	0ff17H
	DW	0ff17H
	DW	0ff18H
	DW	0ff18H
	DW	0ff18H
	DW	0ff19H
	DW	0ff19H
	DW	0ff19H
	DW	0ff1aH
	DW	0ff1aH
	DW	0ff1aH
	DW	0ff1bH
	DW	0ff1bH
	DW	0ff1bH
	DW	0ff1cH
	DW	0ff1cH
	DW	0ff1cH
	DW	0ff1dH
	DW	0ff1dH
	DW	0ff1dH
	DW	0ff1eH
	DW	0ff1eH
	DW	0ff1fH
	DW	0ff1fH
	DW	0ff1fH
	DW	0ff20H
	DW	0ff20H
	DW	0ff20H
	DW	0ff21H
	DW	0ff21H
	DW	0ff22H
	DW	0ff22H
	DW	0ff22H
	DW	0ff23H
	DW	0ff23H
	DW	0ff24H
	DW	0ff24H
	DW	0ff24H
	DW	0ff25H
	DW	0ff25H
	DW	0ff26H
	DW	0ff26H
	DW	0ff26H
	DW	0ff27H
	DW	0ff27H
	DW	0ff28H
	DW	0ff28H
	DW	0ff29H
	DW	0ff29H
	DW	0ff29H
	DW	0ff2aH
	DW	0ff2aH
	DW	0ff2bH
	DW	0ff2bH
	DW	0ff2cH
	DW	0ff2cH
	DW	0ff2cH
	DW	0ff2dH
	DW	0ff2dH
	DW	0ff2eH
	DW	0ff2eH
	DW	0ff2fH
	DW	0ff2fH
	DW	0ff30H
	DW	0ff30H
	DW	0ff31H
	DW	0ff31H
	DW	0ff31H
	DW	0ff32H
	DW	0ff32H
	DW	0ff33H
	DW	0ff33H
	DW	0ff34H
	DW	0ff34H
	DW	0ff35H
	DW	0ff35H
	DW	0ff36H
	DW	0ff36H
	DW	0ff37H
	DW	0ff37H
	DW	0ff38H
	DW	0ff38H
	DW	0ff39H
	DW	0ff39H
	DW	0ff3aH
	DW	0ff3aH
	DW	0ff3bH
	DW	0ff3bH
	DW	0ff3cH
	DW	0ff3cH
	DW	0ff3dH
	DW	0ff3dH
	DW	0ff3eH
	DW	0ff3eH
	DW	0ff3fH
	DW	0ff3fH
	DW	0ff40H
	DW	0ff40H
	DW	0ff41H
	DW	0ff41H
	DW	0ff42H
	DW	0ff42H
	DW	0ff43H
	DW	0ff43H
	DW	0ff44H
	DW	0ff44H
	DW	0ff45H
	DW	0ff46H
	DW	0ff46H
	DW	0ff47H
	DW	0ff47H
	DW	0ff48H
	DW	0ff48H
	DW	0ff49H
	DW	0ff49H
	DW	0ff4aH
	DW	0ff4aH
	DW	0ff4bH
	DW	0ff4cH
	DW	0ff4cH
	DW	0ff4dH
	DW	0ff4dH
	DW	0ff4eH
	DW	0ff4eH
	DW	0ff4fH
	DW	0ff4fH
	DW	0ff50H
	DW	0ff51H
	DW	0ff51H
	DW	0ff52H
	DW	0ff52H
	DW	0ff53H
	DW	0ff53H
	DW	0ff54H
	DW	0ff55H
	DW	0ff55H
	DW	0ff56H
	DW	0ff56H
	DW	0ff57H
	DW	0ff58H
	DW	0ff58H
	DW	0ff59H
	DW	0ff59H
	DW	0ff5aH
	DW	0ff5bH
	DW	0ff5bH
	DW	0ff5cH
	DW	0ff5cH
	DW	0ff5dH
	DW	0ff5eH
	DW	0ff5eH
	DW	0ff5fH
	DW	0ff5fH
	DW	0ff60H
	DW	0ff61H
	DW	0ff61H
	DW	0ff62H
	DW	0ff63H
	DW	0ff63H
	DW	0ff64H
	DW	0ff64H
	DW	0ff65H
	DW	0ff66H
	DW	0ff66H
	DW	0ff67H
	DW	0ff68H
	DW	0ff68H
	DW	0ff69H
	DW	0ff69H
	DW	0ff6aH
	DW	0ff6bH
	DW	0ff6bH
	DW	0ff6cH
	DW	0ff6dH
	DW	0ff6dH
	DW	0ff6eH
	DW	0ff6fH
	DW	0ff6fH
	DW	0ff70H
	DW	0ff70H
	DW	0ff71H
	DW	0ff72H
	DW	0ff72H
	DW	0ff73H
	DW	0ff74H
	DW	0ff74H
	DW	0ff75H
	DW	0ff76H
	DW	0ff76H
	DW	0ff77H
	DW	0ff78H
	DW	0ff78H
	DW	0ff79H
	DW	0ff7aH
	DW	0ff7aH
	DW	0ff7bH
	DW	0ff7cH
	DW	0ff7cH
	DW	0ff7dH
	DW	0ff7eH
	DW	0ff7eH
	DW	0ff7fH
	DW	0ff80H
	DW	0ff80H
	DW	0ff81H
	DW	0ff82H
	DW	0ff83H
	DW	0ff83H
	DW	0ff84H
	DW	0ff85H
	DW	0ff85H
	DW	0ff86H
	DW	0ff87H
	DW	0ff87H
	DW	0ff88H
	DW	0ff89H
	DW	0ff89H
	DW	0ff8aH
	DW	0ff8bH
	DW	0ff8bH
	DW	0ff8cH
	DW	0ff8dH
	DW	0ff8eH
	DW	0ff8eH
	DW	0ff8fH
	DW	0ff90H
	DW	0ff90H
	DW	0ff91H
	DW	0ff92H
	DW	0ff93H
	DW	0ff93H
	DW	0ff94H
	DW	0ff95H
	DW	0ff95H
	DW	0ff96H
	DW	0ff97H
	DW	0ff98H
	DW	0ff98H
	DW	0ff99H
	DW	0ff9aH
	DW	0ff9aH
	DW	0ff9bH
	DW	0ff9cH
	DW	0ff9dH
	DW	0ff9dH
	DW	0ff9eH
	DW	0ff9fH
	DW	0ff9fH
	DW	0ffa0H
	DW	0ffa1H
	DW	0ffa2H
	DW	0ffa2H
	DW	0ffa3H
	DW	0ffa4H
	DW	0ffa5H
	DW	0ffa5H
	DW	0ffa6H
	DW	0ffa7H
	DW	0ffa8H
	DW	0ffa8H
	DW	0ffa9H
	DW	0ffaaH
	DW	0ffaaH
	DW	0ffabH
	DW	0ffacH
	DW	0ffadH
	DW	0ffadH
	DW	0ffaeH
	DW	0ffafH
	DW	0ffb0H
	DW	0ffb0H
	DW	0ffb1H
	DW	0ffb2H
	DW	0ffb3H
	DW	0ffb3H
	DW	0ffb4H
	DW	0ffb5H
	DW	0ffb6H
	DW	0ffb6H
	DW	0ffb7H
	DW	0ffb8H
	DW	0ffb9H
	DW	0ffb9H
	DW	0ffbaH
	DW	0ffbbH
	DW	0ffbcH
	DW	0ffbcH
	DW	0ffbdH
	DW	0ffbeH
	DW	0ffbfH
	DW	0ffc0H
	DW	0ffc0H
	DW	0ffc1H
	DW	0ffc2H
	DW	0ffc3H
	DW	0ffc3H
	DW	0ffc4H
	DW	0ffc5H
	DW	0ffc6H
	DW	0ffc6H
	DW	0ffc7H
	DW	0ffc8H
	DW	0ffc9H
	DW	0ffc9H
	DW	0ffcaH
	DW	0ffcbH
	DW	0ffccH
	DW	0ffcdH
	DW	0ffcdH
	DW	0ffceH
	DW	0ffcfH
	DW	0ffd0H
	DW	0ffd0H
	DW	0ffd1H
	DW	0ffd2H
	DW	0ffd3H
	DW	0ffd3H
	DW	0ffd4H
	DW	0ffd5H
	DW	0ffd6H
	DW	0ffd7H
	DW	0ffd7H
	DW	0ffd8H
	DW	0ffd9H
	DW	0ffdaH
	DW	0ffdaH
	DW	0ffdbH
	DW	0ffdcH
	DW	0ffddH
	DW	0ffdeH
	DW	0ffdeH
	DW	0ffdfH
	DW	0ffe0H
	DW	0ffe1H
	DW	0ffe1H
	DW	0ffe2H
	DW	0ffe3H
	DW	0ffe4H
	DW	0ffe5H
	DW	0ffe5H
	DW	0ffe6H
	DW	0ffe7H
	DW	0ffe8H
	DW	0ffe8H
	DW	0ffe9H
	DW	0ffeaH
	DW	0ffebH
	DW	0ffecH
	DW	0ffecH
	DW	0ffedH
	DW	0ffeeH
	DW	0ffefH
	DW	0fff0H
	DW	0fff0H
	DW	0fff1H
	DW	0fff2H
	DW	0fff3H
	DW	0fff3H
	DW	0fff4H
	DW	0fff5H
	DW	0fff6H
	DW	0fff7H
	DW	0fff7H
	DW	0fff8H
	DW	0fff9H
	DW	0fffaH
	DW	0fffbH
	DW	0fffbH
	DW	0fffcH
	DW	0fffdH
	DW	0fffeH
	DW	0fffeH
	DW	0ffffH
	DW	00H
	DW	01H
	DW	02H
	DW	02H
	DW	03H
	DW	04H
	DW	05H
	DW	05H
	DW	06H
	DW	07H
	DW	08H
	DW	09H
	DW	09H
	DW	0aH
	DW	0bH
	DW	0cH
	DW	0dH
	DW	0dH
	DW	0eH
	DW	0fH
	DW	010H
	DW	010H
	DW	011H
	DW	012H
	DW	013H
	DW	014H
	DW	014H
	DW	015H
	DW	016H
	DW	017H
	DW	018H
	DW	018H
	DW	019H
	DW	01aH
	DW	01bH
	DW	01bH
	DW	01cH
	DW	01dH
	DW	01eH
	DW	01fH
	DW	01fH
	DW	020H
	DW	021H
	DW	022H
	DW	022H
	DW	023H
	DW	024H
	DW	025H
	DW	026H
	DW	026H
	DW	027H
	DW	028H
	DW	029H
	DW	029H
	DW	02aH
	DW	02bH
	DW	02cH
	DW	02dH
	DW	02dH
	DW	02eH
	DW	02fH
	DW	030H
	DW	030H
	DW	031H
	DW	032H
	DW	033H
	DW	033H
	DW	034H
	DW	035H
	DW	036H
	DW	037H
	DW	037H
	DW	038H
	DW	039H
	DW	03aH
	DW	03aH
	DW	03bH
	DW	03cH
	DW	03dH
	DW	03dH
	DW	03eH
	DW	03fH
	DW	040H
	DW	040H
	DW	041H
	DW	042H
	DW	043H
	DW	044H
	DW	044H
	DW	045H
	DW	046H
	DW	047H
	DW	047H
	DW	048H
	DW	049H
	DW	04aH
	DW	04aH
	DW	04bH
	DW	04cH
	DW	04dH
	DW	04dH
	DW	04eH
	DW	04fH
	DW	050H
	DW	050H
	DW	051H
	DW	052H
	DW	053H
	DW	053H
	DW	054H
	DW	055H
	DW	056H
	DW	056H
	DW	057H
	DW	058H
	DW	058H
	DW	059H
	DW	05aH
	DW	05bH
	DW	05bH
	DW	05cH
	DW	05dH
	DW	05eH
	DW	05eH
	DW	05fH
	DW	060H
	DW	061H
	DW	061H
	DW	062H
	DW	063H
	DW	063H
	DW	064H
	DW	065H
	DW	066H
	DW	066H
	DW	067H
	DW	068H
	DW	068H
	DW	069H
	DW	06aH
	DW	06bH
	DW	06bH
	DW	06cH
	DW	06dH
	DW	06dH
	DW	06eH
	DW	06fH
	DW	070H
	DW	070H
	DW	071H
	DW	072H
	DW	072H
	DW	073H
	DW	074H
	DW	075H
	DW	075H
	DW	076H
	DW	077H
	DW	077H
	DW	078H
	DW	079H
	DW	079H
	DW	07aH
	DW	07bH
	DW	07bH
	DW	07cH
	DW	07dH
	DW	07dH
	DW	07eH
	DW	07fH
	DW	080H
	DW	080H
	DW	081H
	DW	082H
	DW	082H
	DW	083H
	DW	084H
	DW	084H
	DW	085H
	DW	086H
	DW	086H
	DW	087H
	DW	088H
	DW	088H
	DW	089H
	DW	08aH
	DW	08aH
	DW	08bH
	DW	08cH
	DW	08cH
	DW	08dH
	DW	08eH
	DW	08eH
	DW	08fH
	DW	090H
	DW	090H
	DW	091H
	DW	091H
	DW	092H
	DW	093H
	DW	093H
	DW	094H
	DW	095H
	DW	095H
	DW	096H
	DW	097H
	DW	097H
	DW	098H
	DW	098H
	DW	099H
	DW	09aH
	DW	09aH
	DW	09bH
	DW	09cH
	DW	09cH
	DW	09dH
	DW	09dH
	DW	09eH
	DW	09fH
	DW	09fH
	DW	0a0H
	DW	0a1H
	DW	0a1H
	DW	0a2H
	DW	0a2H
	DW	0a3H
	DW	0a4H
	DW	0a4H
	DW	0a5H
	DW	0a5H
	DW	0a6H
	DW	0a7H
	DW	0a7H
	DW	0a8H
	DW	0a8H
	DW	0a9H
	DW	0aaH
	DW	0aaH
	DW	0abH
	DW	0abH
	DW	0acH
	DW	0adH
	DW	0adH
	DW	0aeH
	DW	0aeH
	DW	0afH
	DW	0afH
	DW	0b0H
	DW	0b1H
	DW	0b1H
	DW	0b2H
	DW	0b2H
	DW	0b3H
	DW	0b3H
	DW	0b4H
	DW	0b4H
	DW	0b5H
	DW	0b6H
	DW	0b6H
	DW	0b7H
	DW	0b7H
	DW	0b8H
	DW	0b8H
	DW	0b9H
	DW	0b9H
	DW	0baH
	DW	0baH
	DW	0bbH
	DW	0bcH
	DW	0bcH
	DW	0bdH
	DW	0bdH
	DW	0beH
	DW	0beH
	DW	0bfH
	DW	0bfH
	DW	0c0H
	DW	0c0H
	DW	0c1H
	DW	0c1H
	DW	0c2H
	DW	0c2H
	DW	0c3H
	DW	0c3H
	DW	0c4H
	DW	0c4H
	DW	0c5H
	DW	0c5H
	DW	0c6H
	DW	0c6H
	DW	0c7H
	DW	0c7H
	DW	0c8H
	DW	0c8H
	DW	0c9H
	DW	0c9H
	DW	0caH
	DW	0caH
	DW	0cbH
	DW	0cbH
	DW	0ccH
	DW	0ccH
	DW	0cdH
	DW	0cdH
	DW	0ceH
	DW	0ceH
	DW	0cfH
	DW	0cfH
	DW	0cfH
	DW	0d0H
	DW	0d0H
	DW	0d1H
	DW	0d1H
	DW	0d2H
	DW	0d2H
	DW	0d3H
	DW	0d3H
	DW	0d4H
	DW	0d4H
	DW	0d4H
	DW	0d5H
	DW	0d5H
	DW	0d6H
	DW	0d6H
	DW	0d7H
	DW	0d7H
	DW	0d7H
	DW	0d8H
	DW	0d8H
	DW	0d9H
	DW	0d9H
	DW	0daH
	DW	0daH
	DW	0daH
	DW	0dbH
	DW	0dbH
	DW	0dcH
	DW	0dcH
	DW	0dcH
	DW	0ddH
	DW	0ddH
	DW	0deH
	DW	0deH
	DW	0deH
	DW	0dfH
	DW	0dfH
	DW	0e0H
	DW	0e0H
	DW	0e0H
	DW	0e1H
	DW	0e1H
	DW	0e1H
	DW	0e2H
	DW	0e2H
	DW	0e3H
	DW	0e3H
	DW	0e3H
	DW	0e4H
	DW	0e4H
	DW	0e4H
	DW	0e5H
	DW	0e5H
	DW	0e5H
	DW	0e6H
	DW	0e6H
	DW	0e6H
	DW	0e7H
	DW	0e7H
	DW	0e7H
	DW	0e8H
	DW	0e8H
	DW	0e8H
	DW	0e9H
	DW	0e9H
	DW	0e9H
	DW	0eaH
	DW	0eaH
	DW	0eaH
	DW	0ebH
	DW	0ebH
	DW	0ebH
	DW	0ecH
	DW	0ecH
	DW	0ecH
	DW	0edH
	DW	0edH
	DW	0edH
	DW	0edH
	DW	0eeH
	DW	0eeH
	DW	0eeH
	DW	0efH
	DW	0efH
	DW	0efH
	DW	0efH
	DW	0f0H
	DW	0f0H
	DW	0f0H
	DW	0f1H
	DW	0f1H
	DW	0f1H
	DW	0f1H
	DW	0f2H
	DW	0f2H
	DW	0f2H
	DW	0f2H
	DW	0f3H
	DW	0f3H
	DW	0f3H
	DW	0f3H
	DW	0f4H
	DW	0f4H
	DW	0f4H
	DW	0f4H
	DW	0f5H
	DW	0f5H
	DW	0f5H
	DW	0f5H
	DW	0f5H
	DW	0f6H
	DW	0f6H
	DW	0f6H
	DW	0f6H
	DW	0f7H
	DW	0f7H
	DW	0f7H
	DW	0f7H
	DW	0f7H
	DW	0f8H
	DW	0f8H
	DW	0f8H
	DW	0f8H
	DW	0f8H
	DW	0f9H
	DW	0f9H
	DW	0f9H
	DW	0f9H
	DW	0f9H
	DW	0f9H
	DW	0faH
	DW	0faH
	DW	0faH
	DW	0faH
	DW	0faH
	DW	0faH
	DW	0fbH
	DW	0fbH
	DW	0fbH
	DW	0fbH
	DW	0fbH
	DW	0fbH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fcH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0fdH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0feH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0ffH
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
	DW	0100H
_DATA      ENDS
_TEXT      SEGMENT
	ASSUME	CS: _TEXT
	PUBLIC	?computeCoordinates@@YAXHH@Z	; computeCoordinates
?computeCoordinates@@YAXHH@Z	PROC NEAR	; computeCoordinates
; Line 333
;	y46 = -24
;	y13 = -26
;	y57 = -28
;	z02 = -30
;	z46 = -32
;	z13 = -34
;	z57 = -36
;	y0 = -38
;	y2 = -40
;	y1 = -42
;	y3 = -44
;	y4 = -46
;	y6 = -48
;	y5 = -50
;	y7 = -52
;	z0 = -54
;	z2 = -56
;	z1 = -58
;	z3 = -60
;	z4 = -62
;	z6 = -64
;	z5 = -66
;	z7 = -68
;	theta = 4
;	phi = 6
;	st = -2
;	ct = -4
;	sp = -6
;	cp = -8
;	x57 = -10
;	x02 = -12
;	x13 = -14
;	x46 = -16
;	u02 = -18
;	u46 = -20
;	y02 = -22
; Line 368
	ret	
	nop	

?computeCoordinates@@YAXHH@Z	ENDP
	PUBLIC	?muldiv@@YAHHHH@Z	; muldiv
?muldiv@@YAHHHH@Z	PROC NEAR	; muldiv
; Line 371
	push	bp
	mov	bp,sp
;	x = 4
;	y = 6
;	z = 8
; Line 372
	mov	ax,WORD PTR [bp+8]	;z
	cwd	
	push	dx
	push	ax
	mov	ax,WORD PTR [bp+6]	;y
	imul	WORD PTR [bp+4]	;x
	push	dx
	push	ax
	call	__aNldiv
; Line 373
	mov	sp,bp
	pop	bp
	ret	

?muldiv@@YAHHHH@Z	ENDP
	PUBLIC	_main
_main	PROC NEAR
; Line 376
	push	bp
	mov	bp,sp
	sub	sp,14	;000eH
;	regs = -14
; Line 379
	mov	WORD PTR [bp-14],4	;regs
; Line 380
	lea	ax,WORD PTR [bp-14]	;regs
	push	ax
	push	ax
	mov	ax,16	;0010H
	push	ax
	call	_int86
; Line 383
	mov	sp,bp
	pop	bp
	ret	
	nop	

_main	ENDP
_TEXT	ENDS
END
; raster demo

	unoreg equ $fc3b
	unodat equ $fd3b

	org $8000

	ld bc, unoreg;						// register select
	ld a, $0c;							// rasterline
	out (c), a;							// select it
	inc b;								// unodat
	xor a;								// LD A, 0
	out (c), a;							// set raster line to 0
	dec b;								// unoreg
	ld a, $0d;							// rasterctrl
	out (c), a;							// select it
	inc b;								// unodat
	ld a, %00000110;					// enable raster interrupt
	out (c), a;							// select it
	ld a, $80;							// interrupt vector
	ld i, a;							// set it
	im 2;								// set interrupt mode 2
	ret;								// back to BASIC

;	// interupt vector
	org $80ff
	ld bc, unoreg;						// register select
	ld a, $0c;							// rasterline
	out (c), a;							// select it
	inc b;								// unodat
	in a, (c);							// get value of rasterline
	ld h, $81;							// high byte of address
	ld l, a;							// low byte of address;
	jp (hl);							// jump to routine

;	// raster line 0
	org $8100
	ld a, 8;							// line 8
	out (c), a;							// set raster interrupt
	jp line_000;						// immedaite jump

;	// raster line 8
	org $8108
	ld a, 16;							// line 16
	out (c), a;							// set raster interrupt
	jp line_008;						// immedaite jump

;	// raster line 16
	org $8110
	ld a, 24;							// line 24
	out (c), a;							// set raster interrupt
	jp line_016;						// immedaite jump

;	// raster line 24
	org $8118
	ld a, 32;							// line 32
	out (c), a;							// set raster interrupt
	jp line_024;						// immedaite jump

;	// raster line 32
	org $8120
	ld a, 40;							// line 40
	out (c), a;							// set raster interrupt
	jp line_032;						// immedaite jump

;	// raster line 40
	org $8128
	ld a, 48;							// line 48
	out (c), a;							// set raster interrupt
	jp line_040;						// immedaite jump

;	// raster line 48
	org $8130
	ld a, 56;							// line 56
	out (c), a;							// set raster interrupt
	jp line_048;						// immedaite jump

;	// raster line 56
	org $8138
	ld a, 64;							// line 64
	out (c), a;							// set raster interrupt
	jp line_056;						// immedaite jump

;	// raster line 64
	org $8140
	ld a, 72;							// line 72
	out (c), a;							// set raster interrupt
	jp line_064;						// immedaite jump

;	// raster line 72
	org $8148
	ld a, 80;							// line 80
	out (c), a;							// set raster interrupt
	jp line_072;						// immedaite jump

;	// raster line 80
	org $8150
	ld a, 88;							// line 88
	out (c), a;							// set raster interrupt
	jp line_080;						// immedaite jump

;	// raster line 88
	org $8158
	ld a, 96;							// line 96
	out (c), a;							// set raster interrupt
	jp line_088;						// immedaite jump

;	// raster line 96
	org $8160
	ld a, 104;							// line 104
	out (c), a;							// set raster interrupt
	jp line_096;						// immedaite jump

;	// raster line 104
	org $8168
	ld a, 112;							// line 112
	out (c), a;							// set raster interrupt
	jp line_104;						// immedaite jump

;	// raster line 112
	org $8170
	ld a, 120;							// line 120
	out (c), a;							// set raster interrupt
	jp line_112;						// immedaite jump

;	// raster line 120
	org $8178
	ld a, 128;							// line 128
	out (c), a;							// set raster interrupt
	jp line_120;						// immedaite jump

;	// raster line 128
	org $8180
	ld a, 136;							// line 136
	out (c), a;							// set raster interrupt
	jp line_128;						// immedaite jump

;	// raster line 136
	org $8188
	ld a, 144;							// line 144
	out (c), a;							// set raster interrupt
	jp line_136;						// immedaite jump

;	// raster line 144
	org $8190
	ld a, 152;							// line 152
	out (c), a;							// set raster interrupt
	jp line_144;						// immedaite jump

;	// raster line 152
	org $8198
	ld a, 160;							// line 160
	out (c), a;							// set raster interrupt
	jp line_152;						// immedaite jump

;	// raster line 160
	org $81a0
	ld a, 168;							// line 168
	out (c), a;							// set raster interrupt
	jp line_160;						// immedaite jump

;	// raster line 168
	org $81a8
	ld a, 176;							// line 176
	out (c), a;							// set raster interrupt
	jp line_168;						// immedaite jump

;	// raster line 176
	org $81b0
	ld a, 184;							// line 184
	out (c), a;							// set raster interrupt
	jp line_174;						// immedaite jump

;	// raster line 184
	org $81b8
	ld a, 192;							// line 192
	out (c), a;							// set raster interrupt
	jp line_184;						// immedaite jump

;	// raster line 192
	org $81c0
	ld a, 0;							// line 0
	out (c), a;							// set raster interrupt
	jp line_192;						// immedaite jump

;	// even rows
line_000:
line_016:
line_032:
line_048:
line_064:
line_080:
line_096:
line_112:
line_128:
line_144:
line_160:
line_174:
	ld a, %00001110;					// hi-res color 1 on 6
	out ($ff), a;						// set it
	ret;								// done

line_008:
line_024:
line_040:
line_056:
line_072:
line_088:
line_104:
line_120:
line_136:
line_152:
line_168:
line_184:
	ld a, %00010110;					// hi-res color 2 on 5
	out ($ff), a;						// set it
	ret;								// done

line_192:
	ld a, %00111110;					// hi-res color 7 on 0
	out ($ff), a;						// set it
	rst $38;							// jump to normal interrupt routine

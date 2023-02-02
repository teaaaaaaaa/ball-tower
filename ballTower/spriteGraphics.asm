;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (MINGW32)
;--------------------------------------------------------
	.module spriteGraphics
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _spriteGraphics
	.globl ___bank_spriteGraphics
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_1
	.area _CODE_1
___bank_spriteGraphics	=	0x0001
_spriteGraphics:
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x31	; 49	'1'
	.db #0x3e	; 62
	.db #0x63	; 99	'c'
	.db #0x7c	; 124
	.db #0x63	; 99	'c'
	.db #0x7c	; 124
	.db #0xe3	; 227
	.db #0xfc	; 252
	.db #0xe3	; 227
	.db #0xfc	; 252
	.db #0xe3	; 227
	.db #0xfc	; 252
	.db #0xe1	; 225
	.db #0xfe	; 254
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x70	; 112	'p'
	.db #0x7f	; 127
	.db #0x7c	; 124
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xf9	; 249
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x06	; 6
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xfe	; 254
	.db #0x8e	; 142
	.db #0xf9	; 249
	.db #0x8f	; 143
	.db #0xf8	; 248
	.db #0x8f	; 143
	.db #0xf8	; 248
	.db #0x8f	; 143
	.db #0xf8	; 248
	.db #0x8f	; 143
	.db #0xf8	; 248
	.db #0x8f	; 143
	.db #0xf8	; 248
	.db #0x8f	; 143
	.db #0xf8	; 248
	.db #0x8f	; 143
	.db #0xf8	; 248
	.db #0x8f	; 143
	.db #0xf8	; 248
	.db #0x8f	; 143
	.db #0xf8	; 248
	.db #0x8f	; 143
	.db #0x88	; 136
	.db #0xff	; 255
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x8e	; 142
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x34	; 52	'4'
	.db #0x2c	; 44
	.db #0x34	; 52	'4'
	.db #0x2c	; 44
	.db #0x72	; 114	'r'
	.db #0x4e	; 78	'N'
	.db #0x72	; 114	'r'
	.db #0x4e	; 78	'N'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0xfb	; 251
	.db #0xc7	; 199
	.db #0x7f	; 127
	.db #0xbc	; 188
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x7f	; 127
	.db #0x71	; 113	'q'
	.db #0xff	; 255
	.db #0x91	; 145
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0x7f	; 127
	.db #0x91	; 145
	.db #0x3f	; 63
	.db #0xd1	; 209
	.db #0x11	; 17
	.db #0xff	; 255
	.db #0x91	; 145
	.db #0xff	; 255
	.db #0x71	; 113	'q'
	.db #0x7f	; 127
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0xf9	; 249
	.db #0x87	; 135
	.db #0xf1	; 241
	.db #0x8f	; 143
	.db #0xf1	; 241
	.db #0x8f	; 143
	.db #0xf1	; 241
	.db #0x8f	; 143
	.db #0xf1	; 241
	.db #0x8f	; 143
	.db #0xf1	; 241
	.db #0x8f	; 143
	.db #0xf1	; 241
	.db #0x8f	; 143
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x3f	; 63
	.db #0x30	; 48	'0'
	.db #0x5f	; 95
	.db #0x68	; 104	'h'
	.db #0x5f	; 95
	.db #0x68	; 104	'h'
	.db #0xef	; 239
	.db #0xf0	; 240
	.db #0xe7	; 231
	.db #0xf9	; 249
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0x3d	; 61
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfa	; 250
	.db #0x0e	; 14
	.db #0xf4	; 244
	.db #0x1c	; 28
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x3f	; 63
	.db #0x30	; 48	'0'
	.db #0x5f	; 95
	.db #0x68	; 104	'h'
	.db #0x5f	; 95
	.db #0x68	; 104	'h'
	.db #0xef	; 239
	.db #0xf1	; 241
	.db #0xe6	; 230
	.db #0xf9	; 249
	.db #0x11	; 17
	.db #0x1e	; 30
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xeb	; 235
	.db #0xfb	; 251
	.db #0xdf	; 223
	.db #0x6d	; 109	'm'
	.db #0xbf	; 191
	.db #0xc9	; 201
	.db #0x7e	; 126
	.db #0x8a	; 138
	.db #0xfa	; 250
	.db #0x06	; 6
	.db #0xe4	; 228
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x43	; 67	'C'
	.db #0x42	; 66	'B'
	.db #0x67	; 103	'g'
	.db #0x64	; 100	'd'
	.db #0x6b	; 107	'k'
	.db #0x6c	; 108	'l'
	.db #0x53	; 83	'S'
	.db #0x7c	; 124
	.db #0x53	; 83	'S'
	.db #0x7c	; 124
	.db #0x31	; 49	'1'
	.db #0x3e	; 62
	.db #0x31	; 49	'1'
	.db #0x3e	; 62
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc2	; 194
	.db #0x42	; 66	'B'
	.db #0xe6	; 230
	.db #0x26	; 38
	.db #0xf6	; 246
	.db #0x16	; 22
	.db #0xfa	; 250
	.db #0x0e	; 14
	.db #0xfa	; 250
	.db #0x0e	; 14
	.db #0xfc	; 252
	.db #0x0c	; 12
	.db #0xfc	; 252
	.db #0x0c	; 12
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0xd0	; 208
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.area _INITIALIZER
	.area _CABS (ABS)

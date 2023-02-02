;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (MINGW32)
;--------------------------------------------------------
	.module Loop
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _huge
	.globl _VerticalMirror
	.globl _memset
	.globl _cpu_fast
	.globl _set_sprite_palette_entry
	.globl _set_bkg_palette_entry
	.globl _fill_win_rect
	.globl _set_sprite_data
	.globl _set_bkg_submap
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _set_interrupts
	.globl _joypad
	.globl _add_LCD
	.globl _add_VBL
	.globl _interruptTable
	.globl _isPhysicsEnabled
	.globl _isStartHeld
	.globl _isAHeld
	.globl _gameOverFlag
	.globl _startFlag
	.globl _birdHitBonus
	.globl _c0
	.globl _ballSpeedY
	.globl _ballSpriteY
	.globl _ballSpriteX
	.globl _scrollY
	.globl _joyState
	.globl _scrollOffset2
	.globl _scrollOffset
	.globl _interruptOffset
	.globl _offsetIndex
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_interruptOffset::
	.ds 1
_scrollOffset::
	.ds 1
_scrollOffset2::
	.ds 1
_joyState::
	.ds 1
_scrollY::
	.ds 2
_ballSpriteX::
	.ds 1
_ballSpriteY::
	.ds 2
_ballSpeedY::
	.ds 1
_c0::
	.ds 1
_birdHitBonus::
	.ds 1
_startFlag::
	.ds 1
_gameOverFlag::
	.ds 1
_isAHeld::
	.ds 1
_isStartHeld::
	.ds 1
_isPhysicsEnabled::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_interruptTable::
	.ds 16
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
;Loop.c:52: void main() NONBANKED
;	---------------------------------
; Function main
; ---------------------------------
_main::
;Loop.c:54: cpu_fast();
	call	_cpu_fast
;Loop.c:55: scrollOffset = 9;
	ld	hl, #_scrollOffset
	ld	(hl), #0x09
;Loop.c:56: scrollOffset2 = 21;
	ld	hl, #_scrollOffset2
	ld	(hl), #0x15
;Loop.c:57: ballSpriteX = 80;
	ld	hl, #_ballSpriteX
	ld	(hl), #0x50
;Loop.c:58: set_bkg_palette_entry(0,0,bgGraphicsCGBPal0c0);
	ld	de, #0x6b20
	push	de
	xor	a, a
	rrca
	push	af
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:59: set_bkg_palette_entry(0,1,bgGraphicsCGBPal0c1);
	ld	de, #0x7260
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:60: set_bkg_palette_entry(0,2,bgGraphicsCGBPal0c2);
	ld	de, #0x4d60
	push	de
	ld	hl, #0x200
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:61: set_bkg_palette_entry(0,3,bgGraphicsCGBPal0c3);
	ld	de, #0x0000
	push	de
	ld	hl, #0x300
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:62: set_bkg_palette_entry(1,0,bgGraphicsCGBPal1c0);
	ld	de, #0x3b40
	push	de
	ld	hl, #0x01
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:63: set_bkg_palette_entry(1,1,bgGraphicsCGBPal1c1);
	ld	de, #0x36c0
	push	de
	ld	hl, #0x101
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:64: set_bkg_palette_entry(1,2,bgGraphicsCGBPal1c2);
	ld	de, #0x3e01
	push	de
	ld	hl, #0x201
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:65: set_bkg_palette_entry(1,3,bgGraphicsCGBPal1c3);
	ld	de, #0x0000
	push	de
	ld	hl, #0x301
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:66: set_bkg_palette_entry(2,0,bgGraphicsCGBPal2c0);
	ld	de, #0x53d3
	push	de
	ld	hl, #0x02
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:67: set_bkg_palette_entry(2,1,bgGraphicsCGBPal2c1);
	ld	de, #0x3fed
	push	de
	ld	hl, #0x102
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:68: set_bkg_palette_entry(2,2,bgGraphicsCGBPal2c2);
	ld	de, #0x33e3
	push	de
	ld	hl, #0x202
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:69: set_bkg_palette_entry(2,3,bgGraphicsCGBPal2c3);
	ld	de, #0x0000
	push	de
	ld	hl, #0x302
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:70: set_bkg_palette_entry(3,0,bgGraphicsCGBPal3c0);
	ld	de, #0x4660
	push	de
	ld	hl, #0x03
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:71: set_bkg_palette_entry(3,1,bgGraphicsCGBPal3c1);
	ld	de, #0x4161
	push	de
	ld	hl, #0x103
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:72: set_bkg_palette_entry(3,2,bgGraphicsCGBPal3c2);
	ld	de, #0x34e1
	push	de
	ld	hl, #0x203
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:73: set_bkg_palette_entry(3,3,bgGraphicsCGBPal3c3);
	ld	de, #0x0000
	push	de
	ld	hl, #0x303
	push	hl
	call	_set_bkg_palette_entry
	add	sp, #4
;Loop.c:74: set_sprite_palette_entry(0,0,spriteGraphicsCGBPal0c0);
	ld	de, #0x0000
	push	de
	xor	a, a
	rrca
	push	af
	call	_set_sprite_palette_entry
	add	sp, #4
;Loop.c:75: set_sprite_palette_entry(0,1,spriteGraphicsCGBPal0c1);
	ld	de, #0x4f3e
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_palette_entry
	add	sp, #4
;Loop.c:76: set_sprite_palette_entry(0,2,spriteGraphicsCGBPal0c2);
	ld	de, #0x019c
	push	de
	ld	hl, #0x200
	push	hl
	call	_set_sprite_palette_entry
	add	sp, #4
;Loop.c:77: set_sprite_palette_entry(0,3,spriteGraphicsCGBPal0c3);
	ld	de, #0x00f3
	push	de
	ld	hl, #0x300
	push	hl
	call	_set_sprite_palette_entry
	add	sp, #4
;Loop.c:78: set_sprite_palette_entry(1,0,spriteGraphicsCGBPal1c0);
	ld	de, #0x0000
	push	de
	ld	hl, #0x01
	push	hl
	call	_set_sprite_palette_entry
	add	sp, #4
;Loop.c:79: set_sprite_palette_entry(1,1,spriteGraphicsCGBPal1c1);
	ld	de, #0x7fff
	push	de
	ld	hl, #0x101
	push	hl
	call	_set_sprite_palette_entry
	add	sp, #4
;Loop.c:80: set_sprite_palette_entry(1,2,spriteGraphicsCGBPal1c2);
	ld	de, #0x5294
	push	de
	ld	hl, #0x201
	push	hl
	call	_set_sprite_palette_entry
	add	sp, #4
;Loop.c:81: set_sprite_palette_entry(1,3,spriteGraphicsCGBPal1c3);
	ld	de, #0x14a5
	push	de
	ld	hl, #0x301
	push	hl
	call	_set_sprite_palette_entry
	add	sp, #4
;Loop.c:82: set_sprite_palette_entry(2,0,spriteGraphicsCGBPal2c0);
	ld	de, #0x0000
	push	de
	ld	hl, #0x02
	push	hl
	call	_set_sprite_palette_entry
	add	sp, #4
;Loop.c:83: set_sprite_palette_entry(2,1,spriteGraphicsCGBPal2c1);
	ld	de, #0x3fed
	push	de
	ld	hl, #0x102
	push	hl
	call	_set_sprite_palette_entry
	add	sp, #4
;Loop.c:84: set_sprite_palette_entry(2,2,spriteGraphicsCGBPal2c2);
	ld	de, #0x2a20
	push	de
	ld	hl, #0x202
	push	hl
	call	_set_sprite_palette_entry
	add	sp, #4
;Loop.c:85: set_sprite_palette_entry(2,3,spriteGraphicsCGBPal2c3);
	ld	de, #0x18e1
	push	de
	ld	hl, #0x302
	push	hl
	call	_set_sprite_palette_entry
	add	sp, #4
;Loop.c:86: set_sprite_data(0,28,spriteGraphics);
	ld	de, #_spriteGraphics
	push	de
	ld	hl, #0x1c00
	push	hl
	call	_set_sprite_data
	add	sp, #4
;Loop.c:87: set_bkg_data(0,256,bgGraphics);
	ld	de, #_bgGraphics
	push	de
	xor	a, a
	rrca
	push	af
	call	_set_bkg_data
	add	sp, #4
;Loop.c:88: set_bkg_submap(0,0,20,18,triangleMap,20);
	ld	a, #0x14
	push	af
	inc	sp
	ld	de, #_triangleMapPLN0
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_submap
	add	sp, #7
;Loop.c:89: VBK_REG = 1;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;Loop.c:90: set_bkg_submap(0,0,20,18,triangleMapPLN1,20);
	ld	a, #0x14
	push	af
	inc	sp
	ld	de, #_triangleMapPLN1
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_submap
	add	sp, #7
;Loop.c:91: fill_win_rect(0,0,32,32,7);
	ld	hl, #0x720
	push	hl
	ld	a, #0x20
	push	af
	inc	sp
	xor	a, a
	rrca
	push	af
	call	_fill_win_rect
	add	sp, #5
;Loop.c:92: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;Loop.c:93: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;Loop.c:94: STAT_REG = 0xC5;
	ld	a, #0xc5
	ldh	(_STAT_REG + 0), a
;Loop.c:95: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;Loop.c:96: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
;Loop.c:97: add_VBL(huge);
	ld	de, #_huge
	push	de
	call	_add_VBL
	pop	hl
;Loop.c:99: set_interrupts(LCD_IFLAG|VBL_IFLAG);
	ld	a, #0x03
	push	af
	inc	sp
	call	_set_interrupts
	inc	sp
;C:/gbdk/include/gb/gb.h:671: __asm__("di");
	di
;Loop.c:102: add_LCD(VerticalMirror);
	ld	de, #_VerticalMirror
	push	de
	call	_add_LCD
	inc	sp
	inc	sp
;C:/gbdk/include/gb/gb.h:655: __asm__("ei");
	ei
;Loop.c:105: while(1)
00126$:
;Loop.c:107: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;Loop.c:108: joyState = joypad();
	call	_joypad
	ld	hl, #_joyState
	ld	(hl), e
;Loop.c:109: if (joyState & J_RIGHT)
	ld	c, (hl)
	bit	0, c
	jr	Z, 00102$
;Loop.c:111: scrollOffset --;
	ld	hl, #_scrollOffset
	dec	(hl)
;Loop.c:112: scrollOffset2 --;
	ld	hl, #_scrollOffset2
	dec	(hl)
00102$:
;Loop.c:114: if (joyState & J_LEFT)
	bit	1, c
	jr	Z, 00104$
;Loop.c:116: scrollOffset ++;
	ld	hl, #_scrollOffset
	inc	(hl)
;Loop.c:117: scrollOffset2 ++;
	ld	hl, #_scrollOffset2
	inc	(hl)
00104$:
;Loop.c:119: if (joyState & J_DOWN)
	bit	3, c
	jr	Z, 00106$
;Loop.c:121: scrollY ++;
	ld	hl, #_scrollY
	inc	(hl)
	jr	NZ, 00203$
	inc	hl
	inc	(hl)
00203$:
00106$:
;Loop.c:123: if (joyState & J_UP)
	bit	2, c
	jr	Z, 00108$
;Loop.c:125: scrollY --;
	ld	hl, #_scrollY
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
00108$:
;Loop.c:127: LYC_REG = 0;
	xor	a, a
	ldh	(_LYC_REG + 0), a
;Loop.c:128: interruptOffset = 0;
	ld	hl, #_interruptOffset
	ld	(hl), #0x00
;Loop.c:129: if (ballSpeedY < 80)
	ld	hl, #_ballSpeedY
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0xd0
	jr	NC, 00110$
;Loop.c:131: ballSpeedY ++;
	inc	(hl)
00110$:
;Loop.c:133: if ((ballSpriteY >> 4) > scrollY + 144)
	ld	hl, #_ballSpriteY
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ld	hl, #_scrollY
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0090
	add	hl, de
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jr	NC, 00112$
;Loop.c:135: ballSpeedY = -80;
	ld	hl, #_ballSpeedY
	ld	(hl), #0xb0
00112$:
;Loop.c:137: ballSpriteY += ballSpeedY;
	ld	a, (#_ballSpeedY)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	hl, #_ballSpriteY
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_ballSpriteY + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	a, h
	ld	hl, #_ballSpriteY
	ld	(hl), c
	inc	hl
;Loop.c:133: if ((ballSpriteY >> 4) > scrollY + 144)
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;Loop.c:138: scrollY = (ballSpriteY >> 4) - 72;
	ld	a, c
	ld	d, b
	add	a, #0xb8
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	hl, #_scrollY
	ld	(hl), e
	inc	hl
;Loop.c:139: if (scrollY < 0)
	ld	(hl-), a
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_scrollY + 1)
;	spillPairReg hl
;	spillPairReg hl
	bit	7,a
	jr	Z, 00114$
;Loop.c:141: scrollY = 0;
	xor	a, a
	ld	hl, #_scrollY
	ld	(hl+), a
	ld	(hl), a
00114$:
;Loop.c:143: if (scrollY > 160)
	ld	hl, #_scrollY
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_scrollY + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, h
	ld	d, #0x00
	ld	a, #0xa0
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	bit	7, e
	jr	Z, 00205$
	bit	7, d
	jr	NZ, 00206$
	cp	a, a
	jr	00206$
00205$:
	bit	7, d
	jr	Z, 00206$
	scf
00206$:
	jr	NC, 00116$
;Loop.c:145: scrollY = 160;
	ld	hl, #_scrollY
	ld	a, #0xa0
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
00116$:
;Loop.c:147: move_sprite(0,ballSpriteX,(ballSpriteY >> 4) - scrollY);
	ld	a, c
	ld	hl, #_scrollY
	ld	c, (hl)
	sub	a, c
	ld	b, a
	ld	hl, #_ballSpriteX
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1520: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;C:/gbdk/include/gb/gb.h:1521: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;Loop.c:148: move_sprite(1,ballSpriteX + 8,(ballSpriteY >> 4) - scrollY);
	ld	hl, #_ballSpriteY
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ld	a, c
	ld	hl, #_scrollY
	ld	c, (hl)
	sub	a, c
	ld	b, a
	ld	a, (#_ballSpriteX)
	add	a, #0x08
	ld	c, a
;C:/gbdk/include/gb/gb.h:1520: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 4)
;C:/gbdk/include/gb/gb.h:1521: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;C:/gbdk/include/gb/gb.h:1447: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), #0x02
;Loop.c:150: interruptOffset = scrollY - ((scrollY >> 4) << 4);		//wraps around if greater than 16. Useful for scrolling implementations
	ld	hl, #_scrollY
	ld	c, (hl)
	ld	a, (hl+)
	ld	b, a
	ld	e, (hl)
	sra	e
	rr	b
	sra	e
	rr	b
	sra	e
	rr	b
	sra	e
	rr	b
	ld	a, b
	swap	a
	and	a, #0xf0
	ld	b, a
	ld	a, c
	sub	a, b
	ld	(#_interruptOffset),a
;Loop.c:151: if (scrollOffset < 9)
	ld	hl, #_scrollOffset
	ld	a, (hl)
	sub	a, #0x09
	jr	NC, 00118$
;Loop.c:153: scrollOffset = 0x32;
	ld	(hl), #0x32
00118$:
;Loop.c:155: if (scrollOffset > 0x32)
	ld	a, #0x32
	ld	hl, #_scrollOffset
	sub	a, (hl)
	jr	NC, 00120$
;Loop.c:157: scrollOffset = 9;
	ld	(hl), #0x09
00120$:
;Loop.c:159: if (scrollOffset2 < 9)
	ld	hl, #_scrollOffset2
	ld	a, (hl)
	sub	a, #0x09
	jr	NC, 00122$
;Loop.c:161: scrollOffset2 = 0x32;
	ld	(hl), #0x32
00122$:
;Loop.c:163: if (scrollOffset2 > 0x32)
	ld	a, #0x32
	ld	hl, #_scrollOffset2
	sub	a, (hl)
	jr	NC, 00124$
;Loop.c:165: scrollOffset2 = 9;
	ld	(hl), #0x09
00124$:
;Loop.c:167: memset(interruptTable + 1,scrollOffset,7);		//write to the interrupt table, but avoid the 1st byte
	ld	hl, #_scrollOffset
	ld	c, (hl)
	ld	b, #0x00
	ld	de, #0x0007
	push	de
	push	bc
	ld	de, #(_interruptTable + 1)
	push	de
	call	_memset
	add	sp, #6
;Loop.c:168: memset(interruptTable + 9,scrollOffset2,7);		//write to the interrupt table, but avoid the 1st byte of the second half of the table
	ld	hl, #_scrollOffset2
	ld	c, (hl)
	ld	b, #0x00
	ld	de, #0x0007
	push	de
	push	bc
	ld	de, #(_interruptTable + 9)
	push	de
	call	_memset
	add	sp, #6
;Loop.c:169: wait_vbl_done();
	call	_wait_vbl_done
;Loop.c:171: }
	jp	00126$
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;Loop.c:34: void VerticalMirror()
;	---------------------------------
; Function VerticalMirror
; ---------------------------------
_VerticalMirror::
;Loop.c:36: if (LY_REG == LYC_REG & LY_REG == LYC_REG)		//performant delay to prevent scanline glitches.
	push	bc
	ldh	a, (_LY_REG + 0)
	ld	c,a
	ldh	a, (_LYC_REG + 0)
	sub	a,c
	ld	a, #0x01
	jr	Z, 00118$
	xor	a, a
00118$:
	pop	bc
	ld	c, a
	push	bc
	ldh	a, (_LY_REG + 0)
	ld	c,a
	ldh	a, (_LYC_REG + 0)
	sub	a,c
	ld	a, #0x01
	jr	Z, 00120$
	xor	a, a
00120$:
	pop	bc
	and	a,c
	ret	Z
;Loop.c:38: SCY_REG = interruptTable[interruptOffset] - LYC_REG;
	ld	bc, #_interruptTable+0
	ld	a, c
	ld	hl, #_interruptOffset
	add	a, (hl)
	ld	c, a
	jr	NC, 00121$
	inc	b
00121$:
	ld	a, (bc)
	ld	c, a
	ldh	a, (_LYC_REG + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, l
	ldh	(_SCY_REG + 0), a
;Loop.c:39: interruptOffset ++;
	ld	hl, #_interruptOffset
	inc	(hl)
;Loop.c:40: LYC_REG ++;
	ldh	a, (_LYC_REG + 0)
	inc	a
	ldh	(_LYC_REG + 0), a
;Loop.c:41: if (interruptOffset > 15)
	ld	a, #0x0f
	sub	a, (hl)
	ret	NC
;Loop.c:43: interruptOffset = 0;
	ld	(hl), #0x00
;Loop.c:46: }
	ret
_offsetIndex:
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0xb0	; 176
;Loop.c:48: void huge()
;	---------------------------------
; Function huge
; ---------------------------------
_huge::
;Loop.c:50: }
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__interruptTable:
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
	.area _CABS (ABS)

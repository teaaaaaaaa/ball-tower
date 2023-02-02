#include <gbdk/platform.h>
#include "spriteGraphics.h"
#include "triangleMap.h"
#include "backgroundGraphics.h"
#include "hUGEDriver.h"
#include <string.h>

uint8_t interruptOffset;
uint8_t scrollOffset;
uint8_t scrollOffset2;
uint8_t joyState;
int16_t scrollY;
uint8_t ballSpriteX;
uint16_t ballSpriteY;
int8_t ballSpeedY;
UBYTE c0;
BOOLEAN birdHitBonus;
BOOLEAN startFlag;
BOOLEAN gameOverFlag;
BOOLEAN isAHeld;
BOOLEAN isStartHeld;
BOOLEAN isPhysicsEnabled;

const unsigned char offsetIndex[] =
{
0,90,176
};

unsigned char interruptTable[] =		//a list of scroll offsets that wraps around.
{
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
};

void VerticalMirror()
{
if (LY_REG == LYC_REG & LY_REG == LYC_REG)		//performant delay to prevent scanline glitches.
{
SCY_REG = interruptTable[interruptOffset] - LYC_REG;
interruptOffset ++;
LYC_REG ++;
if (interruptOffset > 15)
{
interruptOffset = 0;
}
}
}

void huge()
{
}

void main() NONBANKED
{
	cpu_fast();
	scrollOffset = 9;
	scrollOffset2 = 21;
	ballSpriteX = 80;
	set_bkg_palette_entry(0,0,bgGraphicsCGBPal0c0);
	set_bkg_palette_entry(0,1,bgGraphicsCGBPal0c1);
	set_bkg_palette_entry(0,2,bgGraphicsCGBPal0c2);
	set_bkg_palette_entry(0,3,bgGraphicsCGBPal0c3);
	set_bkg_palette_entry(1,0,bgGraphicsCGBPal1c0);
	set_bkg_palette_entry(1,1,bgGraphicsCGBPal1c1);
	set_bkg_palette_entry(1,2,bgGraphicsCGBPal1c2);
	set_bkg_palette_entry(1,3,bgGraphicsCGBPal1c3);
	set_bkg_palette_entry(2,0,bgGraphicsCGBPal2c0);
	set_bkg_palette_entry(2,1,bgGraphicsCGBPal2c1);
	set_bkg_palette_entry(2,2,bgGraphicsCGBPal2c2);
	set_bkg_palette_entry(2,3,bgGraphicsCGBPal2c3);
	set_bkg_palette_entry(3,0,bgGraphicsCGBPal3c0);
	set_bkg_palette_entry(3,1,bgGraphicsCGBPal3c1);
	set_bkg_palette_entry(3,2,bgGraphicsCGBPal3c2);
	set_bkg_palette_entry(3,3,bgGraphicsCGBPal3c3);
	set_sprite_palette_entry(0,0,spriteGraphicsCGBPal0c0);
	set_sprite_palette_entry(0,1,spriteGraphicsCGBPal0c1);
	set_sprite_palette_entry(0,2,spriteGraphicsCGBPal0c2);
	set_sprite_palette_entry(0,3,spriteGraphicsCGBPal0c3);
	set_sprite_palette_entry(1,0,spriteGraphicsCGBPal1c0);
	set_sprite_palette_entry(1,1,spriteGraphicsCGBPal1c1);
	set_sprite_palette_entry(1,2,spriteGraphicsCGBPal1c2);
	set_sprite_palette_entry(1,3,spriteGraphicsCGBPal1c3);
	set_sprite_palette_entry(2,0,spriteGraphicsCGBPal2c0);
	set_sprite_palette_entry(2,1,spriteGraphicsCGBPal2c1);
	set_sprite_palette_entry(2,2,spriteGraphicsCGBPal2c2);
	set_sprite_palette_entry(2,3,spriteGraphicsCGBPal2c3);
	set_sprite_data(0,28,spriteGraphics);
	set_bkg_data(0,256,bgGraphics);
	set_bkg_submap(0,0,20,18,triangleMap,20);
	VBK_REG = 1;
	set_bkg_submap(0,0,20,18,triangleMapPLN1,20);
	fill_win_rect(0,0,32,32,7);
	DISPLAY_ON;
	SHOW_BKG;
	STAT_REG = 0xC5;
	SHOW_SPRITES;
	SPRITES_8x16;
	add_VBL(huge);

	set_interrupts(LCD_IFLAG|VBL_IFLAG);

	disable_interrupts();
	add_LCD(VerticalMirror);
	enable_interrupts();

	while(1)
	{
	SHOW_BKG;
	joyState = joypad();
	if (joyState & J_RIGHT)
	{
	scrollOffset --;
	scrollOffset2 --;
	}
	if (joyState & J_LEFT)
	{
	scrollOffset ++;
	scrollOffset2 ++;
	}
	if (joyState & J_DOWN)
	{
	scrollY ++;
	}
	if (joyState & J_UP)
	{
	scrollY --;
	}
	LYC_REG = 0;
	interruptOffset = 0;
	if (ballSpeedY < 80)
	{
	ballSpeedY ++;
	}
	if ((ballSpriteY >> 4) > scrollY + 144)
	{
	ballSpeedY = -80;
	}
	ballSpriteY += ballSpeedY;
	scrollY = (ballSpriteY >> 4) - 72;
	if (scrollY < 0)
	{
	scrollY = 0;
	}
	if (scrollY > 160)
	{
	scrollY = 160;
	}
	move_sprite(0,ballSpriteX,(ballSpriteY >> 4) - scrollY);
	move_sprite(1,ballSpriteX + 8,(ballSpriteY >> 4) - scrollY);
	set_sprite_tile(1,2);
	interruptOffset = scrollY - ((scrollY >> 4) << 4);		//wraps around if greater than 16. Useful for scrolling implementations
	if (scrollOffset < 9)
	{
	scrollOffset = 0x32;
	}
	if (scrollOffset > 0x32)
	{
	scrollOffset = 9;
	}
	if (scrollOffset2 < 9)
	{
	scrollOffset2 = 0x32;
	}
	if (scrollOffset2 > 0x32)
	{
	scrollOffset2 = 9;
	}
	memset(interruptTable + 1,scrollOffset,7);		//write to the interrupt table, but avoid the 1st byte
	memset(interruptTable + 9,scrollOffset2,7);		//write to the interrupt table, but avoid the 1st byte of the second half of the table
	wait_vbl_done();
	}
}

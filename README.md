# ball-tower
A tech demo for the gameboy color, showing an almost fullscreen rotating tower at 60fps, inspired by nebulus.
It's only designed for the gameboy color, I just didn't add code to prevent it from being run in DMG mode.
There is no sound.
I programmed this entirely in C- however, most of the CPU is used by the interrupt logic (plus delays to prevent scanline glitches). This leaves little time left for the game logic- thankfully there isn't much of it here.

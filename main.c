#include <gb/gb.h>
#include <stdio.h>

#include "sprites/CursorPointer.c"

const UINT8 minCursorX = 12;
const UINT8 minCursorY = 32;

UINT8 cursorX;
UINT8 cursorY;

UINT8 cursorMoveDistance = 8;

const UINT8 minCurrentSfx = 1;
const UINT8 maxCurrentSfx = 8;

UINT8 currentSfx;

void initSoundEffects()
{
    // These registers must be in this specific order!!
    NR52_REG = 0x80; // is 1000 0000 in binary and turns on sound
    NR50_REG = 0x77; // sets the volume for both left and right channel just set to max 0x77
    NR51_REG = 0xFF; // is 1111 1111 in binary, select which channels we want to use in this case all of them. 4 channels each with a bit for Left and Right
}

void playJumpFx()
{
    NR10_REG = 0x16;
    NR11_REG = 0x40;
    NR12_REG = 0x73;
    NR13_REG = 0x00;
    NR14_REG = 0xC3;
}

void playBonkFx()
{
    NR10_REG = 0x4a;
    NR11_REG = 0x80;
    NR12_REG = 0x44;
    NR13_REG = 0x7A;
    NR14_REG = 0x86;
}

void playRumbleFx()
{
    NR30_REG = 0x80;
    NR31_REG = 0x02;
    NR32_REG = 0x40;
    NR33_REG = 0x58;
    NR34_REG = 0xc2;
}

void playCollectFx()
{
    NR10_REG = 0x15;
    NR11_REG = 0x96;
    NR12_REG = 0x73;
    NR13_REG = 0xBB;
    NR14_REG = 0x85;
}

void playCollectTwoFx()
{
    NR10_REG = 0x16;
    NR11_REG = 0x9E;
    NR12_REG = 0x2D;
    NR13_REG = 0x65;
    NR14_REG = 0x85;
}

void playFallingFx()
{
    NR10_REG = 0x4F;
    NR11_REG = 0x96;
    NR12_REG = 0xB7;
    NR13_REG = 0xBB;
    NR14_REG = 0x85;
}

void playChopFx()
{
    NR10_REG = 0x49;
    NR11_REG = 0x80;
    NR12_REG = 0x51;
    NR13_REG = 0xc3;
    NR14_REG = 0x81;
}

void playShootFx()
{
    NR10_REG = 0x41;
    NR11_REG = 0x80;
    NR12_REG = 0x51;
    NR13_REG = 0xc3;
    NR14_REG = 0x81;
}

void performantDelay(UINT8 numloops)
{
    UINT8 i;

    for (i = 0; i < numloops; i++)
    {
        wait_vbl_done();
    }
}

void moveCursor(INT8 distance)
{
    cursorY += distance;
    move_sprite(0, cursorX, cursorY);
}

void playCurrentFx()
{
    switch (currentSfx)
    {
        case 1:
            playJumpFx();
            break;
        
        case 2:
            playBonkFx();
            break;

        case 3:
            playRumbleFx();
            break;

        case 4:
            playCollectFx();
            break;

        case 5:
            playCollectTwoFx();
            break;

        case 6:
            playFallingFx();
            break;

        case 7:
            playChopFx();
            break;

        case 8:
            playShootFx();
            break;
    }
}

void main()
{
    initSoundEffects();

    cursorX = minCursorX;
    cursorY = minCursorY;
    currentSfx = minCurrentSfx;

    set_sprite_data(0, 1, CursorPointer);
    set_sprite_tile(0, 0);

    move_sprite(0, cursorX, cursorY);

    DISPLAY_ON;
    SHOW_SPRITES;

    printf("  Sounds Collection\n");
    printf("--------------------");
    printf("  Jump\n");
    printf("  Bonk\n");
    printf("  Rumble\n");
    printf("  Collect\n");
    printf("  Collect 2\n");
    printf("  Falling\n");
    printf("  Chop\n");
    printf("  Shoot\n");

    while(1)
    {
        if ((joypad() & J_A))
        {
            playCurrentFx();
        }

        if (joypad() & J_UP)
        {
            if (currentSfx != minCurrentSfx)
            {
                moveCursor(-cursorMoveDistance);
                currentSfx -= 1;
            }
        }

        if (joypad() & J_DOWN)
        {
            if (currentSfx != maxCurrentSfx)
            {
                moveCursor(cursorMoveDistance);
                currentSfx += 1;
            }
        }

        performantDelay(8);
    }
}

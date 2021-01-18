#include <gb\gb.h>
#include <stdio.h>
#include "sprites/SmilerSprites.c"

void main()
{
    UINT8 currentSpriteIndex = 0;

    // load tile data from 0 (first spot of array), and load 2 tiles total
    set_sprite_data(0, 2, Smiler);

    // set the first sprite to the first sprite from our tile data
    set_sprite_tile(0, currentSpriteIndex);

    // set initial position of sprite
    move_sprite(0, 88, 78);

    SHOW_SPRITES;

    // gameloop
    while(1)
    {
        switch (joypad())
        {
            case J_LEFT:
                scroll_sprite(0, -4, 0);
                break;
            
            case J_RIGHT:
                scroll_sprite(0, 4, 0);
                break;
            
            case J_UP:
                scroll_sprite(0, 0, -4);
                break;
            
            case J_DOWN:
                scroll_sprite(0, 0, 4);
                break;
        }

        delay(100);
    }
}

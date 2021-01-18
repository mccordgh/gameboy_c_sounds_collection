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
        if (currentSpriteIndex == 0)
        {
            currentSpriteIndex = 1;
        }
        else
        {
            currentSpriteIndex = 0;
        }

        set_sprite_tile(0, currentSpriteIndex);

        delay(1000);

        // moving sprite
        scroll_sprite(0, 10, 0);
    }
}

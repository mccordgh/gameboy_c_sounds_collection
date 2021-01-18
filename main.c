#include <gb\gb.h>
#include <stdio.h>
#include "sprites/SmilerSprites.c"

#include "sprites/SimpleBackground.c"
#include "sprites/SimpleBackgroundTiles.c"

void main()
{
    // load background data
    set_bkg_data(0, 7, backgroundtiles);

    // set the background tiles
    set_bkg_tiles(0, 0, 40, 18, backgroundmap);

    SHOW_BKG;
    DISPLAY_ON;

    while(1)
    {
        scroll_bkg(2, 0);

        delay(100);
    }
}

// THIS IS DRAWING A SPRITE AND SCROLLING
void main_1()
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

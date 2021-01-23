;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _jump
	.globl _wouldhitsurface
	.globl _performatdelay
	.globl _set_sprite_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _floorYPosition
	.globl _currentspeedY
	.globl _gravity
	.globl _jumping
	.globl _playerlocation
	.globl _bloke
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$bloke$0_0$0==.
_bloke::
	.ds 128
G$playerlocation$0_0$0==.
_playerlocation::
	.ds 2
G$jumping$0_0$0==.
_jumping::
	.ds 1
G$gravity$0_0$0==.
_gravity::
	.ds 1
G$currentspeedY$0_0$0==.
_currentspeedY::
	.ds 1
G$floorYPosition$0_0$0==.
_floorYPosition::
	.ds 1
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
	C$main.c$4$1_0$107	= .
	.globl	C$main.c$4$1_0$107
;main.c:4: unsigned char bloke[] =
	ld	hl, #_bloke
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0002)
	ld	(hl), #0x38
	ld	hl, #(_bloke + 0x0003)
	ld	(hl), #0x38
	ld	hl, #(_bloke + 0x0004)
	ld	(hl), #0x7c
	ld	hl, #(_bloke + 0x0005)
	ld	(hl), #0x44
	ld	hl, #(_bloke + 0x0006)
	ld	(hl), #0x7f
	ld	hl, #(_bloke + 0x0007)
	ld	(hl), #0x7f
	ld	hl, #(_bloke + 0x0008)
	ld	(hl), #0x44
	ld	hl, #(_bloke + 0x0009)
	ld	(hl), #0x74
	ld	hl, #(_bloke + 0x000a)
	ld	(hl), #0x46
	ld	hl, #(_bloke + 0x000b)
	ld	(hl), #0x7c
	ld	hl, #(_bloke + 0x000c)
	ld	(hl), #0x40
	ld	hl, #(_bloke + 0x000d)
	ld	(hl), #0x78
	ld	hl, #(_bloke + 0x000e)
	ld	(hl), #0x24
	ld	hl, #(_bloke + 0x000f)
	ld	(hl), #0x3c
	ld	hl, #(_bloke + 0x0010)
	ld	(hl), #0x18
	ld	hl, #(_bloke + 0x0011)
	ld	(hl), #0x3c
	ld	hl, #(_bloke + 0x0012)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0013)
	ld	(hl), #0x24
	ld	hl, #(_bloke + 0x0014)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0015)
	ld	(hl), #0x24
	ld	hl, #(_bloke + 0x0016)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0017)
	ld	(hl), #0x24
	ld	hl, #(_bloke + 0x0018)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0019)
	ld	(hl), #0x24
	ld	hl, #(_bloke + 0x001a)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x001b)
	ld	(hl), #0x36
	ld	hl, #(_bloke + 0x001c)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x001d)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x001e)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x001f)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0020)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0021)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0022)
	ld	(hl), #0x38
	ld	hl, #(_bloke + 0x0023)
	ld	(hl), #0x38
	ld	hl, #(_bloke + 0x0024)
	ld	(hl), #0x7c
	ld	hl, #(_bloke + 0x0025)
	ld	(hl), #0x44
	ld	hl, #(_bloke + 0x0026)
	ld	(hl), #0x7f
	ld	hl, #(_bloke + 0x0027)
	ld	(hl), #0x7f
	ld	hl, #(_bloke + 0x0028)
	ld	(hl), #0x44
	ld	hl, #(_bloke + 0x0029)
	ld	(hl), #0x74
	ld	hl, #(_bloke + 0x002a)
	ld	(hl), #0x46
	ld	hl, #(_bloke + 0x002b)
	ld	(hl), #0x7c
	ld	hl, #(_bloke + 0x002c)
	ld	(hl), #0x40
	ld	hl, #(_bloke + 0x002d)
	ld	(hl), #0x78
	ld	hl, #(_bloke + 0x002e)
	ld	(hl), #0x24
	ld	hl, #(_bloke + 0x002f)
	ld	(hl), #0x3c
	ld	hl, #(_bloke + 0x0030)
	ld	(hl), #0x18
	ld	hl, #(_bloke + 0x0031)
	ld	(hl), #0x3c
	ld	hl, #(_bloke + 0x0032)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0033)
	ld	(hl), #0x22
	ld	hl, #(_bloke + 0x0034)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0035)
	ld	(hl), #0x22
	ld	hl, #(_bloke + 0x0036)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0037)
	ld	(hl), #0x22
	ld	hl, #(_bloke + 0x0038)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0039)
	ld	(hl), #0x23
	ld	hl, #(_bloke + 0x003a)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x003b)
	ld	(hl), #0x30
	ld	hl, #(_bloke + 0x003c)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x003d)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x003e)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x003f)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0040)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0042)
	ld	(hl), #0x38
	ld	hl, #(_bloke + 0x0043)
	ld	(hl), #0x38
	ld	hl, #(_bloke + 0x0044)
	ld	(hl), #0x7c
	ld	hl, #(_bloke + 0x0045)
	ld	(hl), #0x44
	ld	hl, #(_bloke + 0x0046)
	ld	(hl), #0x7f
	ld	hl, #(_bloke + 0x0047)
	ld	(hl), #0x7f
	ld	hl, #(_bloke + 0x0048)
	ld	(hl), #0x44
	ld	hl, #(_bloke + 0x0049)
	ld	(hl), #0x74
	ld	hl, #(_bloke + 0x004a)
	ld	(hl), #0x46
	ld	hl, #(_bloke + 0x004b)
	ld	(hl), #0x7c
	ld	hl, #(_bloke + 0x004c)
	ld	(hl), #0x40
	ld	hl, #(_bloke + 0x004d)
	ld	(hl), #0x78
	ld	hl, #(_bloke + 0x004e)
	ld	(hl), #0x24
	ld	hl, #(_bloke + 0x004f)
	ld	(hl), #0x3c
	ld	hl, #(_bloke + 0x0050)
	ld	(hl), #0x18
	ld	hl, #(_bloke + 0x0051)
	ld	(hl), #0x3c
	ld	hl, #(_bloke + 0x0052)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0053)
	ld	(hl), #0x42
	ld	hl, #(_bloke + 0x0054)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0055)
	ld	(hl), #0x42
	ld	hl, #(_bloke + 0x0056)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0057)
	ld	(hl), #0x42
	ld	hl, #(_bloke + 0x0058)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0059)
	ld	(hl), #0x42
	ld	hl, #(_bloke + 0x005a)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x005b)
	ld	(hl), #0x63
	ld	hl, #(_bloke + 0x005c)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x005d)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x005e)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x005f)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0060)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0061)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0062)
	ld	(hl), #0x38
	ld	hl, #(_bloke + 0x0063)
	ld	(hl), #0x38
	ld	hl, #(_bloke + 0x0064)
	ld	(hl), #0x7c
	ld	hl, #(_bloke + 0x0065)
	ld	(hl), #0x44
	ld	hl, #(_bloke + 0x0066)
	ld	(hl), #0x7f
	ld	hl, #(_bloke + 0x0067)
	ld	(hl), #0x7f
	ld	hl, #(_bloke + 0x0068)
	ld	(hl), #0x44
	ld	hl, #(_bloke + 0x0069)
	ld	(hl), #0x74
	ld	hl, #(_bloke + 0x006a)
	ld	(hl), #0x46
	ld	hl, #(_bloke + 0x006b)
	ld	(hl), #0x7c
	ld	hl, #(_bloke + 0x006c)
	ld	(hl), #0x40
	ld	hl, #(_bloke + 0x006d)
	ld	(hl), #0x78
	ld	hl, #(_bloke + 0x006e)
	ld	(hl), #0x24
	ld	hl, #(_bloke + 0x006f)
	ld	(hl), #0x3c
	ld	hl, #(_bloke + 0x0070)
	ld	(hl), #0x18
	ld	hl, #(_bloke + 0x0071)
	ld	(hl), #0x3c
	ld	hl, #(_bloke + 0x0072)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0073)
	ld	(hl), #0x44
	ld	hl, #(_bloke + 0x0074)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0075)
	ld	(hl), #0x44
	ld	hl, #(_bloke + 0x0076)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0077)
	ld	(hl), #0x44
	ld	hl, #(_bloke + 0x0078)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x0079)
	ld	(hl), #0x64
	ld	hl, #(_bloke + 0x007a)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x007b)
	ld	(hl), #0x06
	ld	hl, #(_bloke + 0x007c)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x007d)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x007e)
	ld	(hl), #0x00
	ld	hl, #(_bloke + 0x007f)
	ld	(hl), #0x00
	C$main.c$26$1_0$107	= .
	.globl	C$main.c$26$1_0$107
;main.c:26: INT8 gravity = -2;
	ld	hl, #_gravity
	ld	(hl), #0xfe
	C$main.c$28$1_0$107	= .
	.globl	C$main.c$28$1_0$107
;main.c:28: UINT8 floorYPosition = 100;
	ld	hl, #_floorYPosition
	ld	(hl), #0x64
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$performatdelay$0$0	= .
	.globl	G$performatdelay$0$0
	C$main.c$30$0_0$91	= .
	.globl	C$main.c$30$0_0$91
;main.c:30: void performatdelay(UINT8 numloops)
;	---------------------------------
; Function performatdelay
; ---------------------------------
_performatdelay::
	C$main.c$34$2_0$91	= .
	.globl	C$main.c$34$2_0$91
;main.c:34: for (i = 0; i < numloops; i++)
	ld	c, #0x00
00103$:
	ld	a, c
	ldhl	sp,	#2
	sub	a, (hl)
	ret	NC
	C$main.c$36$3_0$92	= .
	.globl	C$main.c$36$3_0$92
;main.c:36: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$34$2_0$91	= .
	.globl	C$main.c$34$2_0$91
;main.c:34: for (i = 0; i < numloops; i++)
	inc	c
	C$main.c$38$2_0$91	= .
	.globl	C$main.c$38$2_0$91
;main.c:38: }
	C$main.c$38$2_0$91	= .
	.globl	C$main.c$38$2_0$91
	XG$performatdelay$0$0	= .
	.globl	XG$performatdelay$0$0
	jr	00103$
	G$wouldhitsurface$0$0	= .
	.globl	G$wouldhitsurface$0$0
	C$main.c$40$2_0$94	= .
	.globl	C$main.c$40$2_0$94
;main.c:40: INT8 wouldhitsurface(UINT8 projectedYPosition)
;	---------------------------------
; Function wouldhitsurface
; ---------------------------------
_wouldhitsurface::
	C$main.c$42$1_0$94	= .
	.globl	C$main.c$42$1_0$94
;main.c:42: if (projectedYPosition >= floorYPosition) {
	ldhl	sp,	#2
	ld	a, (hl)
	ld	hl, #_floorYPosition
	sub	a, (hl)
	jr	C, 00102$
	C$main.c$43$2_0$95	= .
	.globl	C$main.c$43$2_0$95
;main.c:43: return floorYPosition;
	ld	e, (hl)
	ret
00102$:
	C$main.c$46$1_0$94	= .
	.globl	C$main.c$46$1_0$94
;main.c:46: return -1;
	ld	e, #0xff
	C$main.c$47$1_0$94	= .
	.globl	C$main.c$47$1_0$94
;main.c:47: }
	C$main.c$47$1_0$94	= .
	.globl	C$main.c$47$1_0$94
	XG$wouldhitsurface$0$0	= .
	.globl	XG$wouldhitsurface$0$0
	ret
	G$jump$0$0	= .
	.globl	G$jump$0$0
	C$main.c$49$1_0$97	= .
	.globl	C$main.c$49$1_0$97
;main.c:49: void jump(UINT8 spriteid, UINT8 spritelocation[2])
;	---------------------------------
; Function jump
; ---------------------------------
_jump::
	add	sp, #-7
	C$main.c$53$1_0$97	= .
	.globl	C$main.c$53$1_0$97
;main.c:53: if (jumping == 0)
	ld	hl, #_jumping
	ld	a, (hl)
	or	a, a
	jr	NZ, 00102$
	C$main.c$55$2_0$98	= .
	.globl	C$main.c$55$2_0$98
;main.c:55: jumping = 1;
	ld	(hl), #0x01
	C$main.c$56$2_0$98	= .
	.globl	C$main.c$56$2_0$98
;main.c:56: currentspeedY = 10;
	ld	hl, #_currentspeedY
	ld	(hl), #0x0a
00102$:
	C$main.c$59$1_0$97	= .
	.globl	C$main.c$59$1_0$97
;main.c:59: currentspeedY = currentspeedY + gravity;
	ld	a, (#_currentspeedY)
	ld	hl, #_gravity
	add	a, (hl)
	ld	(#_currentspeedY),a
	C$main.c$61$1_0$97	= .
	.globl	C$main.c$61$1_0$97
;main.c:61: spritelocation[1] = spritelocation[1] - currentspeedY;
;c
	ldhl	sp,#10
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	a, (de)
	ld	hl, #_currentspeedY
	sub	a, (hl)
	ld	b, a
	pop	hl
	push	hl
	ld	(hl), b
	C$main.c$63$1_0$97	= .
	.globl	C$main.c$63$1_0$97
;main.c:63: possiblesurfaceY = wouldhitsurface(spritelocation[1]);
	push	bc
	inc	sp
	call	_wouldhitsurface
	inc	sp
	ldhl	sp,	#6
	ld	(hl), e
	C$main.c$68$1_0$97	= .
	.globl	C$main.c$68$1_0$97
;main.c:68: move_sprite(spriteid, spritelocation[0], possiblesurfaceY);
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#2
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#4
	C$main.c$65$1_0$97	= .
	.globl	C$main.c$65$1_0$97
;main.c:65: if (possiblesurfaceY > -1)
	ld	(hl+), a
	inc	hl
	ld	e, (hl)
	ld	a,#0xff
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00120$
	bit	7, d
	jr	NZ, 00121$
	cp	a, a
	jr	00121$
00120$:
	bit	7, d
	jr	Z, 00121$
	scf
00121$:
	jr	NC, 00104$
	C$main.c$67$2_0$99	= .
	.globl	C$main.c$67$2_0$99
;main.c:67: jumping = 0;
	ld	hl, #_jumping
	ld	(hl), #0x00
;main.c:68: move_sprite(spriteid, spritelocation[0], possiblesurfaceY);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
;c:/gbdk2020/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	de, #_shadow_OAM+0
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	e, l
	ld	d, h
;c:/gbdk2020/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#6
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
	C$main.c$68$1_0$97	= .
	.globl	C$main.c$68$1_0$97
;main.c:68: move_sprite(spriteid, spritelocation[0], possiblesurfaceY);
	jr	00108$
00104$:
;main.c:72: move_sprite(spriteid, spritelocation[0], spritelocation[1]);
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#5
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#6
;c:/gbdk2020/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	(hl-), a
	dec	hl
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	c, l
	ld	b, h
;c:/gbdk2020/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#5
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$main.c$72$1_0$97	= .
	.globl	C$main.c$72$1_0$97
;main.c:72: move_sprite(spriteid, spritelocation[0], spritelocation[1]);
00108$:
	C$main.c$74$1_0$97	= .
	.globl	C$main.c$74$1_0$97
;main.c:74: }
	add	sp, #7
	C$main.c$74$1_0$97	= .
	.globl	C$main.c$74$1_0$97
	XG$jump$0$0	= .
	.globl	XG$jump$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$76$1_0$107	= .
	.globl	C$main.c$76$1_0$107
;main.c:76: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$78$1_0$107	= .
	.globl	C$main.c$78$1_0$107
;main.c:78: set_sprite_data(0, 8, bloke);
	ld	hl, #_bloke
	push	hl
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk2020/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
	C$main.c$81$1_0$107	= .
	.globl	C$main.c$81$1_0$107
;main.c:81: playerlocation[0] = 10;
	ld	hl, #_playerlocation
	ld	(hl), #0x0a
	C$main.c$82$1_0$107	= .
	.globl	C$main.c$82$1_0$107
;main.c:82: playerlocation[1] = floorYPosition;
	ld	de, #(_playerlocation + 0x0001)
	ld	a, (#_floorYPosition)
	ld	(de), a
;main.c:84: move_sprite(0, playerlocation[0], playerlocation[1]);
	ld	hl, #(_playerlocation + 0x0001)
	ld	b, (hl)
	ld	hl, #_playerlocation
	ld	c, (hl)
;c:/gbdk2020/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:/gbdk2020/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
	C$main.c$85$1_0$107	= .
	.globl	C$main.c$85$1_0$107
;main.c:85: jumping = 0;
	ld	hl, #_jumping
	ld	(hl), #0x00
	C$main.c$87$1_0$107	= .
	.globl	C$main.c$87$1_0$107
;main.c:87: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
	C$main.c$88$1_0$107	= .
	.globl	C$main.c$88$1_0$107
;main.c:88: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
	C$main.c$90$1_0$107	= .
	.globl	C$main.c$90$1_0$107
;main.c:90: while(1)
00109$:
	C$main.c$92$2_0$108	= .
	.globl	C$main.c$92$2_0$108
;main.c:92: if ((joypad() & J_A) || jumping == 1)
	call	_joypad
	bit	4, e
	jr	NZ, 00101$
	ld	a, (#_jumping)
	dec	a
	jr	NZ, 00102$
00101$:
	C$main.c$94$3_0$109	= .
	.globl	C$main.c$94$3_0$109
;main.c:94: jump(0, playerlocation);
	ld	hl, #_playerlocation
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_jump
	add	sp, #3
00102$:
	C$main.c$97$2_0$108	= .
	.globl	C$main.c$97$2_0$108
;main.c:97: if (joypad() & J_LEFT)
	call	_joypad
	bit	1, e
	jr	Z, 00105$
	C$main.c$99$3_0$110	= .
	.globl	C$main.c$99$3_0$110
;main.c:99: playerlocation[0] = playerlocation[0] - 2;
	ld	a, (#_playerlocation + 0)
	dec	a
	dec	a
	ld	(#_playerlocation),a
;main.c:100: move_sprite(0, playerlocation[0], playerlocation[1]);
	ld	hl, #(_playerlocation + 0x0001)
	ld	b, (hl)
	ld	c, a
;c:/gbdk2020/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:/gbdk2020/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
	C$main.c$100$2_0$108	= .
	.globl	C$main.c$100$2_0$108
;main.c:100: move_sprite(0, playerlocation[0], playerlocation[1]);
00105$:
	C$main.c$103$2_0$108	= .
	.globl	C$main.c$103$2_0$108
;main.c:103: if (joypad() & J_RIGHT)
	call	_joypad
	ld	a, e
	rrca
	jr	NC, 00107$
	C$main.c$105$3_0$111	= .
	.globl	C$main.c$105$3_0$111
;main.c:105: playerlocation[0] = playerlocation[0] + 2;
	ld	a, (#_playerlocation + 0)
	add	a, #0x02
	ld	(#_playerlocation),a
;main.c:106: move_sprite(0, playerlocation[0], playerlocation[1]);
	ld	hl, #(_playerlocation + 0x0001)
	ld	c, (hl)
	ld	b, a
;c:/gbdk2020/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:/gbdk2020/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$main.c$106$2_0$108	= .
	.globl	C$main.c$106$2_0$108
;main.c:106: move_sprite(0, playerlocation[0], playerlocation[1]);
00107$:
	C$main.c$109$2_0$108	= .
	.globl	C$main.c$109$2_0$108
;main.c:109: performatdelay(5);
	ld	a, #0x05
	push	af
	inc	sp
	call	_performatdelay
	inc	sp
	C$main.c$111$1_0$107	= .
	.globl	C$main.c$111$1_0$107
;main.c:111: }
	C$main.c$111$1_0$107	= .
	.globl	C$main.c$111$1_0$107
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00109$
	.area _CODE
	.area _CABS (ABS)

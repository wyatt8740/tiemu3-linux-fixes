/* Hey EMACS -*- linux-c -*- */
/* $Id: romcalls.c 864 2005-02-22 09:54:05Z roms $ */

/*  TiEmu - an TI emulator
 *
 *  Copyright (c) 2000, Thomas Corvazier, Romain Lievin
 *  Copyright (c) 2001-2002, Romain Lievin, Julien Blache
 *  Copyright (c) 2003-2004, Romain Li�vin
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 */

/*
    Memory access (take care of little/big endian issues)
*/

#include <stdint.h>
#include <glib.h>

#include "timem.h"
#include "mem.h"

/* General functions (not related to TI memory) */

uint16_t rd_word(uint8_t *p)
{
	uint16_t *p16 = (uint16_t *)p;
	return GUINT16_FROM_BE(*p16);
}

uint32_t rd_long(uint8_t *p)
{
	uint32_t *p32 = (uint32_t *)p;
	return GUINT32_FROM_BE(*p32);
}

void wr_word(uint8_t *p, uint16_t d)
{
	uint16_t *p16 = (uint16_t *)p;
	*p16 = GUINT16_TO_BE(d);
}

void wr_long(uint8_t *p, uint32_t d)
{
	uint32_t *p32 = (uint32_t *)p;
	*p32 = GUINT32_TO_BE(d);
}

/* Memory access functions (TI memory) */

uint8_t mem_rd_byte(uint32_t a)
{
	return *(hw_get_real_address(a));
}

uint16_t mem_rd_word(uint32_t a)
{
	return rd_word(hw_get_real_address(a));
}

uint32_t mem_rd_long(uint32_t a)
{
	return rd_long(hw_get_real_address(a));
}

void mem_wr_byte(uint32_t a, uint8_t  d)
{
	*(hw_get_real_address(a)) = d;
}

void mem_wr_word(uint32_t a, uint16_t d)
{
	wr_word(hw_get_real_address(a), d);
}

void mem_wr_long(uint32_t a, uint32_t d)
{
	wr_long(hw_get_real_address(a), d);
}
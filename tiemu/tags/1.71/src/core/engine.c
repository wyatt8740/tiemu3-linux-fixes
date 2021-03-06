/* Hey EMACS -*- linux-c -*- */
/* $Id$ */

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
    Running engine (threaded).
*/

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include <glib.h>
#include <sys/timeb.h>
#include <sys/types.h>
#include <stdlib.h>
#include <string.h>
#ifndef __WIN32__
#include <unistd.h> // usleep
#else
#include <windows.h>
#endif

#include "intl.h"
#include "engine.h"
#include "ti68k_int.h"

#if defined(__LINUX__)
#define sleep(x)	usleep(1000 * (x))
#elif defined(__WIN32__)
#define sleep(x)	Sleep((x))
#endif

/* 
   The TI92/89 should approximately execute NB_INSTRUCTIONS_PER_LOOP in 
   TIME_LIMIT milliseconds (1.500.000 instructions/s).
   If you think this values are a bit too big, you can slow down 
   the emulator by changing them 
*/
#define NB_INSTRUCTIONS_PER_LOOP 50000	// 50000
#define TIME_LIMIT               30	    // 30

static int cpu_instr = NB_INSTRUCTIONS_PER_LOOP;

G_LOCK_DEFINE(running);
static volatile int running = 0;

G_LOCK_DEFINE(debugger);
volatile int debugger = 0;

// run as a separate thread
gpointer ti68k_engine(gpointer data)
{
	struct timeb tCurrentTime;
	struct timeb tLastTime;
	unsigned long int iCurrentTime;
	unsigned long int iLastTime; 
	gint res = 0;

    if(params.cpu_rate != -1)
        cpu_instr = params.cpu_rate;

	while (1) 
	{
		// Check engine status
		G_LOCK(running);
		if (!running) {
			G_UNLOCK(running);
			g_thread_yield ();			
			continue;
		}
		G_UNLOCK(running);
		
		ftime(&tLastTime);
      
		// Run emulator core
		res = ti68k_debug_do_instructions(NB_INSTRUCTIONS_PER_LOOP);
		if(res) {  
			// a bkpt has been encountered
			G_LOCK(running);
            running = 0;
			G_UNLOCK(running);

            debugger = res;
		} else { 
			// normal execution
			ftime(&tCurrentTime);
			
			iLastTime    = 1000 * tLastTime.time + tLastTime.millitm;
			iCurrentTime = 1000 * tCurrentTime.time + tCurrentTime.millitm;
			
			if((iCurrentTime - iLastTime) < TIME_LIMIT)
                //if((options.params)->restrict)
				    sleep((TIME_LIMIT - iCurrentTime + iLastTime));
		}
	}

	return GINT_TO_POINTER(0);
}

int ti68k_engine_is_halted() 
{
	return !running;
}

void ti68k_engine_halt(void) 
{
	G_LOCK(running);
	running = 0;
	G_UNLOCK(running);
}

void ti68k_engine_unhalt(void) 
{
	G_LOCK(running);
	running = 1;
	G_UNLOCK(running);
}

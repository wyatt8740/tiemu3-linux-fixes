/* Hey EMACS -*- linux-c -*- */
/* $Id: dbg_cause.c 446 2004-06-13 09:11:07Z roms $ */

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

#ifdef HAVE_CONFIG_H
#  include <config.h>
#endif

#include <gtk/gtk.h>
#include <glade/glade.h>
#include <gdk/gdkkeysyms.h>

#include "intl.h"
#include "paths.h"
#include "skinops.h"
#include "keydefs.h"
#include "support.h"
#include "ti68k_int.h"
#include "popup.h"
#include "screenshot.h"
#include "romversion.h"
#include "fs_misc.h"
#include "calc.h"
#include "kbd_mapper.h"

Pc2TiKey*       kbd_keymap = keymap;
const char*     skn_keymap;
static int      alpha = 0;

static int hwkey_to_tikey(guint16 hardware_keycode, int action)
{
    int i;

    printf("pckey = %4x (%s)\n", hardware_keycode, keymap_value_to_string(pckeys, hardware_keycode));

    for(i = 0; i < KEYMAP_MAX; i++)
    {
        int ti_key, modifier;

        if(kbd_keymap[i].pc_key == hardware_keycode)
        {
            ti_key = kbd_keymap[i].ti_key;
            modifier = kbd_keymap[i].modifier;
#if 0
            printf("pckey = %4x (%s), tikey = %2x (%s), modifier = %2x (%s)\n", 
                hardware_keycode, keymap_value_to_string(pckeys, hardware_keycode),
                ti_key, keymap_value_to_string(tikeys, ti_key),
                modifier, keymap_value_to_string(tikeys, modifier));
#endif
            if(modifier != -1)
                ti68k_kbd_set_key(modifier, action);
            ti68k_kbd_set_key(ti_key, action);

            return !0;
        }
    }

    return 0;
}

/* 
   Converts the mouse position into a TIKEY_xx code
   Checks if the mouse cursor is within a rectangle defined in 
   the key_pos array
*/
static int pos_to_key(int x, int y) 
{
  	int i;
  	RECT *kp = skin_infos.keys_pos;
    int nkeys = sizeof(skin_infos.keys_pos) / sizeof(RECT);
  
  	for(i = 0; i < nkeys; i++)
    {
      	if((x >= kp[i].left) && (x < kp[i].right) && 
	 	   (y >= kp[i].top) && (y < kp[i].bottom)) 
		
		return skn_keymap[i];
    }
  
  	return -1;
}

GLADE_CB gboolean
on_calc_wnd_button_press_event     (GtkWidget       *widget,
                                        GdkEventButton  *event,
                                        gpointer         user_data)
{
    if(event->type != GDK_BUTTON_PRESS)
        return FALSE;

	if (event->button == 3) 
    {
        GdkEventButton *bevent;
        GtkWidget *menu;

		bevent = (GdkEventButton *) (event);

        ti68k_engine_stop();

        menu = display_popup_menu();
		gtk_menu_popup(GTK_MENU(menu),
				   NULL, NULL, NULL, NULL,
				   bevent->button, bevent->time);
	    gtk_widget_show(menu);

		return TRUE;
	}

    if(event->button == 1)
    {
        int key = pos_to_key((int)event->x, (int)event->y);
        if(key < 0)
            return FALSE;

        ti68k_kbd_set_key(key, 1);
        return TRUE;
    }

	return FALSE;
}

GLADE_CB gboolean
on_calc_wnd_button_release_event     (GtkWidget       *widget,
                                        GdkEventButton  *event,
                                        gpointer         user_data)
{
    if(event->type != GDK_BUTTON_RELEASE)
        return FALSE;

    if(event->button == 1)
    {
        int key = pos_to_key((int)event->x, (int)event->y);
        if(key < 0)
            return FALSE;
	    
      	ti68k_kbd_set_key(key, 0);
        return TRUE;
    }

    return FALSE;
}


GLADE_CB gboolean
on_calc_wnd_key_press_event        (GtkWidget       *widget,
                                        GdkEventKey     *event,
                                        gpointer         user_data)
{
    if(event->hardware_keycode == 0x0014)
        event->keyval = GDK_Caps_Lock;

    if(event->hardware_keycode == 0x0013)
	{
        hid_screenshot(NULL);
        return TRUE;
    } 
    else if(event->keyval == GDK_F10)
    {
        display_tifile_dbox();
        return TRUE;
    }
    else if(event->keyval == GDK_F11)
    {
        if(!dbg_on)
            ti68k_debug_break();
        return TRUE;
    }
    else if(event->keyval == GDK_F12)
    {
        display_romversion_dbox(FALSE);
        return TRUE;
    }
    else
        return hwkey_to_tikey(event->hardware_keycode, !0) ? TRUE : FALSE;

    return FALSE;
}


GLADE_CB gboolean
on_calc_wnd_key_release_event      (GtkWidget       *widget,
                                        GdkEventKey     *event,
                                        gpointer         user_data)
{
    return hwkey_to_tikey(event->hardware_keycode, 0) ? TRUE : FALSE;
}


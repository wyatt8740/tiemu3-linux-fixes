/* Hey EMACS -*- linux-c -*- */
/* $Id: pckeys.h 1455 2005-05-31 18:38:03Z roms $ */

/*  TiEmu - a TI emulator
 *  Copyright (c) 2000-2001, Thomas Corvazier, Romain Lievin
 *  Copyright (c) 2001-2003, Romain Lievin
 *  Copyright (c) 2003, Julien Blache
 *  Copyright (c) 2004, Romain Li�vin
 *  Copyright (c) 2005, Romain Li�vin
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
 *  Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston, MA 02110-1301, USA.
 */

#ifndef __PCKEYS_H__
#define __PCKEYS_H__

#if defined(__WIN32__)
// List taken from <http://math.msu.su/~vfnik/WinApi/other/virtualkeycodes.html>

#define PCKEY_LBUTTON 0x1
#define PCKEY_RBUTTON 0x2
#define PCKEY_CANCEL 0x3
#define PCKEY_MBUTTON 0x4
#define PCKEY_BACK 0x8
#define PCKEY_TAB 0x9
#define PCKEY_CLEAR 0xC
#define PCKEY_RETURN 0xD
#define PCKEY_SHIFT 0x10
#define PCKEY_CONTROL 0x11
#define PCKEY_MENU 0x12
#define PCKEY_PAUSE 0x13
#define PCKEY_CAPITAL 0x14
#define PCKEY_ESCAPE 0x1B
#define PCKEY_SPACE 0x20
#define PCKEY_PRIOR 0x21
#define PCKEY_NEXT 0x22
#define PCKEY_END 0x23
#define PCKEY_HOME 0x24
#define PCKEY_LEFT 0x25
#define PCKEY_UP 0x26
#define PCKEY_RIGHT 0x27
#define PCKEY_DOWN 0x28
#define PCKEY_SELECT 0x29
#define PCKEY_PRINT 0x2A
#define PCKEY_EXECUTE 0x2B
#define PCKEY_SNAPSHOT 0x2C
#define PCKEY_INSERT 0x2D
#define PCKEY_DELETE 0x2E
#define PCKEY_HELP 0x2F
#define PCKEY_0 0x30
#define PCKEY_1 0x31
#define PCKEY_2 0x32
#define PCKEY_3 0x33
#define PCKEY_4 0x34
#define PCKEY_5 0x35
#define PCKEY_6 0x36
#define PCKEY_7 0x37
#define PCKEY_8 0x38
#define PCKEY_9 0x39
#define PCKEY_A 0x41
#define PCKEY_B 0x42
#define PCKEY_C 0x43
#define PCKEY_D 0x44
#define PCKEY_E 0x45
#define PCKEY_F 0x46
#define PCKEY_G 0x47
#define PCKEY_H 0x48
#define PCKEY_I 0x49
#define PCKEY_J 0x4A
#define PCKEY_K 0x4B
#define PCKEY_L 0x4C
#define PCKEY_M 0x4D
#define PCKEY_N 0x4E
#define PCKEY_O 0x4F
#define PCKEY_P 0x50
#define PCKEY_Q 0x51
#define PCKEY_R 0x52
#define PCKEY_S 0x53
#define PCKEY_T 0x54
#define PCKEY_U 0x55
#define PCKEY_V 0x56
#define PCKEY_W 0x57
#define PCKEY_X 0x58
#define PCKEY_Y 0x59
#define PCKEY_Z 0x5A
#define PCKEY_STARTKEY 0x5B
#define PCKEY_CONTEXTKEY 0x5D
#define PCKEY_NUMPAD0 0x60
#define PCKEY_NUMPAD1 0x61
#define PCKEY_NUMPAD2 0x62
#define PCKEY_NUMPAD3 0x63
#define PCKEY_NUMPAD4 0x64
#define PCKEY_NUMPAD5 0x65
#define PCKEY_NUMPAD6 0x66
#define PCKEY_NUMPAD7 0x67
#define PCKEY_NUMPAD8 0x68
#define PCKEY_NUMPAD9 0x69
#define PCKEY_MULTIPLY 0x6A
#define PCKEY_ADD 0x6B
#define PCKEY_SEPARATOR 0x6C
#define PCKEY_SUBTRACT 0x6D
#define PCKEY_DECIMAL 0x6E
#define PCKEY_DIVIDE 0x6F
#define PCKEY_F1 0x70
#define PCKEY_F2 0x71
#define PCKEY_F3 0x72
#define PCKEY_F4 0x73
#define PCKEY_F5 0x74
#define PCKEY_F6 0x75
#define PCKEY_F7 0x76
#define PCKEY_F8 0x77
#define PCKEY_F9 0x78
#define PCKEY_F10 0x79
#define PCKEY_F11 0x7A
#define PCKEY_F12 0x7B
#define PCKEY_F13 0x7C
#define PCKEY_F14 0x7D
#define PCKEY_F15 0x7E
#define PCKEY_F16 0x7F
#define PCKEY_F17 0x80
#define PCKEY_F18 0x81
#define PCKEY_F19 0x82
#define PCKEY_F20 0x83
#define PCKEY_F21 0x84
#define PCKEY_F22 0x85
#define PCKEY_F23 0x86
#define PCKEY_F24 0x87
#define PCKEY_NUMLOCK 0x90
#define PCKEY_OEM_SCROLL 0x91
#define PCKEY_OEM_1 0xBA
#define PCKEY_OEM_PLUS 0xBB
#define PCKEY_OEM_COMMA 0xBC
#define PCKEY_OEM_MINUS 0xBD
#define PCKEY_OEM_PERIOD 0xBE
#define PCKEY_OEM_2 0xBF
#define PCKEY_OEM_3 0xC0
#define PCKEY_OEM_4 0xDB
#define PCKEY_OEM_5 0xDC
#define PCKEY_OEM_6 0xDD
#define PCKEY_OEM_7 0xDE
#define PCKEY_OEM_8 0xDF
#define PCKEY_ICO_F17 0xE0
#define PCKEY_ICO_F18 0xE1
#define PCKEY_OEM102 0xE2
#define PCKEY_ICO_HELP 0xE3
#define PCKEY_ICO_00 0xE4
#define PCKEY_ICO_CLEAR 0xE6
#define PCKEY_OEM_RESET 0xE9
#define PCKEY_OEM_JUMP 0xEA
#define PCKEY_OEM_PA1 0xEB
#define PCKEY_OEM_PA2 0xEC
#define PCKEY_OEM_PA3 0xED
#define PCKEY_OEM_WSCTRL 0xEE
#define PCKEY_OEM_CUSEL 0xEF
#define PCKEY_OEM_ATTN 0xF0
#define PCKEY_OEM_FINNISH 0xF1
#define PCKEY_OEM_COPY 0xF2
#define PCKEY_OEM_AUTO 0xF3
#define PCKEY_OEM_ENLW 0xF4
#define PCKEY_OEM_BACKTAB 0xF5
#define PCKEY_ATTN 0xF6
#define PCKEY_CRSEL 0xF7
#define PCKEY_EXSEL 0xF8
#define PCKEY_EREOF 0xF9
#define PCKEY_PLAY 0xFA
#define PCKEY_ZOOM 0xFB
#define PCKEY_NONAME 0xFC
#define PCKEY_PA1 0xFD
#define PCKEY_OEM_CLEAR 0xFE

#elif defined(__LINUX__)
// List manually written
#define PCKEY_LBUTTON -2 //Don't use -1, because that's used as the end-of-list marker!
#define PCKEY_RBUTTON -2
#define PCKEY_MBUTTON -2
#define PCKEY_CANCEL -2

#define PCKEY_BACK 0x16
#define PCKEY_TAB 0x17
#define PCKEY_CLEAR 0xff
#define PCKEY_RETURN 0x24
#define PCKEY_SHIFT 0x32
#define PCKEY_CONTROL 0x25
#define PCKEY_MENU 0x40
#define PCKEY_PAUSE 0x6E
#define PCKEY_CAPITAL 0x42
#define PCKEY_ESCAPE 0x09
#define PCKEY_SPACE 0x41
#define PCKEY_PRIOR 0x63
#define PCKEY_NEXT 0x69
#define PCKEY_END 0x67
#define PCKEY_HOME 0x61
#define PCKEY_LEFT 0x64
#define PCKEY_UP 0x62
#define PCKEY_RIGHT 0x66
#define PCKEY_DOWN 0x68
#define PCKEY_SELECT 0x29
#define PCKEY_PRINT 0x6F
#define PCKEY_EXECUTE 0xff
#define PCKEY_SNAPSHOT 0x6F
#define PCKEY_INSERT 0x6A
#define PCKEY_DELETE 0x6B
#define PCKEY_HELP 0xff
#define PCKEY_0 0x13
#define PCKEY_1 0x0A
#define PCKEY_2 0x0B
#define PCKEY_3 0x0C
#define PCKEY_4 0x0D
#define PCKEY_5 0x0E
#define PCKEY_6 0x0F
#define PCKEY_7 0x10
#define PCKEY_8 0x11
#define PCKEY_9 0x12
#define PCKEY_A 0x26
#define PCKEY_B 0x38
#define PCKEY_C 0x36
#define PCKEY_D 0x28
#define PCKEY_E 0x1A
#define PCKEY_F 0x29
#define PCKEY_G 0x2A
#define PCKEY_H 0x2B
#define PCKEY_I 0x1F
#define PCKEY_J 0x2C
#define PCKEY_K 0x2D
#define PCKEY_L 0x2E
#define PCKEY_M 0x3A
#define PCKEY_N 0x39
#define PCKEY_O 0x20
#define PCKEY_P 0x21
#define PCKEY_Q 0x18
#define PCKEY_R 0x1B
#define PCKEY_S 0x27
#define PCKEY_T 0x1C
#define PCKEY_U 0x1E
#define PCKEY_V 0x37
#define PCKEY_W 0x19
#define PCKEY_X 0x35
#define PCKEY_Y 0x1D
#define PCKEY_Z 0x34
#define PCKEY_STARTKEY 0x5B
#define PCKEY_CONTEXTKEY 0x5D
#define PCKEY_NUMPAD0 0x5A
#define PCKEY_NUMPAD1 0x57
#define PCKEY_NUMPAD2 0x58
#define PCKEY_NUMPAD3 0x59
#define PCKEY_NUMPAD4 0x53
#define PCKEY_NUMPAD5 0x54
#define PCKEY_NUMPAD6 0x55
#define PCKEY_NUMPAD7 0x4F
#define PCKEY_NUMPAD8 0x50
#define PCKEY_NUMPAD9 0x51
#define PCKEY_MULTIPLY 0x3F
#define PCKEY_ADD 0x56
#define PCKEY_SEPARATOR 0x6C
#define PCKEY_SUBTRACT 0x52
#define PCKEY_DECIMAL 0x5B
#define PCKEY_DIVIDE 0x70
#define PCKEY_F1 0x43
#define PCKEY_F2 0x44
#define PCKEY_F3 0x45
#define PCKEY_F4 0x46
#define PCKEY_F5 0x47
#define PCKEY_F6 0x48
#define PCKEY_F7 0x49
#define PCKEY_F8 0x4A
#define PCKEY_F9 0x4B
#define PCKEY_F10 0x4C
#define PCKEY_F11 0x5F
#define PCKEY_F12 0x60
#define PCKEY_F13 0xff
#define PCKEY_F14 0xff
#define PCKEY_F15 0xff
#define PCKEY_F16 0xff
#define PCKEY_F17 0xff
#define PCKEY_F18 0xff
#define PCKEY_F19 0xff
#define PCKEY_F20 0xff
#define PCKEY_F21 0xff
#define PCKEY_F22 0xff
#define PCKEY_F23 0xff
#define PCKEY_F24 0xff
#define PCKEY_NUMLOCK 0x4D
#define PCKEY_OEM_SCROLL 0x4E
#define PCKEY_OEM_1 0x2F
#define PCKEY_OEM_PLUS 0x15
#define PCKEY_OEM_COMMA 0x3B
#define PCKEY_OEM_MINUS 0x14
#define PCKEY_OEM_PERIOD 0x3C
#define PCKEY_OEM_2 0x3D
#define PCKEY_OEM_3 0x31
#define PCKEY_OEM_4 0x22
#define PCKEY_OEM_5 0x33
#define PCKEY_OEM_6 0x23
#define PCKEY_OEM_7 0x30
#define PCKEY_OEM_8 0xff
#define PCKEY_ICO_F17 0xff
#define PCKEY_ICO_F18 0xff
#define PCKEY_OEM102 0x5E
#define PCKEY_ICO_HELP 0xff
#define PCKEY_ICO_00 0xff
#define PCKEY_ICO_CLEAR 0xff
#define PCKEY_OEM_RESET 0xff
#define PCKEY_OEM_JUMP 0xff
#define PCKEY_OEM_PA1 0xff
#define PCKEY_OEM_PA2 0xff
#define PCKEY_OEM_PA3 0xff
#define PCKEY_OEM_WSCTRL 0xff
#define PCKEY_OEM_CUSEL 0xff
#define PCKEY_OEM_ATTN 0xFf
#define PCKEY_OEM_FINNISH 0xFf
#define PCKEY_OEM_COPY 0xFf
#define PCKEY_OEM_AUTO 0xFf
#define PCKEY_OEM_ENLW 0xFf
#define PCKEY_OEM_BACKTAB 0xff
#define PCKEY_ATTN 0xFf
#define PCKEY_CRSEL 0xFf
#define PCKEY_EXSEL 0xFf
#define PCKEY_EREOF 0xFf
#define PCKEY_PLAY 0xFf
#define PCKEY_ZOOM 0xFf
#define PCKEY_NONAME 0xFf
#define PCKEY_PA1 0xFf
#define PCKEY_OEM_CLEAR 0xFf

#elif defined(__MACOSX__)
// List manually written by Christian Walther
#define PCKEY_LBUTTON -2
#define PCKEY_RBUTTON -2
#define PCKEY_MBUTTON -2
#define PCKEY_CANCEL -2

#define PCKEY_BACK 59
#define PCKEY_TAB 56
#define PCKEY_CLEAR 0xff
#define PCKEY_RETURN 44
#define PCKEY_SHIFT 64
#define PCKEY_CONTROL 0x43
#define PCKEY_MENU 0x42 //option
#define PCKEY_PAUSE 121
#define PCKEY_CAPITAL 65
#define PCKEY_ESCAPE 61
#define PCKEY_SPACE 57
#define PCKEY_PRIOR 124
#define PCKEY_NEXT 129
#define PCKEY_END 127
#define PCKEY_HOME 123
#define PCKEY_LEFT 0x83
#define PCKEY_UP 0x86
#define PCKEY_RIGHT 0x84
#define PCKEY_DOWN 0x85
#define PCKEY_SELECT 0xff
#define PCKEY_PRINT 0xff
#define PCKEY_EXECUTE 0xff
#define PCKEY_SNAPSHOT 113
#define PCKEY_INSERT 122
#define PCKEY_DELETE 125
#define PCKEY_HELP 0xff
#define PCKEY_0 37
#define PCKEY_1 26
#define PCKEY_2 27
#define PCKEY_3 28
#define PCKEY_4 29
#define PCKEY_5 31
#define PCKEY_6 30
#define PCKEY_7 34
#define PCKEY_8 36
#define PCKEY_9 33
#define PCKEY_A 8
#define PCKEY_B 19
#define PCKEY_C 16
#define PCKEY_D 10
#define PCKEY_E 22
#define PCKEY_F 11
#define PCKEY_G 13
#define PCKEY_H 12
#define PCKEY_I 42
#define PCKEY_J 46
#define PCKEY_K 48
#define PCKEY_L 45
#define PCKEY_M 54
#define PCKEY_N 53
#define PCKEY_O 39
#define PCKEY_P 43
#define PCKEY_Q 20
#define PCKEY_R 23
#define PCKEY_S 9
#define PCKEY_T 25
#define PCKEY_U 40
#define PCKEY_V 17
#define PCKEY_W 21
#define PCKEY_X 15
#define PCKEY_Y 24
#define PCKEY_Z 14
#define PCKEY_STARTKEY 0x3f //command
#define PCKEY_CONTEXTKEY 0xff
#define PCKEY_NUMPAD0 90
#define PCKEY_NUMPAD1 91
#define PCKEY_NUMPAD2 92
#define PCKEY_NUMPAD3 93
#define PCKEY_NUMPAD4 94
#define PCKEY_NUMPAD5 95
#define PCKEY_NUMPAD6 96
#define PCKEY_NUMPAD7 97
#define PCKEY_NUMPAD8 99
#define PCKEY_NUMPAD9 100
#define PCKEY_MULTIPLY 75
#define PCKEY_ADD 77
#define PCKEY_SEPARATOR 0xff
#define PCKEY_SUBTRACT 86
#define PCKEY_DECIMAL 73
#define PCKEY_DIVIDE 83
#define PCKEY_F1 130
#define PCKEY_F2 128
#define PCKEY_F3 107
#define PCKEY_F4 126
#define PCKEY_F5 104
#define PCKEY_F6 105
#define PCKEY_F7 106
#define PCKEY_F8 108
#define PCKEY_F9 109
#define PCKEY_F10 117
#define PCKEY_F11 111
#define PCKEY_F12 119
#define PCKEY_F13 0xff
#define PCKEY_F14 0xff
#define PCKEY_F15 0xff
#define PCKEY_F16 0xff
#define PCKEY_F17 0xff
#define PCKEY_F18 0xff
#define PCKEY_F19 0xff
#define PCKEY_F20 0xff
#define PCKEY_F21 0xff
#define PCKEY_F22 0xff
#define PCKEY_F23 0xff
#define PCKEY_F24 0xff
#define PCKEY_NUMLOCK 79
#define PCKEY_OEM_SCROLL 115
#define PCKEY_OEM_1 0x31
#define PCKEY_OEM_PLUS 0x20
#define PCKEY_OEM_COMMA 51
#define PCKEY_OEM_MINUS 0x23
#define PCKEY_OEM_PERIOD 55
#define PCKEY_OEM_2 0x34
#define PCKEY_OEM_3 0x12
#define PCKEY_OEM_4 0x29
#define PCKEY_OEM_5 0x32
#define PCKEY_OEM_6 0x26
#define PCKEY_OEM_7 0x2f
#define PCKEY_OEM_8 0xff
#define PCKEY_ICO_F17 0xff
#define PCKEY_ICO_F18 0xff
#define PCKEY_OEM102 58
#define PCKEY_ICO_HELP 0xff
#define PCKEY_ICO_00 0xff
#define PCKEY_ICO_CLEAR 0xff
#define PCKEY_OEM_RESET 0xff
#define PCKEY_OEM_JUMP 0xff
#define PCKEY_OEM_PA1 0xff
#define PCKEY_OEM_PA2 0xff
#define PCKEY_OEM_PA3 0xff
#define PCKEY_OEM_WSCTRL 0xff
#define PCKEY_OEM_CUSEL 0xff
#define PCKEY_OEM_ATTN 0xFf
#define PCKEY_OEM_FINNISH 0xFf
#define PCKEY_OEM_COPY 0xFf
#define PCKEY_OEM_AUTO 0xFf
#define PCKEY_OEM_ENLW 0xFf
#define PCKEY_OEM_BACKTAB 0xff
#define PCKEY_ATTN 0xFf
#define PCKEY_CRSEL 0xFf
#define PCKEY_EXSEL 0xFf
#define PCKEY_EREOF 0xFf
#define PCKEY_PLAY 0xFf
#define PCKEY_ZOOM 0xFf
#define PCKEY_NONAME 0xFf
#define PCKEY_PA1 0xFf
#define PCKEY_OEM_CLEAR 0xFf
#endif

#endif

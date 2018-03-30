TIEmu
-----

Forked from [https://github.com/debrouxl/tiemu](https://github.com/debrouxl/tiemu).

Since the original program appears 100% unmaintained, as far as I can tell, and
since I still use it, AND since it has some very outdated hardcoded keycodes
that aren't compatible with modern (udev) linux systems due to the use of HAL
keycodes, I patched up all of the broken keycodes that I could find by using
`xev` to get the new key codes and then finding the incorrect mappings in
the `pckeys.h` header file.

As of this writing, the program now compiles and runs with no problems I've
found (yet).
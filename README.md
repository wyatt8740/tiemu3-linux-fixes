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

There are still some things that don't work right. My build is using the debian
configuration - that is:

```
./configure --prefix=/usr --libdir=/usr/lib/[architecture, such as x86_64-linux-gnu or powerpc-linux-gnu] --sysconfdir=/etc --without-kde --disable-gdb --enable-dbus
```

Documentation (TeX, GNU Info) may also fail to build, but this is not vital to
using the program and so I've not looked into it very much.

I have personally built it on x86_64 Intel and 32-bit PowerPC systems: a Lenovo
ThinkPad X201 running Debian Sid, and an Apple PowerBook G4 (1.33GHz, aluminum)
running Debian Sid. It is likely to run on other distros and architectures
(SPARC, MIPS, ARM, Motorola 68K), too, given enough RAM, but no guarantees.

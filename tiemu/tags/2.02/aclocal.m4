# generated automatically by aclocal 1.7.9 -*- Autoconf -*-

# Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001, 2002
# Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.


dnl    This file is part of the KDE libraries/packages
dnl    Copyright (C) 1997 Janos Farkas (chexum@shadow.banki.hu)
dnl              (C) 1997,98,99 Stephan Kulow (coolo@kde.org)

dnl    This file is free software; you can redistribute it and/or
dnl    modify it under the terms of the GNU Library General Public
dnl    License as published by the Free Software Foundation; either
dnl    version 2 of the License, or (at your option) any later version.

dnl    This library is distributed in the hope that it will be useful,
dnl    but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
dnl    Library General Public License for more details.

dnl    You should have received a copy of the GNU Library General Public License
dnl    along with this library; see the file COPYING.LIB.  If not, write to
dnl    the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
dnl    Boston, MA 02111-1307, USA.

dnl IMPORTANT NOTE:
dnl Please do not modify this file unless you expect your modifications to be
dnl carried into every other module in the repository. If you decide that you
dnl really want to modify it, contact coolo@kde.org mentioning that you have
dnl and that the modified file should be committed to every module.
dnl
dnl Single-module modifications are best placed in configure.in for kdelibs
dnl and kdebase or configure.in.in if present.

dnl ------------------------------------------------------------------------
dnl Forward compatibility macros (make autoconf 2.13 look like 2.50),
dnl thanks to Raja R Harinath.
dnl ------------------------------------------------------------------------
dnl
ifdef([_AC_PATH_X_XMKMF],[],
   [AC_DEFUN([_AC_PATH_X_XMKMF],[AC_PATH_X_XMKMF])])
ifdef([AC_OUTPUT_SUBDIRS],[],
   [AC_DEFUN([AC_OUTPUT_SUBDIRS],[subdirs=$1; _AC_OUTPUT_SUBDIRS])])

# KDE_PATH_X_DIRECT
dnl Internal subroutine of AC_PATH_X.
dnl Set ac_x_includes and/or ac_x_libraries.
AC_DEFUN([KDE_PATH_X_DIRECT],
[if test "$ac_x_includes" = NO; then
  # Guess where to find include files, by looking for this one X11 .h file.
  test -z "$x_direct_test_include" && x_direct_test_include=X11/Intrinsic.h

  # First, try using that file with no special directory specified.
AC_TRY_CPP([#include <$x_direct_test_include>],
[# We can compile using X headers with no special include directory.
ac_x_includes=],
[# Look for the header file in a standard set of common directories.
# Check X11 before X11Rn because it is often a symlink to the current release.
  for ac_dir in               \
    /usr/X11/include          \
    /usr/X11R6/include        \
    /usr/X11R5/include        \
    /usr/X11R4/include        \
                              \
    /usr/include/X11          \
    /usr/include/X11R6        \
    /usr/include/X11R5        \
    /usr/include/X11R4        \
                              \
    /usr/local/X11/include    \
    /usr/local/X11R6/include  \
    /usr/local/X11R5/include  \
    /usr/local/X11R4/include  \
                              \
    /usr/local/include/X11    \
    /usr/local/include/X11R6  \
    /usr/local/include/X11R5  \
    /usr/local/include/X11R4  \
                              \
    /usr/X386/include         \
    /usr/x386/include         \
    /usr/XFree86/include/X11  \
                              \
    /usr/include              \
    /usr/local/include        \
    /usr/unsupported/include  \
    /usr/athena/include       \
    /usr/local/x11r5/include  \
    /usr/lpp/Xamples/include  \
                              \
    /usr/openwin/include      \
    /usr/openwin/share/include \
    ; \
  do
    if test -r "$ac_dir/$x_direct_test_include"; then
      ac_x_includes=$ac_dir
      break
    fi
  done])
fi # $ac_x_includes = NO

if test "$ac_x_libraries" = NO; then
  # Check for the libraries.

  test -z "$x_direct_test_library" && x_direct_test_library=Xt
  test -z "$x_direct_test_function" && x_direct_test_function=XtMalloc

  # See if we find them without any special options.
  # Don't add to $LIBS permanently.
  ac_save_LIBS="$LIBS"
  LIBS="-l$x_direct_test_library $LIBS"
AC_TRY_LINK(, [${x_direct_test_function}()],
[LIBS="$ac_save_LIBS"
# We can link X programs with no special library path.
ac_x_libraries=],
[LIBS="$ac_save_LIBS"
# First see if replacing the include by lib works.
# Check X11 before X11Rn because it is often a symlink to the current release.
for ac_dir in `echo "$ac_x_includes" | sed s/include/lib/` \
    /usr/X11/lib          \
    /usr/X11R6/lib        \
    /usr/X11R5/lib        \
    /usr/X11R4/lib        \
                          \
    /usr/lib/X11          \
    /usr/lib/X11R6        \
    /usr/lib/X11R5        \
    /usr/lib/X11R4        \
                          \
    /usr/local/X11/lib    \
    /usr/local/X11R6/lib  \
    /usr/local/X11R5/lib  \
    /usr/local/X11R4/lib  \
                          \
    /usr/local/lib/X11    \
    /usr/local/lib/X11R6  \
    /usr/local/lib/X11R5  \
    /usr/local/lib/X11R4  \
                          \
    /usr/X386/lib         \
    /usr/x386/lib         \
    /usr/XFree86/lib/X11  \
                          \
    /usr/lib              \
    /usr/local/lib        \
    /usr/unsupported/lib  \
    /usr/athena/lib       \
    /usr/local/x11r5/lib  \
    /usr/lpp/Xamples/lib  \
    /lib/usr/lib/X11	  \
                          \
    /usr/openwin/lib      \
    /usr/openwin/share/lib \
    ; \
do
dnl Don't even attempt the hair of trying to link an X program!
  for ac_extension in a so sl; do
    if test -r $ac_dir/lib${x_direct_test_library}.$ac_extension; then
      ac_x_libraries=$ac_dir
      break 2
    fi
  done
done])
fi # $ac_x_libraries = NO
])


dnl ------------------------------------------------------------------------
dnl Find a file (or one of more files in a list of dirs)
dnl ------------------------------------------------------------------------
dnl
AC_DEFUN([AC_FIND_FILE],
[
$3=NO
for i in $2;
do
  for j in $1;
  do
    echo "configure: __oline__: $i/$j" >&AC_FD_CC
    if test -r "$i/$j"; then
      echo "taking that" >&AC_FD_CC
      $3=$i
      break 2
    fi
  done
done
])

dnl KDE_FIND_PATH(programm-name, variable-name, list of directories,
dnl	if-not-found, test-parameter)
AC_DEFUN([KDE_FIND_PATH],
[
   AC_MSG_CHECKING([for $1])
   if test -n "$$2"; then
        kde_cv_path="$$2";
   else
        kde_cache=`echo $1 | sed 'y%./+-%__p_%'`

        AC_CACHE_VAL(kde_cv_path_$kde_cache,
        [
        kde_cv_path="NONE"
	dirs="$3"
	kde_save_IFS=$IFS
	IFS=':'
	for dir in $PATH; do
	  dirs="$dirs $dir"
        done
	IFS=$kde_save_IFS

        for dir in $dirs; do
	  if test -x "$dir/$1"; then
	    if test -n "$5"
	    then
              evalstr="$dir/$1 $5 2>&1 "
	      if eval $evalstr; then
                kde_cv_path="$dir/$1"
                break
	      fi
            else
		kde_cv_path="$dir/$1"
                break
	    fi
          fi
        done

        eval "kde_cv_path_$kde_cache=$kde_cv_path"

        ])

      eval "kde_cv_path=\"`echo '$kde_cv_path_'$kde_cache`\""

   fi

   if test -z "$kde_cv_path" || test "$kde_cv_path" = NONE; then
      AC_MSG_RESULT(not found)
      $4
   else
      AC_MSG_RESULT($kde_cv_path)
      $2=$kde_cv_path

   fi
])

AC_DEFUN([KDE_MOC_ERROR_MESSAGE],
[
    AC_MSG_ERROR([No Qt meta object compiler (moc) found!
Please check whether you installed Qt correctly.
You need to have a running moc binary.
configure tried to run $ac_cv_path_moc and the test didn't
succeed. If configure shouldn't have tried this one, set
the environment variable MOC to the right one before running
configure.
])
])

AC_DEFUN([KDE_UIC_ERROR_MESSAGE],
[
    AC_MSG_WARN([No Qt ui compiler (uic) found!
Please check whether you installed Qt correctly.
You need to have a running uic binary.
configure tried to run $ac_cv_path_uic and the test didn't
succeed. If configure shouldn't have tried this one, set
the environment variable UIC to the right one before running
configure.
])
])


AC_DEFUN([KDE_CHECK_UIC_FLAG],
[
    AC_MSG_CHECKING([whether uic supports -$1 ])
    kde_cache=`echo $1 | sed 'y% .=/+-%____p_%'`
    AC_CACHE_VAL(kde_cv_prog_uic_$kde_cache,
    [
        cat >conftest.ui <<EOT
        <!DOCTYPE UI><UI version="3" stdsetdef="1"></UI>
EOT
        ac_uic_testrun="$UIC -$1 $2 conftest.ui >/dev/null"
        if AC_TRY_EVAL(ac_uic_testrun); then
            eval "kde_cv_prog_uic_$kde_cache=yes"
        else
            eval "kde_cv_prog_uic_$kde_cache=no"
        fi
        rm -f conftest*
    ])

    if eval "test \"`echo '$kde_cv_prog_uic_'$kde_cache`\" = yes"; then
        AC_MSG_RESULT([yes])
        :
        $3
    else
        AC_MSG_RESULT([no])
        :
        $4
    fi
])


dnl ------------------------------------------------------------------------
dnl Find the meta object compiler and the ui compiler in the PATH,
dnl in $QTDIR/bin, and some more usual places
dnl ------------------------------------------------------------------------
dnl
AC_DEFUN([AC_PATH_QT_MOC_UIC],
[
   qt_bindirs=""
   for dir in $kde_qt_dirs; do
      qt_bindirs="$qt_bindirs $dir/bin $dir/src/moc"
   done
   qt_bindirs="$qt_bindirs /usr/bin /usr/X11R6/bin /usr/local/qt/bin"
   if test ! "$ac_qt_bindir" = "NO"; then
      qt_bindirs="$ac_qt_bindir $qt_bindirs"
   fi

   KDE_FIND_PATH(moc, MOC, [$qt_bindirs], [KDE_MOC_ERROR_MESSAGE])
   if test -z "$UIC_NOT_NEEDED"; then
     KDE_FIND_PATH(uic, UIC, [$qt_bindirs], [UIC=""])
     if test -z "$UIC" ; then
       KDE_UIC_ERROR_MESSAGE
       exit 1
     elif test $kde_qtver = 3; then
       KDE_CHECK_UIC_FLAG(L,[/nonexistant],ac_uic_supports_libpath=yes,ac_uic_supports_libpath=no)
       KDE_CHECK_UIC_FLAG(nounload,,ac_uic_supports_nounload=yes,ac_uic_supports_nounload=no)

       if test x$ac_uic_supports_libpath = xyes; then
           UIC="$UIC -L \$(kde_widgetdir)"
       fi
       if test x$ac_uic_supports_nounload = xyes; then
           UIC="$UIC -nounload"
       fi
     fi
   else
     UIC="echo uic not available: "
   fi

   AC_SUBST(MOC)
   AC_SUBST(UIC)

   UIC_TR="i18n"
   if test $kde_qtver = 3; then
     UIC_TR="tr2i18n"
   fi

   AC_SUBST(UIC_TR)
])

AC_DEFUN([KDE_1_CHECK_PATHS],
[
  KDE_1_CHECK_PATH_HEADERS

  KDE_TEST_RPATH=

  if test -n "$USE_RPATH"; then

     if test -n "$kde_libraries"; then
       KDE_TEST_RPATH="-R $kde_libraries"
     fi

     if test -n "$qt_libraries"; then
       KDE_TEST_RPATH="$KDE_TEST_RPATH -R $qt_libraries"
     fi

     if test -n "$x_libraries"; then
       KDE_TEST_RPATH="$KDE_TEST_RPATH -R $x_libraries"
     fi

     KDE_TEST_RPATH="$KDE_TEST_RPATH $KDE_EXTRA_RPATH"
  fi

AC_MSG_CHECKING([for KDE libraries installed])
ac_link='$LIBTOOL_SHELL --silent --mode=link ${CXX-g++} -o conftest $CXXFLAGS $all_includes $CPPFLAGS $LDFLAGS $all_libraries conftest.$ac_ext $LIBS -lkdecore $LIBQT $KDE_TEST_RPATH 1>&5'

if AC_TRY_EVAL(ac_link) && test -s conftest; then
  AC_MSG_RESULT(yes)
else
  AC_MSG_ERROR([your system fails at linking a small KDE application!
Check, if your compiler is installed correctly and if you have used the
same compiler to compile Qt and kdelibs as you did use now.
For more details about this problem, look at the end of config.log.])
fi

if eval `KDEDIR= ./conftest 2>&5`; then
  kde_result=done
else
  kde_result=problems
fi

KDEDIR= ./conftest 2> /dev/null >&5 # make an echo for config.log
kde_have_all_paths=yes

KDE_SET_PATHS($kde_result)

])

AC_DEFUN([KDE_SET_PATHS],
[
  kde_cv_all_paths="kde_have_all_paths=\"yes\" \
	kde_htmldir=\"$kde_htmldir\" \
	kde_appsdir=\"$kde_appsdir\" \
	kde_icondir=\"$kde_icondir\" \
	kde_sounddir=\"$kde_sounddir\" \
	kde_datadir=\"$kde_datadir\" \
	kde_locale=\"$kde_locale\" \
	kde_cgidir=\"$kde_cgidir\" \
	kde_confdir=\"$kde_confdir\" \
	kde_mimedir=\"$kde_mimedir\" \
	kde_toolbardir=\"$kde_toolbardir\" \
	kde_wallpaperdir=\"$kde_wallpaperdir\" \
	kde_templatesdir=\"$kde_templatesdir\" \
	kde_bindir=\"$kde_bindir\" \
	kde_servicesdir=\"$kde_servicesdir\" \
	kde_servicetypesdir=\"$kde_servicetypesdir\" \
	kde_moduledir=\"$kde_moduledir\" \
   kde_styledir=\"$kde_styledir\" \
	kde_widgetdir=\"$kde_widgetdir\" \
	kde_result=$1"
])

AC_DEFUN([KDE_SET_DEFAULT_PATHS],
[
if test "$1" = "default"; then

  if test -z "$kde_htmldir"; then
    kde_htmldir='\${prefix}/share/doc/HTML'
  fi
  if test -z "$kde_appsdir"; then
    kde_appsdir='\${prefix}/share/applnk'
  fi
  if test -z "$kde_icondir"; then
    kde_icondir='\${prefix}/share/icons'
  fi
  if test -z "$kde_sounddir"; then
    kde_sounddir='\${prefix}/share/sounds'
  fi
  if test -z "$kde_datadir"; then
    kde_datadir='\${prefix}/share/apps'
  fi
  if test -z "$kde_locale"; then
    kde_locale='\${prefix}/share/locale'
  fi
  if test -z "$kde_cgidir"; then
    kde_cgidir='\${exec_prefix}/cgi-bin'
  fi
  if test -z "$kde_confdir"; then
    kde_confdir='\${prefix}/share/config'
  fi
  if test -z "$kde_mimedir"; then
    kde_mimedir='\${prefix}/share/mimelnk'
  fi
  if test -z "$kde_toolbardir"; then
    kde_toolbardir='\${prefix}/share/toolbar'
  fi
  if test -z "$kde_wallpaperdir"; then
    kde_wallpaperdir='\${prefix}/share/wallpapers'
  fi
  if test -z "$kde_templatesdir"; then
    kde_templatesdir='\${prefix}/share/templates'
  fi
  if test -z "$kde_bindir"; then
    kde_bindir='\${exec_prefix}/bin'
  fi
  if test -z "$kde_servicesdir"; then
    kde_servicesdir='\${prefix}/share/services'
  fi
  if test -z "$kde_servicetypesdir"; then
    kde_servicetypesdir='\${prefix}/share/servicetypes'
  fi
  if test -z "$kde_moduledir"; then
    if test "$kde_qtver" = "2"; then
      kde_moduledir='\${exec_prefix}/lib/kde2'
    else
      kde_moduledir='\${exec_prefix}/lib/kde3'
    fi
  fi
  if test -z "$kde_styledir"; then
    kde_styledir='\${exec_prefix}/lib/kde3/plugins/styles'
  fi
  if test -z "$kde_widgetdir"; then
    kde_widgetdir='\${exec_prefix}/lib/kde3/plugins/designer'
  fi

  KDE_SET_PATHS(defaults)

else

  if test $kde_qtver = 1; then
     AC_MSG_RESULT([compiling])
     KDE_1_CHECK_PATHS
  else
     AC_MSG_ERROR([path checking not yet supported for KDE 2])
  fi

fi
])

AC_DEFUN([KDE_CHECK_PATHS_FOR_COMPLETENESS],
[ if test -z "$kde_htmldir" || test -z "$kde_appsdir" ||
   test -z "$kde_icondir" || test -z "$kde_sounddir" ||
   test -z "$kde_datadir" || test -z "$kde_locale"  ||
   test -z "$kde_cgidir"  || test -z "$kde_confdir" ||
   test -z "$kde_mimedir" || test -z "$kde_toolbardir" ||
   test -z "$kde_wallpaperdir" || test -z "$kde_templatesdir" ||
   test -z "$kde_bindir" || test -z "$kde_servicesdir" ||
   test -z "$kde_servicetypesdir" || test -z "$kde_moduledir" ||
   test -z "$kde_styledir" || test -z "kde_widgetdir" 
   test "x$kde_have_all_paths" != "xyes"; then
     kde_have_all_paths=no
  fi
])

AC_DEFUN([KDE_MISSING_PROG_ERROR],
[
    AC_MSG_ERROR([The important program $1 was not found!
Please check whether you installed KDE correctly.
])
])

AC_DEFUN([KDE_SUBST_PROGRAMS],
[

        kde_default_bindirs="/usr/bin /usr/local/bin /opt/local/bin /usr/X11R6/bin /opt/kde/bin /opt/kde3/bin /usr/kde/bin /usr/local/kde/bin"
        if test -n "$KDEDIRS"; then
           kde_save_IFS=$IFS
           IFS=:
           for dir in $KDEDIRS; do
                kde_default_bindirs="$dir/bin $kde_default_bindirs "
           done
           IFS=$kde_save_IFS
        fi
        kde_default_bindirs="$exec_prefix/bin $prefix/bin $kde_default_bindirs"
        KDE_FIND_PATH(dcopidl, DCOPIDL, [$kde_default_bindirs], [KDE_MISSING_PROG_ERROR(dcopidl)])
        KDE_FIND_PATH(dcopidl2cpp, DCOPIDL2CPP, [$kde_default_bindirs], [KDE_MISSING_PROG_ERROR(dcopidl2cpp)])
        KDE_FIND_PATH(mcopidl, MCOPIDL, [$kde_default_bindirs], [KDE_MISSING_PROG_ERROR(mcopidl)])
        KDE_FIND_PATH(artsc-config, ARTSCCONFIG, [$kde_default_bindirs], [KDE_MISSING_PROG_ERROR(artsc-config)])
        KDE_FIND_PATH(kde-config, KDECONFIG, [$kde_default_bindirs])
        KDE_FIND_PATH(meinproc, MEINPROC, [$kde_default_bindirs])
      
        if test -n "$MEINPROC" && test ! "$MEINPROC" = "compiled"; then  
 	    kde_sharedirs="/usr/share/kde /usr/local/share /usr/share /opt/kde3/share /opt/kde/share $prefix/share"
            test -n "$KDEDIR" && kde_sharedirs="$KDEDIR/share $kde_sharedirs"
            AC_FIND_FILE(apps/ksgmltools2/customization/kde-chunk.xsl, $kde_sharedirs, KDE_XSL_STYLESHEET)
	    if test "$KDE_XSL_STYLESHEET" = "NO"; then
		KDE_XSL_STYLESHEET=""
	    else
                KDE_XSL_STYLESHEET="$KDE_XSL_STYLESHEET/apps/ksgmltools2/customization/kde-chunk.xsl"
	    fi
        fi

        DCOP_DEPENDENCIES='$(DCOPIDL)'
        AC_SUBST(DCOPIDL)
        AC_SUBST(DCOPIDL2CPP)
        AC_SUBST(DCOP_DEPENDENCIES)
        AC_SUBST(MCOPIDL)
        AC_SUBST(ARTSCCONFIG)
        AC_SUBST(KDECONFIG)
	AC_SUBST(MEINPROC)
 	AC_SUBST(KDE_XSL_STYLESHEET)

        if test -x "$KDECONFIG"; then # it can be "compiled"
          kde_libs_prefix=`$KDECONFIG --prefix`
          if test -z "$kde_libs_prefix" || test ! -x "$kde_libs_prefix"; then
               AC_MSG_ERROR([$KDECONFIG --prefix outputed the non existant prefix '$kde_libs_prefix' for kdelibs.
                          This means it has been moved since you installed it.
                          This won't work. Please recompile kdelibs for the new prefix.
                          ])
           fi
           kde_libs_htmldir=`$KDECONFIG --install html --expandvars`
        else
           kde_libs_prefix='$(prefix)'
           kde_libs_htmldir='$(kde_htmldir)'
        fi
        AC_SUBST(kde_libs_prefix)
        AC_SUBST(kde_libs_htmldir)
])dnl

AC_DEFUN([AC_CREATE_KFSSTND],
[
AC_REQUIRE([AC_CHECK_RPATH])

AC_MSG_CHECKING([for KDE paths])
kde_result=""
kde_cached_paths=yes
AC_CACHE_VAL(kde_cv_all_paths,
[
  KDE_SET_DEFAULT_PATHS($1)
  kde_cached_paths=no
])
eval "$kde_cv_all_paths"
KDE_CHECK_PATHS_FOR_COMPLETENESS
if test "$kde_have_all_paths" = "no" && test "$kde_cached_paths" = "yes"; then
  # wrong values were cached, may be, we can set better ones
  kde_result=
  kde_htmldir= kde_appsdir= kde_icondir= kde_sounddir=
  kde_datadir= kde_locale=  kde_cgidir=  kde_confdir=
  kde_mimedir= kde_toolbardir= kde_wallpaperdir= kde_templatesdir=
  kde_bindir= kde_servicesdir= kde_servicetypesdir= kde_moduledir=
  kde_have_all_paths=
  kde_styledir=
  kde_widgetdir=
  KDE_SET_DEFAULT_PATHS($1)
  eval "$kde_cv_all_paths"
  KDE_CHECK_PATHS_FOR_COMPLETENESS
  kde_result="$kde_result (cache overridden)"
fi
if test "$kde_have_all_paths" = "no"; then
  AC_MSG_ERROR([configure could not run a little KDE program to test the environment.
Since it had compiled and linked before, it must be a strange problem on your system.
Look at config.log for details. If you are not able to fix this, look at
http://www.kde.org/faq/installation.html or any www.kde.org mirror.
(If you're using an egcs version on Linux, you may update binutils!)
])
else
  rm -f conftest*
  AC_MSG_RESULT($kde_result)
fi

bindir=$kde_bindir

KDE_SUBST_PROGRAMS

])

AC_DEFUN([AC_SUBST_KFSSTND],
[
AC_SUBST(kde_htmldir)
AC_SUBST(kde_appsdir)
AC_SUBST(kde_icondir)
AC_SUBST(kde_sounddir)
AC_SUBST(kde_datadir)
AC_SUBST(kde_locale)
AC_SUBST(kde_confdir)
AC_SUBST(kde_mimedir)
AC_SUBST(kde_wallpaperdir)
AC_SUBST(kde_bindir)
dnl for KDE 2
AC_SUBST(kde_templatesdir)
AC_SUBST(kde_servicesdir)
AC_SUBST(kde_servicetypesdir)
AC_SUBST(kde_moduledir)
AC_SUBST(kde_styledir)
AC_SUBST(kde_widgetdir)
if test "$kde_qtver" = 1; then
  kde_minidir="$kde_icondir/mini"
else
# for KDE 1 - this breaks KDE2 apps using minidir, but
# that's the plan ;-/
  kde_minidir="/dev/null"
fi
dnl AC_SUBST(kde_minidir)
dnl AC_SUBST(kde_cgidir)
dnl AC_SUBST(kde_toolbardir)
])

AC_DEFUN([KDE_MISC_TESTS],
[
   AC_LANG_C
   dnl Checks for libraries.
   AC_CHECK_LIB(util, main, [LIBUTIL="-lutil"]) dnl for *BSD 
   AC_SUBST(LIBUTIL)
   AC_CHECK_LIB(compat, main, [LIBCOMPAT="-lcompat"]) dnl for *BSD
   AC_SUBST(LIBCOMPAT)
   kde_have_crypt=
   AC_CHECK_LIB(crypt, crypt, [LIBCRYPT="-lcrypt"; kde_have_crypt=yes],
      AC_CHECK_LIB(c, crypt, [kde_have_crypt=yes], [
        AC_MSG_WARN([you have no crypt in either libcrypt or libc.
You should install libcrypt from another source or configure with PAM
support])
	kde_have_crypt=no
      ]))
   AC_SUBST(LIBCRYPT)
   if test $kde_have_crypt = yes; then
      AC_DEFINE_UNQUOTED(HAVE_CRYPT, 1, [Defines if your system has the crypt function])
   fi
   AC_CHECK_SOCKLEN_T
   AC_LANG_C
   AC_CHECK_LIB(dnet, dnet_ntoa, [X_EXTRA_LIBS="$X_EXTRA_LIBS -ldnet"])
   if test $ac_cv_lib_dnet_dnet_ntoa = no; then
      AC_CHECK_LIB(dnet_stub, dnet_ntoa,
        [X_EXTRA_LIBS="$X_EXTRA_LIBS -ldnet_stub"])
   fi
   AC_CHECK_FUNC(inet_ntoa)
   if test $ac_cv_func_inet_ntoa = no; then
     AC_CHECK_LIB(nsl, inet_ntoa, X_EXTRA_LIBS="$X_EXTRA_LIBS -lnsl")
   fi
   AC_CHECK_FUNC(connect)
   if test $ac_cv_func_connect = no; then
      AC_CHECK_LIB(socket, connect, X_EXTRA_LIBS="-lsocket $X_EXTRA_LIBS", ,
        $X_EXTRA_LIBS)
   fi

   AC_CHECK_FUNC(remove)
   if test $ac_cv_func_remove = no; then
      AC_CHECK_LIB(posix, remove, X_EXTRA_LIBS="$X_EXTRA_LIBS -lposix")
   fi

   # BSDI BSD/OS 2.1 needs -lipc for XOpenDisplay.
   AC_CHECK_FUNC(shmat, ,
     AC_CHECK_LIB(ipc, shmat, X_EXTRA_LIBS="$X_EXTRA_LIBS -lipc"))
   
   # Solaris 2.6 and others need -lresolv for res_init
   AC_CHECK_FUNCS(res_init, , [
     kde_libs_safe="$LIBS"
     LIBS="$LIBS $X_EXTRA_LIBS -lresolv"
     AC_TRY_LINK(
[
#include <resolv.h>
],
[ 
res_init(); 
],
        LIBRESOLV="-lresolv"
        X_EXTRA_LIBS="$X_EXTRA_LIBS $LIBRESOLV"
        AC_DEFINE(HAVE_RES_INIT, 1, [Define if you have the res_init function])
     )
     LIBS=$kde_libs_safe
   ])

   LIBSOCKET="$X_EXTRA_LIBS"
   AC_SUBST(LIBSOCKET)
   AC_SUBST(LIBRESOLV)
   AC_SUBST(X_EXTRA_LIBS)
   AC_CHECK_LIB(ucb, killpg, [LIBUCB="-lucb"]) dnl for Solaris2.4
   AC_SUBST(LIBUCB)

   case $host in  dnl this *is* LynxOS specific
   *-*-lynxos* )
        AC_MSG_CHECKING([LynxOS header file wrappers])
        [CFLAGS="$CFLAGS -D__NO_INCLUDE_WARN__"]
        AC_MSG_RESULT(disabled)
        AC_CHECK_LIB(bsd, gethostbyname, [LIBSOCKET="-lbsd"]) dnl for LynxOS
         ;;
    esac

   KDE_CHECK_TYPES
   KDE_CHECK_LIBDL
])

dnl ------------------------------------------------------------------------
dnl Find the header files and libraries for X-Windows. Extended the
dnl macro AC_PATH_X
dnl ------------------------------------------------------------------------
dnl
AC_DEFUN([K_PATH_X],
[
AC_REQUIRE([KDE_MISC_TESTS])dnl

AC_ARG_ENABLE(
  embedded,
  [  --enable-embedded       link to Qt-embedded, don't use X],
  kde_use_qt_emb=$enableval,
  kde_use_qt_emb=no
)

AC_ARG_ENABLE(
  qtopia,
  [  --enable-qtopia         link to Qt-embedded, link to the Qtopia Environment],
  kde_use_qt_emb_palm=$enableval,
  kde_use_qt_emb_palm=no
)

if test "$kde_use_qt_emb" = "no"; then

AC_MSG_CHECKING(for X)
AC_LANG_SAVE
AC_LANG_C
AC_CACHE_VAL(kde_cv_have_x,
[# One or both of the vars are not set, and there is no cached value.
if test "{$x_includes+set}" = set || test "$x_includes" = NONE; then
   kde_x_includes=NO
else
   kde_x_includes=$x_includes
fi
if test "{$x_libraries+set}" = set || test "$x_libraries" = NONE; then
   kde_x_libraries=NO
else
   kde_x_libraries=$x_libraries
fi

# below we use the standard autoconf calls
ac_x_libraries=$kde_x_libraries
ac_x_includes=$kde_x_includes

KDE_PATH_X_DIRECT
dnl AC_PATH_X_XMKMF picks /usr/lib as the path for the X libraries.
dnl Unfortunately, if compiling with the N32 ABI, this is not the correct
dnl location. The correct location is /usr/lib32 or an undefined value
dnl (the linker is smart enough to pick the correct default library).
dnl Things work just fine if you use just AC_PATH_X_DIRECT.
dnl Solaris has a similar problem. AC_PATH_X_XMKMF forces x_includes to
dnl /usr/openwin/include, which doesn't work. /usr/include does work, so
dnl x_includes should be left alone.
case "$host" in
mips-sgi-irix6*)
  ;;
*-*-solaris*)
  ;;
*)
  _AC_PATH_X_XMKMF
  if test -z "$ac_x_includes"; then
    ac_x_includes="."
  fi
  if test -z "$ac_x_libraries"; then
    ac_x_libraries="/usr/lib"
  fi
esac
#from now on we use our own again

# when the user already gave --x-includes, we ignore
# what the standard autoconf macros told us.
if test "$kde_x_includes" = NO; then
  kde_x_includes=$ac_x_includes
fi

# for --x-libraries too
if test "$kde_x_libraries" = NO; then
  kde_x_libraries=$ac_x_libraries
fi

if test "$kde_x_includes" = NO; then
  AC_MSG_ERROR([Can't find X includes. Please check your installation and add the correct paths!])
fi

if test "$kde_x_libraries" = NO; then
  AC_MSG_ERROR([Can't find X libraries. Please check your installation and add the correct paths!])
fi

# Record where we found X for the cache.
kde_cv_have_x="have_x=yes \
         kde_x_includes=$kde_x_includes kde_x_libraries=$kde_x_libraries"
])dnl

eval "$kde_cv_have_x"

if test "$have_x" != yes; then
  AC_MSG_RESULT($have_x)
  no_x=yes
else
  AC_MSG_RESULT([libraries $kde_x_libraries, headers $kde_x_includes])
fi

if test -z "$kde_x_includes" || test "x$kde_x_includes" = xNONE; then
  X_INCLUDES=""
  x_includes="."; dnl better than nothing :-
 else
  x_includes=$kde_x_includes
  X_INCLUDES="-I$x_includes"
fi

if test -z "$kde_x_libraries" || test "x$kde_x_libraries" = xNONE; then
  X_LDFLAGS=""
  x_libraries="/usr/lib"; dnl better than nothing :-
 else
  x_libraries=$kde_x_libraries
  X_LDFLAGS="-L$x_libraries"
fi
all_includes="$X_INCLUDES"
all_libraries="$X_LDFLAGS"

AC_SUBST(X_INCLUDES)
AC_SUBST(X_LDFLAGS)
AC_SUBST(x_libraries)
AC_SUBST(x_includes)

# Check for libraries that X11R6 Xt/Xaw programs need.
ac_save_LDFLAGS="$LDFLAGS"
LDFLAGS="$LDFLAGS $X_LDFLAGS"
# SM needs ICE to (dynamically) link under SunOS 4.x (so we have to
# check for ICE first), but we must link in the order -lSM -lICE or
# we get undefined symbols.  So assume we have SM if we have ICE.
# These have to be linked with before -lX11, unlike the other
# libraries we check for below, so use a different variable.
#  --interran@uluru.Stanford.EDU, kb@cs.umb.edu.
AC_CHECK_LIB(ICE, IceConnectionNumber,
  [LIBSM="-lSM -lICE"], , $X_EXTRA_LIBS)
AC_SUBST(LIBSM)
LDFLAGS="$ac_save_LDFLAGS"

AC_SUBST(X_PRE_LIBS)

LIB_X11='-lX11 $(LIBSOCKET)'
AC_SUBST(LIB_X11)

AC_MSG_CHECKING(for libXext)
AC_CACHE_VAL(kde_cv_have_libXext,
[
kde_ldflags_safe="$LDFLAGS"
kde_libs_safe="$LIBS"

LDFLAGS="$LDFLAGS $X_LDFLAGS $USER_LDFLAGS"
LIBS="-lXext -lX11 $LIBSOCKET"

AC_TRY_LINK([
#include <stdio.h>
#ifdef STDC_HEADERS
# include <stdlib.h>
#endif
],
[
printf("hello Xext\n");
],
kde_cv_have_libXext=yes,
kde_cv_have_libXext=no
   )

LDFLAGS=$kde_ldflags_safe
LIBS=$kde_libs_safe
 ])

AC_MSG_RESULT($kde_cv_have_libXext)

if test "$kde_cv_have_libXext" = "no"; then
  AC_MSG_ERROR([We need a working libXext to proceed. Since configure
can't find it itself, we stop here assuming that make wouldn't find
them either.])
fi

AC_MSG_CHECKING(for Xinerama)

 AC_ARG_WITH(xinerama,
  [  --with-xinerama         enable support for Xinerama ],
  [
    no_xinerama=no
  ], [
    no_xinerama=yes
  ]
)

kde_save_LDFLAGS="$LDFLAGS"
kde_save_CFLAGS="$CFLAGS"
kde_save_LIBS="$LIBS"
LDFLAGS="$LDFLAGS $X_LDFLAGS $USER_LDFLAGS"
CFLAGS="$CFLAGS -I$x_includes"
LIBS="-lXinerama -lXext"

if test "x$no_xinerama" = "xno"; then

  AC_CACHE_VAL(ac_cv_have_xinerama,
  [
	  AC_TRY_LINK([#include <X11/Xlib.h>
  			#include <X11/extensions/Xinerama.h>],
	  	  [XineramaIsActive(NULL);],
		  [ac_cv_have_xinerama="yes"],
		  [ac_cv_have_xinerama="no"])
  ])
else
  ac_cv_have_xinerama=no;
fi

AC_MSG_RESULT($ac_cv_have_xinerama)

LIBXINERAMA=""

if test "$ac_cv_have_xinerama" = "yes"; then
  AC_DEFINE(HAVE_XINERAMA, 1, [Define if you want Xinerama support])
  LIBXINERAMA="-lXinerama"
fi

AC_SUBST(LIBXINERAMA)

LDFLAGS="$kde_save_LDFLAGS"
CFLAGS="$kde_save_CFLAGS"
LIBS="$kde_save_LIBS"

LIB_XEXT="-lXext"
QTE_NORTTI=""

else
  dnl We're using QT Embedded
  CXXFLAGS="$CXXFLAGS -fno-rtti -DQWS"
  CFLAGS="$CFLAGS -DQWS"
  LDFLAGS="$LDFLAGS -DQWS"
  QTE_NORTTI="-fno-rtti -DQWS"
  X_PRE_LIBS=""
  LIB_X11=""
  LIB_XEXT=""
  LIBSM=""
  X_INCLUDES=""
  X_LDFLAGS=""
  x_includes=""
  x_libraries=""
  AC_SUBST(X_PRE_LIBS)
  AC_SUBST(LIB_X11)
  AC_SUBST(LIBSM)
  AC_SUBST(X_INCLUDES)
  AC_SUBST(X_LDFLAGS)
  AC_SUBST(x_includes)
  AC_SUBST(x_libraries)
fi
AC_SUBST(QTE_NORTTI)
AC_SUBST(LIB_XEXT)


AC_LANG_RESTORE

])

AC_DEFUN([KDE_PRINT_QT_PROGRAM],
[
AC_REQUIRE([KDE_USE_QT])
cat > conftest.$ac_ext <<EOF
#include "confdefs.h"
#include <qglobal.h>
#include <qapplication.h>
EOF
if test "$kde_qtver" = "2"; then
cat >> conftest.$ac_ext <<EOF
#include <qevent.h>
#include <qstring.h>
#include <qstyle.h>
EOF

if test $kde_qtsubver -gt 0; then
cat >> conftest.$ac_ext <<EOF
#include <qiconview.h>
EOF
fi
fi

if test "$kde_qtver" = "3"; then
cat >> conftest.$ac_ext <<EOF
#include <qcursor.h>
#include <qstylefactory.h>
#include <private/qucomextra_p.h>
EOF
fi

echo "#if ! ($kde_qt_verstring)" >> conftest.$ac_ext
cat >> conftest.$ac_ext <<EOF
#error 1
#endif

int main() {
EOF
if test "$kde_qtver" = "2"; then
cat >> conftest.$ac_ext <<EOF
    QStringList *t = new QStringList();
    Q_UNUSED(t);
EOF
if test $kde_qtsubver -gt 0; then
cat >> conftest.$ac_ext <<EOF
    QIconView iv(0);
    iv.setWordWrapIconText(false);
    QString s;
    s.setLatin1("Elvis is alive", 14);
EOF
fi
fi
if test "$kde_qtver" = "3"; then
cat >> conftest.$ac_ext <<EOF
    (void)QStyleFactory::create(QString::null);
    QCursor c(Qt::WhatsThisCursor);
EOF
fi
cat >> conftest.$ac_ext <<EOF
    return 0;
}
EOF
])

AC_DEFUN([KDE_USE_QT],
[
if test -z "$1"; then
  kde_qtver=3
  kde_qtsubver=1
else
  kde_qtsubver=`echo "$1" | sed -e 's#[0-9][0-9]*\.\([0-9][0-9]*\).*#\1#'`
  # following is the check if subversion isn�t found in passed argument
  if test "$kde_qtsubver" = "$1"; then
    kde_qtsubver=1
  fi
  kde_qtver=`echo "$1" | sed -e 's#^\([0-9][0-9]*\)\..*#\1#'`
  if test "$kde_qtver" = "1"; then
    kde_qtsubver=42
  fi
fi

if test -z "$2"; then
  if test "$kde_qtver" = "2"; then
    if test $kde_qtsubver -gt 0; then
      kde_qt_minversion=">= Qt 2.2.2"
    else
      kde_qt_minversion=">= Qt 2.0.2"
    fi
  fi
  if test "$kde_qtver" = "3"; then
    kde_qt_minversion=">= Qt 3.0.2"
  fi
  if test "$kde_qtver" = "1"; then
    kde_qt_minversion=">= 1.42 and < 2.0"
  fi
else
   kde_qt_minversion=$2
fi

if test -z "$3"; then
   if test $kde_qtver = 3; then
     kde_qt_verstring="QT_VERSION >= 302"
   fi
   if test $kde_qtver = 2; then
     if test $kde_qtsubver -gt 0; then
       kde_qt_verstring="QT_VERSION >= 222"
     else
       kde_qt_verstring="QT_VERSION >= 200"
     fi
   fi
   if test $kde_qtver = 1; then
    kde_qt_verstring="QT_VERSION >= 142 && QT_VERSION < 200"
   fi
else
   kde_qt_verstring=$3
fi

if test $kde_qtver = 3; then
  kde_qt_dirs="$QTDIR /usr/lib/qt3 /usr/lib/qt"
fi
if test $kde_qtver = 2; then
   kde_qt_dirs="$QTDIR /usr/lib/qt2 /usr/lib/qt"
fi
if test $kde_qtver = 1; then
   kde_qt_dirs="$QTDIR /usr/lib/qt"
fi
])

AC_DEFUN([KDE_CHECK_QT_DIRECT],
[
AC_REQUIRE([KDE_USE_QT])
AC_MSG_CHECKING([if Qt compiles without flags])
AC_CACHE_VAL(kde_cv_qt_direct,
[
AC_LANG_SAVE
AC_LANG_CPLUSPLUS
ac_LD_LIBRARY_PATH_safe=$LD_LIBRARY_PATH
ac_LIBRARY_PATH="$LIBRARY_PATH"
ac_cxxflags_safe="$CXXFLAGS"
ac_ldflags_safe="$LDFLAGS"
ac_libs_safe="$LIBS"

CXXFLAGS="$CXXFLAGS -I$qt_includes"
LDFLAGS="$LDFLAGS $X_LDFLAGS"
if test "x$kde_use_qt_emb" != "xyes"; then
LIBS="$LIBQT -lXext -lX11 $LIBSOCKET"
else
LIBS="$LIBQT $LIBSOCKET"
fi
LD_LIBRARY_PATH=
export LD_LIBRARY_PATH
LIBRARY_PATH=
export LIBRARY_PATH

KDE_PRINT_QT_PROGRAM

if AC_TRY_EVAL(ac_link) && test -s conftest; then
  kde_cv_qt_direct="yes"
else
  kde_cv_qt_direct="no"
  echo "configure: failed program was:" >&AC_FD_CC
  cat conftest.$ac_ext >&AC_FD_CC
fi

rm -f conftest*
CXXFLAGS="$ac_cxxflags_safe"
LDFLAGS="$ac_ldflags_safe"
LIBS="$ac_libs_safe"

LD_LIBRARY_PATH="$ac_LD_LIBRARY_PATH_safe"
export LD_LIBRARY_PATH
LIBRARY_PATH="$ac_LIBRARY_PATH"
export LIBRARY_PATH
AC_LANG_RESTORE
])

if test "$kde_cv_qt_direct" = "yes"; then
  AC_MSG_RESULT(yes)
  $1
else
  AC_MSG_RESULT(no)
  $2
fi
])

dnl ------------------------------------------------------------------------
dnl Try to find the Qt headers and libraries.
dnl $(QT_LDFLAGS) will be -Lqtliblocation (if needed)
dnl and $(QT_INCLUDES) will be -Iqthdrlocation (if needed)
dnl ------------------------------------------------------------------------
dnl
AC_DEFUN([AC_PATH_QT_1_3],
[
AC_REQUIRE([K_PATH_X])
AC_REQUIRE([KDE_USE_QT])

dnl ------------------------------------------------------------------------
dnl Add configure flag to enable linking to MT version of Qt library.
dnl ------------------------------------------------------------------------

AC_ARG_ENABLE(
  mt,
  [  --disable-mt            link to non-threaded Qt (deprecated)],
  kde_use_qt_mt=$enableval,
  [
    if test $kde_qtver = 3; then
      kde_use_qt_mt=yes
    else
      kde_use_qt_mt=no
    fi
  ]
)

USING_QT_MT=""

dnl ------------------------------------------------------------------------
dnl If we not get --disable-qt-mt then adjust some vars for the host.
dnl ------------------------------------------------------------------------

KDE_MT_LDFLAGS=
KDE_MT_LIBS=
if test "x$kde_use_qt_mt" = "xyes"; then
  KDE_CHECK_THREADING
  if test "x$kde_use_threading" = "xyes"; then
    CPPFLAGS="$USE_THREADS -DQT_THREAD_SUPPORT $CPPFLAGS"
    KDE_MT_LDFLAGS="$USE_THREADS"
    KDE_MT_LIBS="$LIBPTHREAD"
  else
    kde_use_qt_mt=no
  fi
fi
AC_SUBST(KDE_MT_LDFLAGS)
AC_SUBST(KDE_MT_LIBS)

kde_qt_was_given=yes

dnl ------------------------------------------------------------------------
dnl If we haven't been told how to link to Qt, we work it out for ourselves.
dnl ------------------------------------------------------------------------
if test -z "$LIBQT_GLOB"; then
  if test "x$kde_use_qt_emb" = "xyes"; then
    LIBQT_GLOB="libqte.*"
  else
    LIBQT_GLOB="libqt.*"
  fi
fi

if test -z "$LIBQT"; then
dnl ------------------------------------------------------------
dnl If we got --enable-embedded then adjust the Qt library name.
dnl ------------------------------------------------------------
  if test "x$kde_use_qt_emb" = "xyes"; then
    qtlib="qte"
  else
    qtlib="qt"
  fi

  kde_int_qt="-l$qtlib"
else
  kde_int_qt="$LIBQT"
  kde_lib_qt_set=yes
fi

if test -z "$LIBQPE"; then
dnl ------------------------------------------------------------
dnl If we got --enable-palmtop then add -lqpe to the link line
dnl ------------------------------------------------------------
  if test "x$kde_use_qt_emb" = "xyes"; then
    if test "x$kde_use_qt_emb_palm" = "xyes"; then
      LIB_QPE="-lqpe"
    else
      LIB_QPE=""
    fi
  else
    LIB_QPE=""
  fi
fi

dnl ------------------------------------------------------------------------
dnl If we got --enable-qt-mt then adjust the Qt library name for the host.
dnl ------------------------------------------------------------------------

if test "x$kde_use_qt_mt" = "xyes"; then
  if test -z "$LIBQT"; then
    LIBQT="-l$qtlib-mt"
    kde_int_qt="-l$qtlib-mt"
  else
    LIBQT="$qtlib-mt"
    kde_int_qt="$qtlib-mt"
  fi
  LIBQT_GLOB="lib$qtlib-mt.*"
  USING_QT_MT="using -mt"
else
  LIBQT="-l$qtlib"
fi

if test $kde_qtver != 1; then

  AC_REQUIRE([AC_FIND_PNG])
  AC_REQUIRE([AC_FIND_JPEG])
  LIBQT="$LIBQT $LIBPNG $LIBJPEG"
fi

if test $kde_qtver = 3; then
  AC_REQUIRE([KDE_CHECK_LIBDL])
  LIBQT="$LIBQT $LIBDL"
fi

AC_MSG_CHECKING([for Qt])

if test "x$kde_use_qt_emb" != "xyes"; then
LIBQT="$LIBQT $X_PRE_LIBS -lXext -lX11 $LIBSM $LIBSOCKET"
fi
ac_qt_includes=NO ac_qt_libraries=NO ac_qt_bindir=NO
qt_libraries=""
qt_includes=""
AC_ARG_WITH(qt-dir,
    [  --with-qt-dir=DIR       where the root of Qt is installed ],
    [  ac_qt_includes="$withval"/include
       ac_qt_libraries="$withval"/lib
       ac_qt_bindir="$withval"/bin
    ])

AC_ARG_WITH(qt-includes,
    [  --with-qt-includes=DIR  where the Qt includes are. ],
    [
       ac_qt_includes="$withval"
    ])

kde_qt_libs_given=no

AC_ARG_WITH(qt-libraries,
    [  --with-qt-libraries=DIR where the Qt library is installed.],
    [  ac_qt_libraries="$withval"
       kde_qt_libs_given=yes
    ])

AC_CACHE_VAL(ac_cv_have_qt,
[#try to guess Qt locations

qt_incdirs=""
for dir in $kde_qt_dirs; do
   qt_incdirs="$qt_incdirs $dir/include $dir"
done
qt_incdirs="$QTINC $qt_incdirs /usr/local/qt/include /usr/include/qt /usr/include/qt3 /usr/include /usr/X11R6/include/X11/qt /usr/X11R6/include/qt /usr/X11R6/include/qt2 $x_includes"
if test ! "$ac_qt_includes" = "NO"; then
   qt_incdirs="$ac_qt_includes $qt_incdirs"
fi

if test "$kde_qtver" != "1"; then
  kde_qt_header=qstyle.h
else
  kde_qt_header=qglobal.h
fi

AC_FIND_FILE($kde_qt_header, $qt_incdirs, qt_incdir)
ac_qt_includes="$qt_incdir"

qt_libdirs=""
for dir in $kde_qt_dirs; do
   qt_libdirs="$qt_libdirs $dir/lib $dir"
done
qt_libdirs="$QTLIB $qt_libdirs /usr/X11R6/lib /usr/lib /usr/local/qt/lib $x_libraries"
if test ! "$ac_qt_libraries" = "NO"; then
  qt_libdir=$ac_qt_libraries
else
  qt_libdirs="$ac_qt_libraries $qt_libdirs"
  # if the Qt was given, the chance is too big that libqt.* doesn't exist
  qt_libdir=NONE
  for dir in $qt_libdirs; do
    try="ls -1 $dir/${LIBQT_GLOB}"
    if test -n "`$try 2> /dev/null`"; then qt_libdir=$dir; break; else echo "tried $dir" >&AC_FD_CC ; fi
  done
fi

ac_qt_libraries="$qt_libdir"

AC_LANG_SAVE
AC_LANG_CPLUSPLUS

ac_cxxflags_safe="$CXXFLAGS"
ac_ldflags_safe="$LDFLAGS"
ac_libs_safe="$LIBS"

CXXFLAGS="$CXXFLAGS -I$qt_incdir $all_includes"
LDFLAGS="$LDFLAGS -L$qt_libdir $all_libraries $USER_LDFLAGS $KDE_MT_LDFLAGS"
LIBS="$LIBS $LIBQT $KDE_MT_LIBS"

KDE_PRINT_QT_PROGRAM

if AC_TRY_EVAL(ac_link) && test -s conftest; then
  rm -f conftest*
else
  echo "configure: failed program was:" >&AC_FD_CC
  cat conftest.$ac_ext >&AC_FD_CC
  ac_qt_libraries="NO"
fi
rm -f conftest*
CXXFLAGS="$ac_cxxflags_safe"
LDFLAGS="$ac_ldflags_safe"
LIBS="$ac_libs_safe"

AC_LANG_RESTORE
if test "$ac_qt_includes" = NO || test "$ac_qt_libraries" = NO; then
  ac_cv_have_qt="have_qt=no"
  ac_qt_notfound=""
  missing_qt_mt=""
  if test "$ac_qt_includes" = NO; then
    if test "$ac_qt_libraries" = NO; then
      ac_qt_notfound="(headers and libraries)";
    else
      ac_qt_notfound="(headers)";
    fi
  else
    if test "x$kde_use_qt_mt" = "xyes"; then
       missing_qt_mt="
Make sure that you have compiled Qt with thread support!"
       ac_qt_notfound="(library $qtlib-mt)";
    else
       ac_qt_notfound="(library $qtlib)";
    fi
  fi

  AC_MSG_ERROR([Qt ($kde_qt_minversion) $ac_qt_notfound not found. Please check your installation!
For more details about this problem, look at the end of config.log.$missing_qt_mt])
else
  have_qt="yes"
fi
])

eval "$ac_cv_have_qt"

if test "$have_qt" != yes; then
  AC_MSG_RESULT([$have_qt]);
else
  ac_cv_have_qt="have_qt=yes \
    ac_qt_includes=$ac_qt_includes ac_qt_libraries=$ac_qt_libraries"
  AC_MSG_RESULT([libraries $ac_qt_libraries, headers $ac_qt_includes $USING_QT_MT])

  qt_libraries="$ac_qt_libraries"
  qt_includes="$ac_qt_includes"
fi

if test ! "$kde_qt_libs_given" = "yes"; then
KDE_CHECK_QT_DIRECT(qt_libraries= ,[])
fi

AC_SUBST(qt_libraries)
AC_SUBST(qt_includes)

if test "$qt_includes" = "$x_includes" || test -z "$qt_includes"; then
 QT_INCLUDES=""
else
 QT_INCLUDES="-I$qt_includes"
 all_includes="$QT_INCLUDES $all_includes"
fi

if test "$qt_libraries" = "$x_libraries" || test -z "$qt_libraries"; then
 QT_LDFLAGS=""
else
 QT_LDFLAGS="-L$qt_libraries"
 all_libraries="$all_libraries $QT_LDFLAGS"
fi
test -z "$KDE_MT_LDFLAGS" || all_libraries="$all_libraries $KDE_MT_LDFLAGS"

AC_SUBST(QT_INCLUDES)
AC_SUBST(QT_LDFLAGS)
AC_PATH_QT_MOC_UIC

KDE_CHECK_QT_JPEG

if test "x$kde_use_qt_emb" != "xyes"; then
LIB_QT="$kde_int_qt $LIBJPEG_QT "'$(LIBPNG) -lXext $(LIB_X11) $(LIBSM)'
else
LIB_QT="$kde_int_qt $LIBJPEG_QT "'$(LIBPNG)'
fi
test -z "$KDE_MT_LIBS" || LIB_QT="$LIB_QT $KDE_MT_LIBS"

AC_SUBST(LIB_QT)
AC_SUBST(LIB_QPE)

AC_SUBST(kde_qtver)
])

AC_DEFUN([AC_PATH_QT],
[
AC_PATH_QT_1_3
])

AC_DEFUN([KDE_CHECK_FINAL],
[
  AC_ARG_ENABLE(final, [  --enable-final          build size optimized apps (experimental - needs lots of memory)],
	kde_use_final=$enableval, kde_use_final=no)

  KDE_COMPILER_REPO
  if test "x$kde_use_final" = "xyes"; then
      KDE_USE_FINAL_TRUE=""
      KDE_USE_FINAL_FALSE="#"
   else
      KDE_USE_FINAL_TRUE="#"
      KDE_USE_FINAL_FALSE=""
  fi
  AC_SUBST(KDE_USE_FINAL_TRUE)
  AC_SUBST(KDE_USE_FINAL_FALSE)

  AC_ARG_ENABLE(closure, [  --disable-closure       don't delay template instantiation],
  	kde_use_closure=$enableval, kde_use_closure=yes)

  if test "x$kde_use_closure" = "xyes"; then
       KDE_USE_CLOSURE_TRUE=""
       KDE_USE_CLOSURE_FALSE="#"
#       CXXFLAGS="$CXXFLAGS $REPO"
  else
       KDE_USE_CLOSURE_TRUE="#"
       KDE_USE_CLOSURE_FALSE=""
  fi
  AC_SUBST(KDE_USE_CLOSURE_TRUE)
  AC_SUBST(KDE_USE_CLOSURE_FALSE)
])

dnl ------------------------------------------------------------------------
dnl Now, the same with KDE
dnl $(KDE_LDFLAGS) will be the kdeliblocation (if needed)
dnl and $(kde_includes) will be the kdehdrlocation (if needed)
dnl ------------------------------------------------------------------------
dnl
AC_DEFUN([AC_BASE_PATH_KDE],
[
AC_PREREQ([2.13])
AC_REQUIRE([AC_PATH_QT])dnl
AC_CHECK_RPATH
AC_MSG_CHECKING([for KDE])

if test "${prefix}" != NONE; then
  kde_includes=${prefix}/include
  ac_kde_includes=$prefix/include

  if test "${exec_prefix}" != NONE; then
    kde_libraries=${exec_prefix}/lib
    ac_kde_libraries=$exec_prefix/lib
  else
    kde_libraries=${prefix}/lib
    ac_kde_libraries=$prefix/lib
  fi
else
  ac_kde_includes=
  ac_kde_libraries=
  kde_libraries=""
  kde_includes=""
fi

AC_CACHE_VAL(ac_cv_have_kde,
[#try to guess kde locations

if test "$kde_qtver" = 1; then
  kde_check_header="ksock.h"
  kde_check_lib="libkdecore.la"
else
  kde_check_header="ksharedptr.h"
  kde_check_lib="libkio.la"
fi

if test -z "$1"; then

kde_incdirs="/usr/lib/kde/include /usr/local/kde/include /usr/local/include /usr/kde/include /usr/include/kde /usr/include /opt/kde3/include /opt/kde/include $x_includes $qt_includes"
test -n "$KDEDIR" && kde_incdirs="$KDEDIR/include $KDEDIR/include/kde $KDEDIR $kde_incdirs"
kde_incdirs="$ac_kde_includes $kde_incdirs"
AC_FIND_FILE($kde_check_header, $kde_incdirs, kde_incdir)
ac_kde_includes="$kde_incdir"

if test -n "$ac_kde_includes" && test ! -r "$ac_kde_includes/$kde_check_header"; then
  AC_MSG_ERROR([
in the prefix, you've chosen, are no KDE headers installed. This will fail.
So, check this please and use another prefix!])
fi

kde_libdirs="/usr/lib/kde/lib /usr/local/kde/lib /usr/kde/lib /usr/lib/kde /usr/lib/kde3 /usr/lib /usr/X11R6/lib /usr/local/lib /opt/kde3/lib /opt/kde/lib /usr/X11R6/kde/lib"
test -n "$KDEDIR" && kde_libdirs="$KDEDIR/lib $KDEDIR $kde_libdirs"
kde_libdirs="$ac_kde_libraries $kde_libdirs"
AC_FIND_FILE($kde_check_lib, $kde_libdirs, kde_libdir)
ac_kde_libraries="$kde_libdir"

if test -n "$ac_kde_libraries" && test ! -r "$ac_kde_libraries/$kde_check_lib"; then
AC_MSG_ERROR([
in the prefix, you've chosen, are no KDE libraries installed. This will fail.
So, check this please and use another prefix!])
fi
ac_kde_libraries="$kde_libdir"

if test "$ac_kde_includes" = NO || test "$ac_kde_libraries" = NO; then
  ac_cv_have_kde="have_kde=no"
else
  ac_cv_have_kde="have_kde=yes \
    ac_kde_includes=$ac_kde_includes ac_kde_libraries=$ac_kde_libraries"
fi

else dnl test -z $1

  ac_cv_have_kde="have_kde=no"

fi
])dnl

eval "$ac_cv_have_kde"

if test "$have_kde" != "yes"; then
 if test "${prefix}" = NONE; then
  ac_kde_prefix="$ac_default_prefix"
 else
  ac_kde_prefix="$prefix"
 fi
 if test "$exec_prefix" = NONE; then
  ac_kde_exec_prefix="$ac_kde_prefix"
  AC_MSG_RESULT([will be installed in $ac_kde_prefix])
 else
  ac_kde_exec_prefix="$exec_prefix"
  AC_MSG_RESULT([will be installed in $ac_kde_prefix and $ac_kde_exec_prefix])
 fi

 kde_libraries="${ac_kde_exec_prefix}/lib"
 kde_includes=${ac_kde_prefix}/include

else
  ac_cv_have_kde="have_kde=yes \
    ac_kde_includes=$ac_kde_includes ac_kde_libraries=$ac_kde_libraries"
  AC_MSG_RESULT([libraries $ac_kde_libraries, headers $ac_kde_includes])

  kde_libraries="$ac_kde_libraries"
  kde_includes="$ac_kde_includes"
fi
AC_SUBST(kde_libraries)
AC_SUBST(kde_includes)

if test "$kde_includes" = "$x_includes" || test "$kde_includes" = "$qt_includes"  || test "$kde_includes" = "/usr/include"; then
 KDE_INCLUDES=""
else
 KDE_INCLUDES="-I$kde_includes"
 all_includes="$KDE_INCLUDES $all_includes"
fi
 
KDE_LDFLAGS="-L$kde_libraries"
if test ! "$kde_libraries" = "$x_libraries" && test ! "$kde_libraries" = "$qt_libraries" ; then 
 all_libraries="$all_libraries $KDE_LDFLAGS"
fi

AC_SUBST(KDE_LDFLAGS)
AC_SUBST(KDE_INCLUDES)

AC_REQUIRE([KDE_CHECK_EXTRA_LIBS])

all_libraries="$all_libraries $USER_LDFLAGS"
all_includes="$all_includes $USER_INCLUDES"
AC_SUBST(all_includes)
AC_SUBST(all_libraries)

AC_SUBST(AUTODIRS)
])

AC_DEFUN([KDE_CHECK_EXTRA_LIBS],
[
AC_MSG_CHECKING(for extra includes)
AC_ARG_WITH(extra-includes, [  --with-extra-includes=DIR
                          adds non standard include paths],
  kde_use_extra_includes="$withval",
  kde_use_extra_includes=NONE
)
kde_extra_includes=
if test -n "$kde_use_extra_includes" && \
   test "$kde_use_extra_includes" != "NONE"; then

   ac_save_ifs=$IFS
   IFS=':'
   for dir in $kde_use_extra_includes; do
     kde_extra_includes="$kde_extra_includes $dir"
     USER_INCLUDES="$USER_INCLUDES -I$dir"
   done
   IFS=$ac_save_ifs
   kde_use_extra_includes="added"
else
   kde_use_extra_includes="no"
fi
AC_SUBST(USER_INCLUDES)

AC_MSG_RESULT($kde_use_extra_includes)

kde_extra_libs=
AC_MSG_CHECKING(for extra libs)
AC_ARG_WITH(extra-libs, [  --with-extra-libs=DIR   adds non standard library paths],
  kde_use_extra_libs=$withval,
  kde_use_extra_libs=NONE
)
if test -n "$kde_use_extra_libs" && \
   test "$kde_use_extra_libs" != "NONE"; then

   ac_save_ifs=$IFS
   IFS=':'
   for dir in $kde_use_extra_libs; do
     kde_extra_libs="$kde_extra_libs $dir"
     KDE_EXTRA_RPATH="$KDE_EXTRA_RPATH -R $dir"
     USER_LDFLAGS="$USER_LDFLAGS -L$dir"
   done
   IFS=$ac_save_ifs
   kde_use_extra_libs="added"
else
   kde_use_extra_libs="no"
fi

AC_SUBST(USER_LDFLAGS)

AC_MSG_RESULT($kde_use_extra_libs)

])

AC_DEFUN([KDE_1_CHECK_PATH_HEADERS],
[
    AC_MSG_CHECKING([for KDE headers installed])
    AC_LANG_SAVE
    AC_LANG_CPLUSPLUS
cat > conftest.$ac_ext <<EOF
#ifdef STDC_HEADERS
# include <stdlib.h>
#endif
#include <stdio.h>
#include "confdefs.h"
#include <kapp.h>

int main() {
    printf("kde_htmldir=\\"%s\\"\n", KApplication::kde_htmldir().data());
    printf("kde_appsdir=\\"%s\\"\n", KApplication::kde_appsdir().data());
    printf("kde_icondir=\\"%s\\"\n", KApplication::kde_icondir().data());
    printf("kde_sounddir=\\"%s\\"\n", KApplication::kde_sounddir().data());
    printf("kde_datadir=\\"%s\\"\n", KApplication::kde_datadir().data());
    printf("kde_locale=\\"%s\\"\n", KApplication::kde_localedir().data());
    printf("kde_cgidir=\\"%s\\"\n", KApplication::kde_cgidir().data());
    printf("kde_confdir=\\"%s\\"\n", KApplication::kde_configdir().data());
    printf("kde_mimedir=\\"%s\\"\n", KApplication::kde_mimedir().data());
    printf("kde_toolbardir=\\"%s\\"\n", KApplication::kde_toolbardir().data());
    printf("kde_wallpaperdir=\\"%s\\"\n",
	KApplication::kde_wallpaperdir().data());
    printf("kde_bindir=\\"%s\\"\n", KApplication::kde_bindir().data());
    printf("kde_partsdir=\\"%s\\"\n", KApplication::kde_partsdir().data());
    printf("kde_servicesdir=\\"/tmp/dummy\\"\n");
    printf("kde_servicetypesdir=\\"/tmp/dummy\\"\n");
    printf("kde_moduledir=\\"/tmp/dummy\\"\n");
    printf("kde_styledir=\\"/tmp/dummy\\"\n");
    printf("kde_widgetdir=\\"/tmp/dummy\\"\n");
    return 0;
    }
EOF

 ac_compile='${CXX-g++} -c $CXXFLAGS $all_includes $CPPFLAGS conftest.$ac_ext'
 if AC_TRY_EVAL(ac_compile); then
   AC_MSG_RESULT(yes)
 else
   AC_MSG_ERROR([your system is not able to compile a small KDE application!
Check, if you installed the KDE header files correctly.
For more details about this problem, look at the end of config.log.])
  fi

  AC_LANG_RESTORE
])

AC_DEFUN([KDE_CHECK_KDEQTADDON],
[
AC_MSG_CHECKING(for kde-qt-addon)
AC_CACHE_VAL(kde_cv_have_kdeqtaddon,
[
 kde_ldflags_safe="$LDFLAGS"
 kde_libs_safe="$LIBS"
 kde_cxxflags_safe="$CXXFLAGS"

 LIBS="-lkde-qt-addon $LIBQT $LIBS"
 CXXFLAGS="$CXXFLAGS -I$prefix/include -I$prefix/include/kde $all_includes"
 LDFLAGS="$LDFLAGS $all_libraries $USER_LDFLAGS"

 AC_TRY_LINK([
   #include <qdom.h>
 ],
 [
   QDomDocument doc;
 ],
  kde_cv_have_kdeqtaddon=yes,
  kde_cv_have_kdeqtaddon=no
 )

 LDFLAGS=$kde_ldflags_safe
 LIBS=$kde_libs_safe
 CXXFLAGS=$kde_cxxflags_safe
])

AC_MSG_RESULT($kde_cv_have_kdeqtaddon)

if test "$kde_cv_have_kdeqtaddon" = "no"; then
  AC_MSG_ERROR([Can't find libkde-qt-addon. You need to install it first.
It is a separate package (and CVS module) named kde-qt-addon.])
fi
])

AC_DEFUN([KDE_CHECK_KIMGIO],
[
   AC_REQUIRE([AC_BASE_PATH_KDE])
   AC_REQUIRE([KDE_CHECK_EXTRA_LIBS])
   AC_REQUIRE([AC_FIND_TIFF])
   AC_REQUIRE([AC_FIND_JPEG])
   AC_REQUIRE([AC_FIND_PNG])
   AC_REQUIRE([KDE_CREATE_LIBS_ALIASES])

   if test "$1" = "existance"; then
     AC_LANG_SAVE
     AC_LANG_CPLUSPLUS
     kde_save_LIBS="$LIBS"
     LIBS="$LIBS $all_libraries $LIBJPEG $LIBTIFF $LIBPNG $LIBQT -lm"
     AC_CHECK_LIB(kimgio, kimgioRegister, [
      LIBKIMGIO_EXISTS=yes],LIBKIMGIO_EXISTS=no)
     LIBS="$kde_save_LIBS"
     AC_LANG_RESTORE
   else
     LIBKIMGIO_EXISTS=yes
   fi

   if test "$LIBKIMGIO_EXISTS" = "yes"; then
     LIB_KIMGIO='-lkimgio'
   else
     LIB_KIMGIO=''
   fi
   AC_SUBST(LIB_KIMGIO)
])

AC_DEFUN([KDE_CREATE_LIBS_ALIASES],
[
   AC_REQUIRE([KDE_MISC_TESTS])
   AC_REQUIRE([KDE_CHECK_LIBDL])
   AC_REQUIRE([K_PATH_X])

if test $kde_qtver = 3; then
   LIB_KDECORE='-lkdecore'
   AC_SUBST(LIB_KDECORE)
   LIB_KDEUI='-lkdeui'
   AC_SUBST(LIB_KDEUI)
   LIB_KIO='-lkio'
   AC_SUBST(LIB_KIO)
   LIB_SMB='-lsmb'
   AC_SUBST(LIB_SMB)
   LIB_KAB='-lkab'
   AC_SUBST(LIB_KAB)
   LIB_KHTML='-lkhtml'
   AC_SUBST(LIB_KHTML)
   LIB_KSPELL='-lkspell'
   AC_SUBST(LIB_KSPELL)
   LIB_KPARTS='-lkparts'
   AC_SUBST(LIB_KPARTS)
   LIB_KDEPRINT='-lkdeprint'
   AC_SUBST(LIB_KDEPRINT)
# these are for backward compatibility
   LIB_KSYCOCA='-lkio'
   AC_SUBST(LIB_KSYCOCA)
   LIB_KFILE='-lkio'
   AC_SUBST(LIB_KFILE)
elif test $kde_qtver = 2; then
   LIB_KDECORE='-lkdecore'
   AC_SUBST(LIB_KDECORE)
   LIB_KDEUI='-lkdeui'
   AC_SUBST(LIB_KDEUI)
   LIB_KIO='-lkio'
   AC_SUBST(LIB_KIO)
   LIB_KSYCOCA='-lksycoca'
   AC_SUBST(LIB_KSYCOCA)
   LIB_SMB='-lsmb'
   AC_SUBST(LIB_SMB)
   LIB_KFILE='-lkfile'
   AC_SUBST(LIB_KFILE)
   LIB_KAB='-lkab'
   AC_SUBST(LIB_KAB)
   LIB_KHTML='-lkhtml'
   AC_SUBST(LIB_KHTML)
   LIB_KSPELL='-lkspell'
   AC_SUBST(LIB_KSPELL)
   LIB_KPARTS='-lkparts'
   AC_SUBST(LIB_KPARTS)
   LIB_KDEPRINT='-lkdeprint'
   AC_SUBST(LIB_KDEPRINT)
else
   LIB_KDECORE='-lkdecore -lXext $(LIB_QT)'
   AC_SUBST(LIB_KDECORE)
   LIB_KDEUI='-lkdeui $(LIB_KDECORE)'
   AC_SUBST(LIB_KDEUI)
   LIB_KFM='-lkfm $(LIB_KDECORE)'
   AC_SUBST(LIB_KFM)
   LIB_KFILE='-lkfile $(LIB_KFM) $(LIB_KDEUI)'
   AC_SUBST(LIB_KFILE)
   LIB_KAB='-lkab $(LIB_KIMGIO) $(LIB_KDECORE)'
   AC_SUBST(LIB_KAB)
fi
])

AC_DEFUN([AC_PATH_KDE],
[
  AC_BASE_PATH_KDE
  AC_ARG_ENABLE(path-check, [  --disable-path-check    don't try to find out, where to install],
  [
  if test "$enableval" = "no";
    then ac_use_path_checking="default"
    else ac_use_path_checking=""
  fi
  ],
  [
  if test "$kde_qtver" = 1;
    then ac_use_path_checking=""
    else ac_use_path_checking="default"
  fi
  ]
  )

  AC_CREATE_KFSSTND($ac_use_path_checking)

  AC_SUBST_KFSSTND
  KDE_CREATE_LIBS_ALIASES
])

dnl obsolete
AC_DEFUN([AC_CHECK_SETENV],
[
   AC_OBSOLETE([$0], [; instead use AC_CHECK_FUNCS([setenv unsetenv])])dnl 
   AC_CHECK_FUNCS([setenv unsetenv])
])

AC_DEFUN([AC_CHECK_GETDOMAINNAME],
[
AC_MSG_CHECKING(for getdomainname)
AC_CACHE_VAL(ac_cv_func_getdomainname,
[
AC_LANG_SAVE
AC_LANG_CPLUSPLUS
save_CXXFLAGS="$CXXFLAGS"
kde_safe_LIBS="$LIBS"
LIBS="$LIBS $X_EXTRA_LIBS"
if test "$GCC" = "yes"; then
CXXFLAGS="$CXXFLAGS -pedantic-errors"
fi
AC_TRY_COMPILE([
#include <stdlib.h>
#include <unistd.h>
],
[
char buffer[200];
getdomainname(buffer, 200);
],
ac_cv_func_getdomainname=yes,
ac_cv_func_getdomainname=no)
CXXFLAGS="$save_CXXFLAGS"
LIBS=$kde_safe_LIBS
AC_LANG_RESTORE
])
AC_MSG_RESULT($ac_cv_func_getdomainname)

AC_MSG_CHECKING([if getdomainname needs custom prototype])
AC_CACHE_VAL(ac_cv_proto_getdomainname,
[
AC_LANG_SAVE
AC_LANG_CPLUSPLUS
if eval "test \"`echo $ac_cv_func_getdomainname`\" = yes"; then
  ac_cv_proto_getdomainname=no
else
  kde_safe_libs=$LIBS
  LIBS="$LIBS $X_EXTRA_LIBS"
  AC_TRY_LINK([
#include <stdlib.h>
#include <unistd.h>

extern "C" int getdomainname (char *, int);
],
[
char buffer[200];
getdomainname(buffer, 200);
],
  ac_cv_func_getdomainname=yes
  ac_cv_proto_getdomainname=yes,
  AC_MSG_RESULT([fatal error])
  AC_MSG_ERROR([getdomainname unavailable]))
fi
LIBS=$kde_safe_libs
AC_LANG_RESTORE
])
AC_MSG_RESULT($ac_cv_proto_getdomainname)

if eval "test \"`echo $ac_cv_func_getdomainname`\" = yes"; then
  AC_DEFINE(HAVE_GETDOMAINNAME, 1, [Define if you have getdomainname])
fi
if eval "test \"`echo $ac_cv_proto_getdomainname`\" = no"; then
  AC_DEFINE(HAVE_GETDOMAINNAME_PROTO, 1,
  [Define if you have getdomainname prototype])
fi

])

AC_DEFUN([AC_CHECK_GETHOSTNAME],
[

AC_MSG_CHECKING([for gethostname])
AC_CACHE_VAL(ac_cv_func_gethostname,
[
AC_LANG_SAVE
AC_LANG_CPLUSPLUS
save_CXXFLAGS="$CXXFLAGS"
if test "$GCC" = "yes"; then
CXXFLAGS="$CXXFLAGS -pedantic-errors"
fi
AC_TRY_LINK([
#include <stdlib.h>
#include <unistd.h>
],
[
char buffer[200];
gethostname(buffer, 200);
],
ac_cv_func_gethostname=yes,
ac_cv_func_gethostname=no)
CXXFLAGS="$save_CXXFLAGS"
AC_LANG_RESTORE
])
AC_MSG_RESULT($ac_cv_func_gethostname)

AC_MSG_CHECKING([if gethostname needs custom prototype])
AC_CACHE_VAL(ac_cv_proto_gethostname,
[
AC_LANG_SAVE
AC_LANG_CPLUSPLUS
if eval "test \"`echo $ac_cv_func_gethostname`\" = yes"; then
  ac_cv_proto_gethostname=no
else
  AC_TRY_LINK([
#include <stdlib.h>
#include <unistd.h>

extern "C" int gethostname (char *, int);
],
[
char buffer[200];
gethostname(buffer, 200);
],
  ac_cv_func_gethostname=yes
  ac_cv_proto_gethostname=yes,
  AC_MSG_RESULT([fatal error])
  AC_MSG_ERROR(gethostname unavailable))
fi
AC_LANG_RESTORE
])
AC_MSG_RESULT($ac_cv_proto_gethostname)

if eval "test \"`echo $ac_cv_proto_gethostname`\" = no"; then
  AC_DEFINE(HAVE_GETHOSTNAME_PROTO, 1,
  [Define if you have gethostname prototype])
fi
if eval "test \"`echo $ac_cv_func_gethostname`\" = yes"; then
  AC_DEFINE(HAVE_GETHOSTNAME, 1, [Define if you have gethostname])
fi
])

AC_DEFUN([AC_CHECK_USLEEP],
[
AC_MSG_CHECKING([for usleep])
AC_CACHE_VAL(ac_cv_func_usleep,
[
AC_LANG_SAVE
AC_LANG_CPLUSPLUS
ac_libs_safe="$LIBS"
LIBS="$LIBS $LIBUCB"
AC_TRY_LINK([
#include <stdlib.h>
#include <unistd.h>
],
[
usleep(200);
],
ac_cv_func_usleep=yes,
ac_cv_func_usleep=no)
LIBS="$ac_libs_safe"
AC_LANG_RESTORE
])
AC_MSG_RESULT($ac_cv_func_usleep)
if eval "test \"`echo $ac_cv_func_usleep`\" = yes"; then
  AC_DEFINE(HAVE_USLEEP, 1, [Define if you have the usleep function])
fi
])

AC_DEFUN([AC_CHECK_RANDOM],
[
AC_MSG_CHECKING([for random])
AC_CACHE_VAL(ac_cv_func_random,
[
AC_LANG_SAVE
AC_LANG_CPLUSPLUS
ac_libs_safe="$LIBS"
LIBS="$LIBS $LIBUCB"
AC_TRY_LINK([
#include <stdlib.h>
],
[
random();
],
ac_cv_func_random=yes,
ac_cv_func_random=no)
LIBS="$ac_libs_safe"
AC_LANG_RESTORE
])
AC_MSG_RESULT($ac_cv_func_random)
if eval "test \"`echo $ac_cv_func_random`\" = yes"; then
  AC_DEFINE(HAVE_RANDOM, 1, [Define if you have random])
fi
])

AC_DEFUN([AC_FIND_GIF],
   [AC_MSG_CHECKING([for giflib])
AC_CACHE_VAL(ac_cv_lib_gif,
[ac_save_LIBS="$LIBS"
if test "x$kde_use_qt_emb" != "xyes"; then
LIBS="$all_libraries -lgif -lX11 $LIBSOCKET"
else
LIBS="$all_libraries -lgif"
fi
AC_TRY_LINK(dnl
[
#ifdef __cplusplus
extern "C" {
#endif
int GifLastError(void);
#ifdef __cplusplus
}
#endif
/* We use char because int might match the return type of a gcc2
    builtin and then its argument prototype would still apply.  */
],
            [return GifLastError();],
            eval "ac_cv_lib_gif=yes",
            eval "ac_cv_lib_gif=no")
LIBS="$ac_save_LIBS"
])dnl
if eval "test \"`echo $ac_cv_lib_gif`\" = yes"; then
  AC_MSG_RESULT(yes)
  AC_DEFINE_UNQUOTED(HAVE_LIBGIF, 1, [Define if you have libgif])
else
  AC_MSG_ERROR(You need giflib30. Please install the kdesupport package)
fi
])

AC_DEFUN([KDE_FIND_JPEG_HELPER],
[
AC_MSG_CHECKING([for libjpeg$2])
AC_CACHE_VAL(ac_cv_lib_jpeg_$1,
[
AC_LANG_C
ac_save_LIBS="$LIBS"
LIBS="$all_libraries $USER_LDFLAGS -ljpeg$2 -lm"
ac_save_CFLAGS="$CFLAGS"
CFLAGS="$CFLAGS $all_includes $USER_INCLUDES"
AC_TRY_LINK(
[/* Override any gcc2 internal prototype to avoid an error.  */
struct jpeg_decompress_struct;
typedef struct jpeg_decompress_struct * j_decompress_ptr;
typedef int size_t;
#ifdef __cplusplus
extern "C" {
#endif
    void jpeg_CreateDecompress(j_decompress_ptr cinfo,
                                    int version, size_t structsize);
#ifdef __cplusplus
}
#endif
/* We use char because int might match the return type of a gcc2
    builtin and then its argument prototype would still apply.  */
],
            [jpeg_CreateDecompress(0L, 0, 0);],
            eval "ac_cv_lib_jpeg_$1=-ljpeg$2",
            eval "ac_cv_lib_jpeg_$1=no")
LIBS="$ac_save_LIBS"
CFLAGS="$ac_save_CFLAGS"
])

if eval "test ! \"`echo $ac_cv_lib_jpeg_$1`\" = no"; then
  LIBJPEG="$ac_cv_lib_jpeg_$1"
  AC_MSG_RESULT($ac_cv_lib_jpeg_$1)
else
  AC_MSG_RESULT(no)
  $3
fi

])

AC_DEFUN([AC_FIND_JPEG],
[
dnl first look for libraries
KDE_FIND_JPEG_HELPER(6b, 6b,
   KDE_FIND_JPEG_HELPER(normal, [],
    [
       LIBJPEG=
    ]
   )
)

dnl then search the headers (can't use simply AC_TRY_xxx, as jpeglib.h
dnl requires system dependent includes loaded before it)
jpeg_incdirs="/usr/include /usr/local/include $kde_extra_includes"
AC_FIND_FILE(jpeglib.h, $jpeg_incdirs, jpeg_incdir)
test "x$jpeg_incdir" = xNO && jpeg_incdir=

dnl if headers _and_ libraries are missing, this is no error, and we
dnl continue with a warning (the user will get no jpeg support in khtml)
dnl if only one is missing, it means a configuration error, but we still
dnl only warn
if test -n "$jpeg_incdir" && test -n "$LIBJPEG" ; then
  AC_DEFINE_UNQUOTED(HAVE_LIBJPEG, 1, [Define if you have libjpeg])
else
  if test -n "$jpeg_incdir" || test -n "$LIBJPEG" ; then
    AC_MSG_WARN([
There is an installation error in jpeg support. You seem to have only one
of either the headers _or_ the libraries installed. You may need to either
provide correct --with-extra-... options, or the development package of
libjpeg6b. You can get a source package of libjpeg from http://www.ijg.org/
Disabling JPEG support.
])
  else
    AC_MSG_WARN([libjpeg not found. disable JPEG support.])
  fi
  jpeg_incdir=
  LIBJPEG=
fi

AC_SUBST(LIBJPEG)
])

AC_DEFUN([KDE_CHECK_QT_JPEG],
[
AC_MSG_CHECKING([if Qt needs $LIBJPEG])
AC_CACHE_VAL(kde_cv_qt_jpeg,
[
AC_LANG_SAVE
AC_LANG_CPLUSPLUS
ac_save_LIBS="$LIBS"
LIBS="$all_libraries $USER_LDFLAGS $LIBQT"
LIBS=`echo $LIBS | sed "s/$LIBJPEG//"`
ac_save_CXXFLAGS="$CXXFLAGS"
CXXFLAGS="$CXXFLAGS $all_includes $USER_INCLUDES"
AC_TRY_LINK(
[#include <qapplication.h>],
            [
            int argc;
            char** argv;
            QApplication app(argc, argv);],
            eval "kde_cv_qt_jpeg=no",
            eval "kde_cv_qt_jpeg=yes")
LIBS="$ac_save_LIBS"
CXXFLAGS="$ac_save_CXXFLAGS"
AC_LANG_RESTORE
])

if eval "test ! \"`echo $kde_cv_qt_jpeg`\" = no"; then
  AC_MSG_RESULT(yes)
  LIBJPEG_QT='$(LIBJPEG)'
else
  AC_MSG_RESULT(no)
  LIBJPEG_QT=
fi

])

AC_DEFUN([AC_FIND_ZLIB],
[
AC_REQUIRE([KDE_CHECK_EXTRA_LIBS])
AC_MSG_CHECKING([for libz])
AC_CACHE_VAL(ac_cv_lib_z,
[
AC_LANG_C
kde_save_LIBS="$LIBS"
LIBS="$all_libraries $USER_LDFLAGS -lz $LIBSOCKET"
kde_save_CFLAGS="$CFLAGS"
CFLAGS="$CFLAGS $all_includes $USER_INCLUDES"
AC_TRY_LINK(dnl
[
#include<zlib.h>
],
            [return (zlibVersion() == ZLIB_VERSION); ],
            eval "ac_cv_lib_z='-lz'",
            eval "ac_cv_lib_z=no")
LIBS="$kde_save_LIBS"
CFLAGS="$kde_save_CFLAGS"
])dnl
if test ! "$ac_cv_lib_z" = no; then
  AC_DEFINE_UNQUOTED(HAVE_LIBZ, 1, [Define if you have libz])
  LIBZ="$ac_cv_lib_z"
  AC_SUBST(LIBZ)
  AC_MSG_RESULT($ac_cv_lib_z)
else
  AC_MSG_ERROR(not found. Check your installation and look into config.log)
  LIBZ=""
  AC_SUBST(LIBZ)
fi
])

AC_DEFUN([KDE_TRY_TIFFLIB],
[
AC_MSG_CHECKING([for libtiff $1])

AC_CACHE_VAL(kde_cv_libtiff_$1,
[
AC_LANG_SAVE
AC_LANG_CPLUSPLUS
kde_save_LIBS="$LIBS"
if test "x$kde_use_qt_emb" != "xyes"; then
LIBS="$all_libraries $USER_LDFLAGS -l$1 $LIBJPEG $LIBZ -lX11 $LIBSOCKET -lm"
else
LIBS="$all_libraries $USER_LDFLAGS -l$1 $LIBJPEG $LIBZ -lm"
fi
kde_save_CXXFLAGS="$CXXFLAGS"
CXXFLAGS="$CXXFLAGS $all_includes $USER_INCLUDES"

AC_TRY_LINK(dnl
[
#include<tiffio.h>
],
    [return (TIFFOpen( "", "r") == 0); ],
[
    kde_cv_libtiff_$1="-l$1 $LIBJPEG $LIBZ"
], [
    kde_cv_libtiff_$1=no
])

LIBS="$kde_save_LIBS"
CXXFLAGS="$kde_save_CXXFLAGS"
AC_LANG_RESTORE
])

if test "$kde_cv_libtiff_$1" = "no"; then
    AC_MSG_RESULT(no)
    LIBTIFF=""
    $3
else
    LIBTIFF="$kde_cv_libtiff_$1"
    AC_MSG_RESULT(yes)
    AC_DEFINE_UNQUOTED(HAVE_LIBTIFF, 1, [Define if you have libtiff])
    $2
fi

])

AC_DEFUN([AC_FIND_TIFF],
[
AC_REQUIRE([K_PATH_X])
AC_REQUIRE([AC_FIND_ZLIB])
AC_REQUIRE([AC_FIND_JPEG])
AC_REQUIRE([KDE_CHECK_EXTRA_LIBS])

KDE_TRY_TIFFLIB(tiff, [],
   KDE_TRY_TIFFLIB(tiff34))

AC_SUBST(LIBTIFF)
])


AC_DEFUN([AC_FIND_PNG],
[
AC_REQUIRE([KDE_CHECK_EXTRA_LIBS])
AC_REQUIRE([AC_FIND_ZLIB])
AC_MSG_CHECKING([for libpng])
AC_CACHE_VAL(ac_cv_lib_png,
[
kde_save_LIBS="$LIBS"
if test "x$kde_use_qt_emb" != "xyes"; then
LIBS="$LIBS $all_libraries $USER_LDFLAGS -lpng $LIBZ -lm -lX11 $LIBSOCKET"
else
LIBS="$LIBS $all_libraries $USER_LDFLAGS -lpng $LIBZ -lm"
fi
kde_save_CFLAGS="$CFLAGS"
CFLAGS="$CFLAGS $all_includes $USER_INCLUDES"
AC_LANG_C
AC_TRY_LINK(dnl
    [
    #include<png.h>
    ],
    [
    png_structp png_ptr = png_create_read_struct(  /* image ptr */
		PNG_LIBPNG_VER_STRING, 0, 0, 0 );
    return( png_ptr != 0 );
    ],
    eval "ac_cv_lib_png='-lpng $LIBZ -lm'",
    eval "ac_cv_lib_png=no"
)
LIBS="$kde_save_LIBS"
CFLAGS="$kde_save_CFLAGS"
])dnl
if eval "test ! \"`echo $ac_cv_lib_png`\" = no"; then
  AC_DEFINE_UNQUOTED(HAVE_LIBPNG, 1, [Define if you have libpng])
  LIBPNG="$ac_cv_lib_png"
  AC_SUBST(LIBPNG)
  AC_MSG_RESULT($ac_cv_lib_png)
else
  AC_MSG_RESULT(no)
  LIBPNG=""
  AC_SUBST(LIBPNG)
fi
])

AC_DEFUN([AC_CHECK_BOOL],
[
  AC_DEFINE_UNQUOTED(HAVE_BOOL, 1, [You _must_ have bool])
])

AC_DEFUN([AC_CHECK_GNU_EXTENSIONS],
[
AC_MSG_CHECKING(if you need GNU extensions)
AC_CACHE_VAL(ac_cv_gnu_extensions,
[
cat > conftest.c << EOF
#include <features.h>

#ifdef __GNU_LIBRARY__
yes
#endif
EOF

if (eval "$ac_cpp conftest.c") 2>&5 |
  egrep "yes" >/dev/null 2>&1; then
  rm -rf conftest*
  ac_cv_gnu_extensions=yes
else
  ac_cv_gnu_extensions=no
fi
])

AC_MSG_RESULT($ac_cv_gnu_extensions)
if test "$ac_cv_gnu_extensions" = "yes"; then
  AC_DEFINE_UNQUOTED(_GNU_SOURCE, 1, [Define if you need to use the GNU extensions])
fi
])

AC_DEFUN([KDE_CHECK_COMPILER_FLAG],
[
AC_MSG_CHECKING(whether $CXX supports -$1)
kde_cache=`echo $1 | sed 'y% .=/+-%____p_%'`
AC_CACHE_VAL(kde_cv_prog_cxx_$kde_cache,
[
  AC_LANG_SAVE
  AC_LANG_CPLUSPLUS
  save_CXXFLAGS="$CXXFLAGS"
  CXXFLAGS="$CXXFLAGS -$1"
  AC_TRY_LINK([],[ return 0; ], [eval "kde_cv_prog_cxx_$kde_cache=yes"], [])
  CXXFLAGS="$save_CXXFLAGS"
  AC_LANG_RESTORE
])
if eval "test \"`echo '$kde_cv_prog_cxx_'$kde_cache`\" = yes"; then
 AC_MSG_RESULT(yes)
 :
 $2
else
 AC_MSG_RESULT(no)
 :
 $3
fi
])

dnl AC_REMOVE_FORBIDDEN removes forbidden arguments from variables
dnl use: AC_REMOVE_FORBIDDEN(CC, [-forbid -bad-option whatever])
dnl it's all white-space separated
AC_DEFUN([AC_REMOVE_FORBIDDEN],
[ __val=$$1
  __forbid=" $2 "
  if test -n "$__val"; then
    __new=""
    ac_save_IFS=$IFS
    IFS=" 	"
    for i in $__val; do
      case "$__forbid" in
        *" $i "*) AC_MSG_WARN([found forbidden $i in $1, removing it]) ;;
	*) # Careful to not add spaces, where there were none, because otherwise
	   # libtool gets confused, if we change e.g. CXX
	   if test -z "$__new" ; then __new=$i ; else __new="$__new $i" ; fi ;;
      esac
    done
    IFS=$ac_save_IFS
    $1=$__new
  fi
])

dnl AC_VALIDIFY_CXXFLAGS checks for forbidden flags the user may have given
AC_DEFUN([AC_VALIDIFY_CXXFLAGS],
[dnl
if test "x$kde_use_qt_emb" != "xyes"; then
 AC_REMOVE_FORBIDDEN(CXX, [-fno-rtti -rpath])
 AC_REMOVE_FORBIDDEN(CXXFLAGS, [-fno-rtti -rpath])
else
 AC_REMOVE_FORBIDDEN(CXX, [-rpath])
 AC_REMOVE_FORBIDDEN(CXXFLAGS, [-rpath])
fi
])

AC_DEFUN([AC_CHECK_COMPILERS],
[
  AC_ARG_ENABLE(debug,[  --enable-debug[=ARG]    enables debug symbols (yes|no|full) [default=no]],
  [
    case $enableval in
      yes)
        kde_use_debug_code="yes"
        kde_use_debug_define=no
        ;;
      full)
        kde_use_debug_code="full"
        kde_use_debug_define=no
        ;;
      *)
        kde_use_debug_code="no"
        kde_use_debug_define=yes
        ;;
    esac
  ], 
    [kde_use_debug_code="no"
      kde_use_debug_define=no
  ])

  dnl Just for configure --help
  AC_ARG_ENABLE(dummyoption,[  --disable-debug         disables debug output and debug symbols [default=no]],[],[])

  AC_ARG_ENABLE(strict,[  --enable-strict         compiles with strict compiler options (may not work!)],
   [
    if test $enableval = "no"; then
         kde_use_strict_options="no"
       else
         kde_use_strict_options="yes"
    fi
   ], [kde_use_strict_options="no"])

  AC_ARG_ENABLE(warnings,[  --enable-warnings       compiles with -Wall and similiar],
   [
    if test $enableval = "no"; then
         kde_use_warnings="no"
       else
         kde_use_warnings="yes"
    fi
   ], [kde_use_warnings="no"])

  dnl enable warnings for debug build
  if test "$kde_use_debug_code" != "no"; then
    kde_use_warnings=yes
  fi

  AC_ARG_ENABLE(profile,[  --enable-profile        creates profiling infos [default=no]],
    [kde_use_profiling=$enableval],
    [kde_use_profiling="no"]
  )

  dnl this prevents stupid AC_PROG_CC to add "-g" to the default CFLAGS
  CFLAGS=" $CFLAGS"

  AC_PROG_CC 

  AC_PROG_CPP

  if test "$GCC" = "yes"; then
    if test "$kde_use_debug_code" != "no"; then
      if test $kde_use_debug_code = "full"; then
        CFLAGS="-g3 $CFLAGS"
      else
        CFLAGS="-g -O2 $CFLAGS"
      fi
    else
      CFLAGS="-O2 $CFLAGS"
    fi
  fi

  if test "$kde_use_debug_define" = "yes"; then
    CFLAGS="-DNDEBUG $CFLAGS"
  fi


  case "$host" in
  *-*-sysv4.2uw*) CFLAGS="-D_UNIXWARE $CFLAGS";;
  *-*-sysv5uw7*) CFLAGS="-D_UNIXWARE7 $CFLAGS";;
  esac

  if test -z "$LDFLAGS" && test "$kde_use_debug_code" = "no" && test "$GCC" = "yes"; then
     LDFLAGS=""
  fi

  CXXFLAGS=" $CXXFLAGS"

  AC_PROG_CXX

  if test "$GXX" = "yes" || test "$CXX" = "KCC"; then
    if test "$kde_use_debug_code" != "no"; then
      if test "$CXX" = "KCC"; then
        CXXFLAGS="+K0 -Wall -pedantic -W -Wpointer-arith -Wmissing-prototypes -Wwrite-strings $CXXFLAGS"
      else
        if test "$kde_use_debug_code" = "full"; then
          CXXFLAGS="-g3 $CXXFLAGS"
        else
          CXXFLAGS="-g -O2 $CXXFLAGS"
        fi
      fi
      KDE_CHECK_COMPILER_FLAG(fno-builtin,[CXXFLAGS="-fno-builtin $CXXFLAGS"])

      dnl convenience compiler flags
      KDE_CHECK_COMPILER_FLAG(Woverloaded-virtual, [WOVERLOADED_VIRTUAL="-Woverloaded-virtual"], [WOVERLOADED_VRITUAL=""])
      AC_SUBST(WOVERLOADED_VIRTUAL)
    else
      if test "$CXX" = "KCC"; then
        CXXFLAGS="+K3 $CXXFLAGS"
      else
        CXXFLAGS="-O2 $CXXFLAGS"
      fi  
    fi
  fi

  if test "$kde_use_debug_define" = "yes"; then
    CXXFLAGS="-DNDEBUG -DNO_DEBUG $CXXFLAGS"
  fi  

  if test "$kde_use_profiling" = "yes"; then
    KDE_CHECK_COMPILER_FLAG(pg,
    [
      CFLAGS="-pg $CFLAGS"
      CXXFLAGS="-pg $CXXFLAGS"
    ])
  fi

  if test "$kde_use_warnings" = "yes"; then
      if test "$GCC" = "yes"; then
        case $host in
          *-*-linux-gnu)	
            CFLAGS="-ansi -W -Wall -pedantic -Wshadow -Wpointer-arith -Wmissing-prototypes -Wwrite-strings -D_XOPEN_SOURCE=500 -D_BSD_SOURCE $CFLAGS"
            CXXFLAGS="-ansi -D_XOPEN_SOURCE=500 -D_BSD_SOURCE -Wcast-align -Wconversion $CXXFLAGS"
          ;;
        esac
        CXXFLAGS="-Wall -pedantic -W -Wpointer-arith -Wmissing-prototypes -Wwrite-strings $CXXFLAGS"
        KDE_CHECK_COMPILER_FLAG(Wundef,[CXXFLAGS="-Wundef $CXXFLAGS"])
        KDE_CHECK_COMPILER_FLAG(Wbad-function-cast,[CXXFLAGS="-Wbad-function-cast $CXXFLAGS"])
        KDE_CHECK_COMPILER_FLAG(Wno-long-long,[CXXFLAGS="-Wno-long-long $CXXFLAGS"])
        KDE_CHECK_COMPILER_FLAG(Wnon-virtual-dtor,[CXXFLAGS="-Wnon-virtual-dtor $CXXFLAGS"])
     fi
  fi

  if test "$GCC" = "yes" && test "$kde_use_strict_options" = "yes"; then
    CXXFLAGS="-Wcast-qual -Wshadow -Wcast-align $CXXFLAGS"
  fi
    
  if test "$GXX" = "yes"; then
    KDE_CHECK_COMPILER_FLAG(fno-exceptions,[CXXFLAGS="$CXXFLAGS -fno-exceptions"])
    KDE_CHECK_COMPILER_FLAG(fno-check-new, [CXXFLAGS="$CXXFLAGS -fno-check-new"])
    KDE_CHECK_COMPILER_FLAG(fexceptions, [USE_EXCEPTIONS="-fexceptions"], USE_EXCEPTIONS=	)
  fi
  if test "$CXX" = "KCC"; then
    dnl unfortunately we currently cannot disable exception support in KCC
    dnl because doing so is binary incompatible and Qt by default links with exceptions :-(
    dnl KDE_CHECK_COMPILER_FLAG(-no_exceptions,[CXXFLAGS="$CXXFLAGS --no_exceptions"])
    dnl KDE_CHECK_COMPILER_FLAG(-exceptions, [USE_EXCEPTIONS="--exceptions"], USE_EXCEPTIONS=	)

    AC_ARG_ENABLE(pch,[  --enable-pch            enables precompiled header support (currently only KCC) [default=no]],
    [
      kde_use_pch=$enableval
    ],[kde_use_pch=no])
 
    if test "$kde_use_pch" = "yes"; then
      dnl TODO: support --pch-dir!
      KDE_CHECK_COMPILER_FLAG(-pch,[CXXFLAGS="$CXXFLAGS --pch"])
      dnl the below works (but the dir must exist), but it's
      dnl useless for a whole package.
      dnl The are precompiled headers for each source file, so when compiling
      dnl from scratch, it doesn't make a difference, and they take up
      dnl around ~5Mb _per_ sourcefile.
      dnl KDE_CHECK_COMPILER_FLAG(-pch_dir /tmp,
      dnl   [CXXFLAGS="$CXXFLAGS --pch_dir `pwd`/pcheaders"])
    fi
    dnl this flag controls inlining. by default KCC inlines in optimisation mode
    dnl all implementations that are defined inside the class {} declaration. 
    dnl because of templates-compatibility with broken gcc compilers, this
    dnl can cause excessive inlining. This flag limits it to a sane level
    KDE_CHECK_COMPILER_FLAG(-inline_keyword_space_time=6,[CXXFLAGS="$CXXFLAGS --inline_keyword_space_time=6"])
    KDE_CHECK_COMPILER_FLAG(-inline_auto_space_time=2,[CXXFLAGS="$CXXFLAGS --inline_auto_space_time=2"])
    KDE_CHECK_COMPILER_FLAG(-inline_implicit_space_time=2.0,[CXXFLAGS="$CXXFLAGS --inline_implicit_space_time=2.0"])
    KDE_CHECK_COMPILER_FLAG(-inline_generated_space_time=2.0,[CXXFLAGS="$CXXFLAGS --inline_generated_space_time=2.0"])
    dnl Some source files are shared between multiple executables
    dnl (or libraries) and some of those need template instantiations.
    dnl In that case KCC needs to compile those sources with
    dnl --one_instantiation_per_object.  To make it easy for us we compile
    dnl _all_ objects with that flag (--one_per is a shorthand).
    KDE_CHECK_COMPILER_FLAG(-one_per, [CXXFLAGS="$CXXFLAGS --one_per"])
  fi
  AC_SUBST(USE_EXCEPTIONS)
  dnl obsolete macro - provided to keep things going
  USE_RTTI=
  AC_SUBST(USE_RTTI)

  case "$host" in
      *-*-irix*)  test "$GXX" = yes && CXXFLAGS="-D_LANGUAGE_C_PLUS_PLUS -D__LANGUAGE_C_PLUS_PLUS $CXXFLAGS" ;;
      *-*-sysv4.2uw*) CXXFLAGS="-D_UNIXWARE $CXXFLAGS";;
      *-*-sysv5uw7*) CXXFLAGS="-D_UNIXWARE7 $CXXFLAGS";;
      *-*-solaris*) 
        if test "$GXX" = yes; then
          libstdcpp=`$CXX -print-file-name=libstdc++.so`
          if test ! -f $libstdcpp; then
             AC_MSG_ERROR([You've compiled gcc without --enable-shared. This doesn't work with KDE. Please recompile gcc with --enable-shared to receive a libstdc++.so])
          fi
        fi
        ;;
  esac

  AC_VALIDIFY_CXXFLAGS

  AC_PROG_CXXCPP

  # the following is to allow programs, that are known to
  # have problems when compiled with -O2
  if test -n "$CXXFLAGS"; then
      kde_safe_IFS=$IFS
      IFS=" "
      NOOPT_CXXFLAGS=""
      for i in $CXXFLAGS; do
        case $i in
          -O*)
                ;;
          *)
                NOOPT_CXXFLAGS="$NOOPT_CXXFLAGS $i"
                ;;
        esac
      done
      IFS=$kde_safe_IFS
  fi

  if test -n "$CFLAGS"; then
      kde_safe_IFS=$IFS
      IFS=" "
      NOOPT_CFLAGS=""
      for i in $CFLAGS; do
        case $i in
          -O*)
                ;;
          *)
                NOOPT_CFLAGS="$NOOPT_CFLAGS $i"
                ;;
        esac
      done
      IFS=$kde_safe_IFS
  fi

  if test "x$kde_use_qt_emb" = "xyes"; then
    NOOPT_CXXFLAGS="$NOOPT_CXXFLAGS -fno-rtti -DQWS"
  fi

  AC_SUBST(NOOPT_CXXFLAGS)
  AC_SUBST(NOOPT_CFLAGS)

  KDE_CHECK_FINAL

  ifdef([AM_DEPENDENCIES], AC_REQUIRE([KDE_ADD_DEPENDENCIES]), [])

  KDE_CXXFLAGS=
  AC_SUBST(KDE_CXXFLAGS)
])

AC_DEFUN([KDE_ADD_DEPENDENCIES],
[
   [A]M_DEPENDENCIES(CC)
   [A]M_DEPENDENCIES(CXX)
])

dnl just a wrapper to clean up configure.in
AC_DEFUN([KDE_PROG_LIBTOOL],
[
AC_REQUIRE([AC_CHECK_COMPILERS])
AC_REQUIRE([AC_ENABLE_SHARED])
AC_REQUIRE([AC_ENABLE_STATIC])

AC_REQUIRE([AC_LIBTOOL_DLOPEN])

AC_LANG_SAVE
AC_LANG_C
AC_OBJEXT
AC_EXEEXT
AC_LANG_RESTORE

AM_PROG_LIBTOOL
AC_LIBTOOL_CXX

LIBTOOL_SHELL="/bin/sh ./libtool"
#  LIBTOOL="$LIBTOOL --silent"
KDE_PLUGIN="-avoid-version -module -no-undefined \$(KDE_RPATH) \$(KDE_MT_LDFLAGS)"
AC_SUBST(KDE_PLUGIN)

AC_ARG_ENABLE(objprelink, [  --enable-objprelink     prelink apps using objprelink (experimental [only tested on linux/386])],
       kde_use_objprelink=$enableval, kde_use_objprelink=no)
  if test "x$kde_use_objprelink" = "xyes"; then 

      KDE_FIND_PATH(objprelink, OBJPRELINK, [], [kde_use_objprelink=no])   
     
      if test "x$kde_use_objprelink" = "xyes"; then
      AC_MSG_CHECKING([Patching libtool to run objprelink.])
      mv libtool libtool.orig
      cat > libtool <<\EOF
#! /bin/sh
for n ; do case $n in
  *.o)  test -r $n && echo objprelink $n && objprelink $n ;;
  *.lo) m=`basename $n .lo`".o" && test -r $m && echo objprelink $m && objprelink $m 
        m=".libs/$m" && test -r $m && echo objprelink $m && objprelink $m ;;
esac; done
EOF
      cat >> libtool libtool.orig
      rm libtool.orig
      chmod a+x libtool
      AC_MSG_RESULT(done)
	fi
  fi
])

AC_DEFUN([KDE_CHECK_TYPES],
[  AC_CHECK_SIZEOF(int, 4)dnl
  AC_CHECK_SIZEOF(long, 4)dnl
  AC_CHECK_SIZEOF(char *, 4)dnl
  AC_CHECK_SIZEOF(char, 1)dnl
])dnl

AC_DEFUN([KDE_DO_IT_ALL],
[
AC_CANONICAL_SYSTEM
AC_ARG_PROGRAM
AM_INIT_AUTOMAKE($1, $2)
AM_DISABLE_LIBRARIES
AC_PREFIX_DEFAULT(${KDEDIR:-/usr/local/kde})
AC_CHECK_COMPILERS
KDE_PROG_LIBTOOL
AM_KDE_WITH_NLS
AC_PATH_KDE
])

AC_DEFUN([AC_CHECK_RPATH],
[
AC_MSG_CHECKING(for rpath)
AC_ARG_ENABLE(rpath,
      [  --disable-rpath         do not use the rpath feature of ld],
      USE_RPATH=$enableval, USE_RPATH=yes)

if test -z "$KDE_RPATH" && test "$USE_RPATH" = "yes"; then

  KDE_RPATH="-R \$(kde_libraries)"

  if test -n "$qt_libraries"; then
    KDE_RPATH="$KDE_RPATH -R \$(qt_libraries)"
  fi
  dnl $x_libraries is set to /usr/lib in case
  if test -n "$X_LDFLAGS"; then
    KDE_RPATH="$KDE_RPATH -R \$(x_libraries)"
  fi
  if test -n "$KDE_EXTRA_RPATH"; then
    KDE_RPATH="$KDE_RPATH \$(KDE_EXTRA_RPATH)"
  fi
fi
AC_SUBST(KDE_EXTRA_RPATH)
AC_SUBST(KDE_RPATH)
AC_MSG_RESULT($USE_RPATH)
])

dnl Check for the type of the third argument of getsockname
AC_DEFUN([AC_CHECK_SOCKLEN_T], [
  AC_MSG_CHECKING(for socklen_t)
  AC_CACHE_VAL(ac_cv_socklen_t, [
    AC_LANG_SAVE
    AC_LANG_CPLUSPLUS
    AC_TRY_COMPILE([
#include <sys/types.h>
#include <sys/socket.h>
      ],[
socklen_t a=0;
getsockname(0,(struct sockaddr*)0, &a);
      ],
      ac_cv_socklen_t=socklen_t,
      AC_TRY_COMPILE([
#include <sys/types.h>
#include <sys/socket.h>
        ],[
int a=0;
getsockname(0,(struct sockaddr*)0, &a);
        ],
        ac_cv_socklen_t=int,
        ac_cv_socklen_t=size_t
      )
    )
    AC_LANG_RESTORE
  ])

  AC_MSG_RESULT($ac_cv_socklen_t)
  if test "$ac_cv_socklen_t" != "socklen_t"; then
    AC_DEFINE_UNQUOTED(socklen_t, $ac_cv_socklen_t,
        [Define the real type of socklen_t])
  fi
  AC_DEFINE_UNQUOTED(ksize_t, socklen_t, [Compatibility define])

])

dnl This is a merge of some macros out of the gettext aclocal.m4
dnl since we don't need anything, I took the things we need
dnl the copyright for them is:
dnl >
dnl Copyright (C) 1994, 1995, 1996, 1997, 1998 Free Software Foundation, Inc.
dnl This Makefile.in is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl This program is distributed in the hope that it will be useful,
dnl but WITHOUT ANY WARRANTY, to the extent permitted by law; without
dnl even the implied warranty of MERCHANTABILITY or FITNESS FOR A
dnl PARTICULAR PURPOSE.
dnl >
dnl for this file it is relicensed under LGPL

AC_DEFUN([AM_KDE_WITH_NLS],
  [
    dnl If we use NLS figure out what method

    AM_PATH_PROG_WITH_TEST_KDE(MSGFMT, msgfmt,
        [test -n "`$ac_dir/$ac_word --version 2>&1 | grep 'GNU gettext'`"], msgfmt)
    AC_PATH_PROG(GMSGFMT, gmsgfmt, $MSGFMT)

     if test -z "`$GMSGFMT --version 2>&1 | grep 'GNU gettext'`"; then
        AC_MSG_RESULT([found msgfmt program is not GNU msgfmt; ignore it])
        GMSGFMT=":"
      fi
      MSGFMT=$GMSGFMT
      AC_SUBST(GMSGFMT)
      AC_SUBST(MSGFMT)

      AM_PATH_PROG_WITH_TEST_KDE(XGETTEXT, xgettext,
	[test -z "`$ac_dir/$ac_word -h 2>&1 | grep '(HELP)'`"], :)

      dnl Test whether we really found GNU xgettext.
      if test "$XGETTEXT" != ":"; then
	dnl If it is no GNU xgettext we define it as : so that the
	dnl Makefiles still can work.
	if $XGETTEXT --omit-header /dev/null 2> /dev/null; then
	  : ;
	else
	  AC_MSG_RESULT(
	    [found xgettext programs is not GNU xgettext; ignore it])
	  XGETTEXT=":"
	fi
      fi
     AC_SUBST(XGETTEXT)

  ])

# Search path for a program which passes the given test.
# Ulrich Drepper <drepper@cygnus.com>, 1996.

# serial 1
# Stephan Kulow: I appended a _KDE against name conflicts

dnl AM_PATH_PROG_WITH_TEST_KDE(VARIABLE, PROG-TO-CHECK-FOR,
dnl   TEST-PERFORMED-ON-FOUND_PROGRAM [, VALUE-IF-NOT-FOUND [, PATH]])
AC_DEFUN([AM_PATH_PROG_WITH_TEST_KDE],
[# Extract the first word of "$2", so it can be a program name with args.
set dummy $2; ac_word=[$]2
AC_MSG_CHECKING([for $ac_word])
AC_CACHE_VAL(ac_cv_path_$1,
[case "[$]$1" in
  /*)
  ac_cv_path_$1="[$]$1" # Let the user override the test with a path.
  ;;
  *)
  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS="${IFS}:"
  for ac_dir in ifelse([$5], , $PATH, [$5]); do
    test -z "$ac_dir" && ac_dir=.
    if test -f $ac_dir/$ac_word; then
      if [$3]; then
	ac_cv_path_$1="$ac_dir/$ac_word"
	break
      fi
    fi
  done
  IFS="$ac_save_ifs"
dnl If no 4th arg is given, leave the cache variable unset,
dnl so AC_PATH_PROGS will keep looking.
ifelse([$4], , , [  test -z "[$]ac_cv_path_$1" && ac_cv_path_$1="$4"
])dnl
  ;;
esac])dnl
$1="$ac_cv_path_$1"
if test -n "[$]$1"; then
  AC_MSG_RESULT([$]$1)
else
  AC_MSG_RESULT(no)
fi
AC_SUBST($1)dnl
])


# Check whether LC_MESSAGES is available in <locale.h>.
# Ulrich Drepper <drepper@cygnus.com>, 1995.

# serial 1

AC_DEFUN([AM_LC_MESSAGES],
  [if test $ac_cv_header_locale_h = yes; then
    AC_CACHE_CHECK([for LC_MESSAGES], am_cv_val_LC_MESSAGES,
      [AC_TRY_LINK([#include <locale.h>], [return LC_MESSAGES],
       am_cv_val_LC_MESSAGES=yes, am_cv_val_LC_MESSAGES=no)])
    if test $am_cv_val_LC_MESSAGES = yes; then
      AC_DEFINE(HAVE_LC_MESSAGES, 1, [Define if your locale.h file contains LC_MESSAGES])
    fi
  fi])

dnl From Jim Meyering.
dnl FIXME: migrate into libit.

AC_DEFUN([AM_FUNC_OBSTACK],
[AC_CACHE_CHECK([for obstacks], am_cv_func_obstack,
 [AC_TRY_LINK([#include "obstack.h"],
	      [struct obstack *mem;obstack_free(mem,(char *) 0)],
	      am_cv_func_obstack=yes,
	      am_cv_func_obstack=no)])
 if test $am_cv_func_obstack = yes; then
   AC_DEFINE(HAVE_OBSTACK)
 else
   LIBOBJS="$LIBOBJS obstack.o"
 fi
])

dnl From Jim Meyering.  Use this if you use the GNU error.[ch].
dnl FIXME: Migrate into libit

AC_DEFUN([AM_FUNC_ERROR_AT_LINE],
[AC_CACHE_CHECK([for error_at_line], am_cv_lib_error_at_line,
 [AC_TRY_LINK([],[error_at_line(0, 0, "", 0, "");],
              am_cv_lib_error_at_line=yes,
	      am_cv_lib_error_at_line=no)])
 if test $am_cv_lib_error_at_line = no; then
   LIBOBJS="$LIBOBJS error.o"
 fi
 AC_SUBST(LIBOBJS)dnl
])

# Macro to add for using GNU gettext.
# Ulrich Drepper <drepper@cygnus.com>, 1995.

# serial 1
# Stephan Kulow: I put a KDE in it to avoid name conflicts

AC_DEFUN([AM_KDE_GNU_GETTEXT],
  [AC_REQUIRE([AC_PROG_MAKE_SET])dnl
   AC_REQUIRE([AC_PROG_RANLIB])dnl
   AC_REQUIRE([AC_HEADER_STDC])dnl
   AC_REQUIRE([AC_TYPE_OFF_T])dnl
   AC_REQUIRE([AC_TYPE_SIZE_T])dnl
   AC_REQUIRE([AC_FUNC_ALLOCA])dnl
   AC_REQUIRE([AC_FUNC_MMAP])dnl
   AC_REQUIRE([AM_KDE_WITH_NLS])dnl
   AC_CHECK_HEADERS([argz.h limits.h locale.h nl_types.h string.h values.h alloca.h])
   AC_CHECK_FUNCS([getcwd munmap putenv setenv setlocale strchr strcasecmp \
__argz_count __argz_stringify __argz_next])

   AC_MSG_CHECKING(for stpcpy)
   AC_CACHE_VAL(kde_cv_func_stpcpy,
   [
   kde_safe_cxxflags=$CXXFLAGS
   CXXFLAGS="-Wmissing-prototypes -Werror"
   AC_LANG_SAVE
   AC_LANG_CPLUSPLUS
   AC_TRY_COMPILE([
   #include <string.h>
   ],
   [
   char buffer[200];
   stpcpy(buffer, buffer);
   ],
   kde_cv_func_stpcpy=yes,
   kde_cv_func_stpcpy=no)
   AC_LANG_RESTORE
   CXXFLAGS=$kde_safe_cxxflags
   ])
   AC_MSG_RESULT($kde_cv_func_stpcpy)
   if eval "test \"`echo $kde_cv_func_stpcpy`\" = yes"; then
     AC_DEFINE(HAVE_STPCPY, 1, [Define if you have stpcpy])
   fi

   AM_LC_MESSAGES

   if test "x$CATOBJEXT" != "x"; then
     if test "x$ALL_LINGUAS" = "x"; then
       LINGUAS=
     else
       AC_MSG_CHECKING(for catalogs to be installed)
       NEW_LINGUAS=
       for lang in ${LINGUAS=$ALL_LINGUAS}; do
         case "$ALL_LINGUAS" in
          *$lang*) NEW_LINGUAS="$NEW_LINGUAS $lang" ;;
         esac
       done
       LINGUAS=$NEW_LINGUAS
       AC_MSG_RESULT($LINGUAS)
     fi

     dnl Construct list of names of catalog files to be constructed.
     if test -n "$LINGUAS"; then
       for lang in $LINGUAS; do CATALOGS="$CATALOGS $lang$CATOBJEXT"; done
     fi
   fi

  ])

AC_DEFUN([AC_HAVE_XPM],
 [AC_REQUIRE_CPP()dnl
  AC_REQUIRE([KDE_CHECK_EXTRA_LIBS])

 test -z "$XPM_LDFLAGS" && XPM_LDFLAGS=
 test -z "$XPM_INCLUDE" && XPM_INCLUDE=

 AC_ARG_WITH(xpm, [  --without-xpm           disable color pixmap XPM tests],
	xpm_test=$withval, xpm_test="yes")
 if test "x$xpm_test" = xno; then
   ac_cv_have_xpm=no
 else
   AC_MSG_CHECKING(for XPM)
   AC_CACHE_VAL(ac_cv_have_xpm,
   [
    AC_LANG_C
    ac_save_ldflags="$LDFLAGS"
    ac_save_cflags="$CFLAGS"
    if test "x$kde_use_qt_emb" != "xyes"; then
      LDFLAGS="$LDFLAGS $X_LDFLAGS $USER_LDFLAGS $LDFLAGS $XPM_LDFLAGS $all_libraries -lXpm -lX11 -lXext $LIBZ $LIBSOCKET"
    else
      LDFLAGS="$LDFLAGS $X_LDFLAGS $USER_LDFLAGS $LDFLAGS $XPM_LDFLAGS $all_libraries -lXpm $LIBZ $LIBSOCKET"
    fi
    CFLAGS="$CFLAGS $X_INCLUDES $USER_INCLUDES"
    test -n "$XPM_INCLUDE" && CFLAGS="-I$XPM_INCLUDE $CFLAGS"
    AC_TRY_LINK([#include <X11/xpm.h>],[],
	ac_cv_have_xpm="yes",ac_cv_have_xpm="no")
    LDFLAGS="$ac_save_ldflags"
    CFLAGS="$ac_save_cflags"
   ])dnl

  if test "$ac_cv_have_xpm" = no; then
    AC_MSG_RESULT(no)
    XPM_LDFLAGS=""
    XPMINC=""
    $2
  else
    AC_DEFINE(HAVE_XPM, 1, [Define if you have XPM support])
    if test "$XPM_LDFLAGS" = ""; then
       XPMLIB='-lXpm $(LIB_X11)'
    else
       XPMLIB="-L$XPM_LDFLAGS -lXpm "'$(LIB_X11)'
    fi
    if test "$XPM_INCLUDE" = ""; then
       XPMINC=""
    else
       XPMINC="-I$XPM_INCLUDE"
    fi
    AC_MSG_RESULT(yes)
    $1
  fi
 fi
 AC_SUBST(XPMINC)
 AC_SUBST(XPMLIB)
])

AC_DEFUN([AC_HAVE_DPMS],
 [AC_REQUIRE_CPP()dnl
  AC_REQUIRE([KDE_CHECK_EXTRA_LIBS])

 test -z "$DPMS_LDFLAGS" && DPMS_LDFLAGS=
 test -z "$DPMS_INCLUDE" && DPMS_INCLUDE=
 DPMS_LIB=

 AC_ARG_WITH(dpms, [  --without-dpms          disable DPMS power saving],
	dpms_test=$withval, dpms_test="yes")
 if test "x$dpms_test" = xno; then
   ac_cv_have_dpms=no
 else
   AC_MSG_CHECKING(for DPMS)
   dnl Note: ac_cv_have_dpms can be no, yes, or -lXdpms.
   dnl 'yes' means DPMS_LIB="", '-lXdpms' means DPMS_LIB="-lXdpms".
   AC_CACHE_VAL(ac_cv_have_dpms,
   [
    if test "x$kde_use_qt_emb" = "xyes"; then
      AC_MSG_RESULT(no)
      ac_cv_have_dpms="no"
    else
      AC_LANG_C
      ac_save_ldflags="$LDFLAGS"
      ac_save_cflags="$CFLAGS"
      ac_save_libs="$LIBS"
      LDFLAGS="$LDFLAGS $DPMS_LDFLAGS $all_libraries -lX11 -lXext $LIBSOCKET"
      CFLAGS="$CFLAGS $X_INCLUDES"
      test -n "$DPMS_INCLUDE" && CFLAGS="-I$DPMS_INCLUDE $CFLAGS"
      AC_TRY_LINK([
	  #include <X11/Xproto.h>
	  #include <X11/X.h>
	  #include <X11/Xlib.h>
	  #include <X11/extensions/dpms.h>
	  int foo_test_dpms()
	  { return DPMSSetTimeouts( 0, 0, 0, 0 ); }],[],
	  ac_cv_have_dpms="yes", [
              LDFLAGS="$ac_save_ldflags"
              CFLAGS="$ac_save_cflags"
              LDFLAGS="$LDFLAGS $DPMS_LDFLAGS $all_libraries -lX11 -lXext $LIBSOCKET"
              LIBS="$LIBS -lXdpms"
              CFLAGS="$CFLAGS $X_INCLUDES"
              test -n "$DPMS_INCLUDE" && CFLAGS="-I$DPMS_INCLUDE $CFLAGS"
              AC_TRY_LINK([
	          #include <X11/Xproto.h>
        	  #include <X11/X.h>
        	  #include <X11/Xlib.h>
        	  #include <X11/extensions/dpms.h>
        	  int foo_test_dpms()
        	  { return DPMSSetTimeouts( 0, 0, 0, 0 ); }],[],
        	  [
                  ac_cv_have_dpms="-lXdpms"
                  ],ac_cv_have_dpms="no")
              ])
      LDFLAGS="$ac_save_ldflags"
      CFLAGS="$ac_save_cflags"
      LIBS="$ac_save_libs"
    fi
   ])dnl

  if test "$ac_cv_have_dpms" = no; then
    AC_MSG_RESULT(no)
    DPMS_LDFLAGS=""
    DPMSINC=""
    $2
  else
    AC_DEFINE(HAVE_DPMS, 1, [Define if you have DPMS support])
    if test "$ac_cv_have_dpms" = "-lXdpms"; then
       DPMS_LIB="-lXdpms"
    fi
    if test "$DPMS_LDFLAGS" = ""; then
       DPMSLIB="$DPMS_LIB "'$(LIB_X11)'
    else
       DPMSLIB="$DPMS_LDFLAGS $DPMS_LIB "'$(LIB_X11)'
    fi
    if test "$DPMS_INCLUDE" = ""; then
       DPMSINC=""
    else
       DPMSINC="-I$DPMS_INCLUDE"
    fi
    AC_MSG_RESULT(yes)
    $1
  fi
 fi
 AC_SUBST(DPMSINC)
 AC_SUBST(DPMSLIB)
])

AC_DEFUN([AC_HAVE_GL],
 [AC_REQUIRE_CPP()dnl
  AC_REQUIRE([KDE_CHECK_EXTRA_LIBS])

 test -z "$GL_LDFLAGS" && GL_LDFLAGS=
 test -z "$GL_INCLUDE" && GL_INCLUDE=

 AC_ARG_WITH(gl, [  --without-gl            disable 3D GL modes],
	gl_test=$withval, gl_test="yes")
 if test "x$kde_use_qt_emb" = "xyes"; then
   # GL and Qt Embedded is a no-go for now.
   ac_cv_have_gl=no
 elif test "x$gl_test" = xno; then
   ac_cv_have_gl=no
 else
   AC_MSG_CHECKING(for GL)
   AC_CACHE_VAL(ac_cv_have_gl,
   [
    AC_LANG_C
    ac_save_ldflags="$LDFLAGS"
    ac_save_cflags="$CFLAGS"
    LDFLAGS="$LDFLAGS $GL_LDFLAGS $X_LDFLAGS $all_libraries -lMesaGL -lMesaGLU"
    test "x$kde_use_qt_emb" != xyes && LDFLAGS="$LDFLAGS -lX11"
    LDFLAGS="$LDFLAGS $LIB_XEXT -lm $LIBSOCKET"
    CFLAGS="$CFLAGS $X_INCLUDES"
    test -n "$GL_INCLUDE" && CFLAGS="-I$GL_INCLUDE $CFLAGS"
    AC_TRY_LINK([#include <GL/gl.h>
#include <GL/glu.h>
], [],
	ac_cv_have_gl="mesa", ac_cv_have_gl="no")
    if test "x$ac_cv_have_gl" = "xno"; then
      LDFLAGS="$ac_save_ldflags $X_LDFLAGS $GL_LDFLAGS $all_libraries -lGL -lGLU"
      test "x$kde_use_qt_emb" != xyes && LDFLAGS="$LDFLAGS -lX11"
      LDFLAGS="$LDFLAGS $LIB_XEXT -lm $LIBSOCKET"
      CFLAGS="$ac_save_cflags $X_INCLUDES"
      test -n "$GL_INCLUDE" && CFLAGS="-I$GL_INCLUDE $CFLAGS"
      AC_TRY_LINK([#include <GL/gl.h>
#include <GL/glu.h>
], [],
	  ac_cv_have_gl="yes", ac_cv_have_gl="no")
    fi
    LDFLAGS="$ac_save_ldflags"
    CFLAGS="$ac_save_cflags"
   ])dnl

  if test "$ac_cv_have_gl" = "no"; then
    AC_MSG_RESULT(no)
    GL_LDFLAGS=""
    GLINC=""
    $2
  else
    AC_DEFINE(HAVE_GL, 1, [Defines if you have GL (Mesa, OpenGL, ...)])
    if test "$GL_LDFLAGS" = ""; then
       if test "$ac_cv_have_gl" = "mesa"; then
          GLLIB='-lMesaGL -lMesaGLU $(LIB_X11)'
       else
          GLLIB='-lGL -lGLU $(LIB_X11)'
       fi
    else
       if test "$ac_cv_have_gl" = "mesa"; then
          GLLIB="$GL_LDFLAGS -lMesaGL -lMesaGLU "'$(LIB_X11)'
       else
          GLLIB="$GL_LDFLAGS -lGL -lGLU "'$(LIB_X11)'
       fi
    fi
    if test "$GL_INCLUDE" = ""; then
       GLINC=""
    else
       GLINC="-I$GL_INCLUDE"
    fi
    AC_MSG_RESULT($ac_cv_have_gl)
    $1
  fi
 fi
 AC_SUBST(GLINC)
 AC_SUBST(GLLIB)
])


 dnl shadow password and PAM magic - maintained by ossi@kde.org

AC_DEFUN([KDE_PAM], [
  AC_REQUIRE([KDE_CHECK_LIBDL])

  AC_ARG_WITH(pam,
    [  --with-pam[=ARG]        enable support for PAM: ARG=[yes|no|service name]],
    [ if test "x$withval" = "xyes"; then
        use_pam=yes
        pam_service=kde
      elif test "x$withval" = "xno"; then
        use_pam=no
      else
        use_pam=yes
        pam_service=$withval
      fi
      ac_cv_path_pam="use_pam=$use_pam pam_service=$pam_service"
    ], [
      AC_CACHE_VAL(ac_cv_path_pam,
        [ use_pam=no
          AC_CHECK_LIB(pam, pam_start,
            [ AC_CHECK_HEADER(security/pam_appl.h,
                [ use_pam=yes
                  pam_service=kde ]) 
            ], , $LIBDL)
          ac_cv_path_pam="use_pam=$use_pam pam_service=$pam_service"
        ])
    ])
  eval "$ac_cv_path_pam"

  AC_MSG_CHECKING(for PAM)
  if test "x$use_pam" = xno; then
    AC_MSG_RESULT(no)
    PAMLIBS=""
  else
    AC_MSG_RESULT(yes)
    AC_DEFINE(HAVE_PAM, 1, [Defines if you have PAM (Pluggable Authentication Modules)])
    PAMLIBS="$PAM_MISC_LIB -lpam $LIBDL"

    dnl test whether struct pam_message is const (Linux) or not (Sun)
    AC_MSG_CHECKING(for const pam_message)
    AC_EGREP_HEADER([struct pam_message], security/pam_appl.h,
      [ AC_EGREP_HEADER([const struct pam_message], security/pam_appl.h,
                        [AC_MSG_RESULT([const: Linux-type PAM])],
                        [AC_MSG_RESULT([nonconst: Sun-type PAM])
                        AC_DEFINE(PAM_MESSAGE_NONCONST, 1, [Define if your PAM support takes non-const arguments (Solaris)])]
                        )],
      [AC_MSG_RESULT([not found - assume const, Linux-type PAM])])
  fi

  AC_SUBST(PAMLIBS)
])

dnl DEF_PAM_SERVICE(arg name, full name, define name)
AC_DEFUN([DEF_PAM_SERVICE], [
  AC_ARG_WITH($1-pam,
    [  --with-$1-pam=[val]    override PAM service from --with-pam for $2],
    [ if test "x$use_pam" = xyes; then
        $3_PAM_SERVICE="$withval"
      else
        AC_MSG_ERROR([Cannot use use --with-$1-pam, as no PAM was detected.
You may want to enforce it by using --with-pam.])
      fi
    ], 
    [ if test "x$use_pam" = xyes; then
        $3_PAM_SERVICE="$pam_service"
      fi
    ])
    if test -n "$$3_PAM_SERVICE"; then
      AC_MSG_RESULT([The PAM service used by $2 will be $$3_PAM_SERVICE])
      AC_DEFINE_UNQUOTED($3_PAM_SERVICE, "$$3_PAM_SERVICE", [The PAM service to be used by $2])
    fi
    AC_SUBST($3_PAM_SERVICE)
])

AC_DEFUN([KDE_SHADOWPASSWD], [
  AC_REQUIRE([KDE_PAM])

  AC_CHECK_LIB(shadow, getspent,
    [ LIBSHADOW="-lshadow"
      ac_use_shadow=yes
    ],
    [ dnl for UnixWare
      AC_CHECK_LIB(gen, getspent, 
        [ LIBGEN="-lgen"
          ac_use_shadow=yes
        ], 
        [ AC_CHECK_FUNC(getspent, 
            [ ac_use_shadow=yes ],
            [ ac_use_shadow=no ])
	])
    ])
  AC_SUBST(LIBSHADOW)
  AC_SUBST(LIBGEN)
  
  AC_MSG_CHECKING([for shadow passwords])

  AC_ARG_WITH(shadow,
    [  --with-shadow		  If you want shadow password support ],
    [ if test "x$withval" != "xno"; then
        use_shadow=yes
      else
        use_shadow=no
      fi
    ], [
      use_shadow="$ac_use_shadow"
    ])

  if test "x$use_shadow" = xyes; then
    AC_MSG_RESULT(yes)
    AC_DEFINE(HAVE_SHADOW, 1, [Define if you use shadow passwords])
  else
    AC_MSG_RESULT(no)
    LIBSHADOW=
    LIBGEN=
  fi

  dnl finally make the relevant binaries setuid root, if we have shadow passwds.
  dnl this still applies, if we could use it indirectly through pam.
  if test "x$use_shadow" = xyes || 
     ( test "x$use_pam" = xyes && test "x$ac_use_shadow" = xyes ); then
      case $host in
      *-*-freebsd* | *-*-netbsd* | *-*-openbsd*)
	SETUIDFLAGS="-m 4755 -o root";;
      *)
	SETUIDFLAGS="-m 4755";;
      esac
  fi
  AC_SUBST(SETUIDFLAGS)

])

AC_DEFUN([KDE_PASSWDLIBS], [
  AC_REQUIRE([KDE_MISC_TESTS]) dnl for LIBCRYPT
  AC_REQUIRE([KDE_PAM])
  AC_REQUIRE([KDE_SHADOWPASSWD])

  if test "x$use_pam" = "xyes"; then 
    PASSWDLIBS="$PAMLIBS"
  else
    PASSWDLIBS="$LIBCRYPT $LIBSHADOW $LIBGEN"
  fi

  dnl FreeBSD uses a shadow-like setup, where /etc/passwd holds the users, but
  dnl /etc/master.passwd holds the actual passwords.  /etc/master.passwd requires
  dnl root to read, so kcheckpass needs to be root (even when using pam, since pam
  dnl may need to read /etc/master.passwd).
  case $host in
  *-*-freebsd*)
    SETUIDFLAGS="-m 4755 -o root"
    ;;
  *)
    ;;
  esac

  AC_SUBST(PASSWDLIBS)
])

AC_DEFUN([KDE_CHECK_LIBDL],
[
AC_CHECK_LIB(dl, dlopen, [
LIBDL="-ldl"
ac_cv_have_dlfcn=yes
])

AC_CHECK_LIB(dld, shl_unload, [
LIBDL="-ldld"
ac_cv_have_shload=yes
])

AC_SUBST(LIBDL)
])

AC_DEFUN([KDE_CHECK_DLOPEN],
[
KDE_CHECK_LIBDL
AC_CHECK_HEADERS(dlfcn.h dl.h)
if test "$ac_cv_header_dlfcn_h" = "no"; then
  ac_cv_have_dlfcn=no
fi

if test "$ac_cv_header_dl_h" = "no"; then
  ac_cv_have_shload=no
fi

dnl XXX why change enable_dlopen? its already set by autoconf's AC_ARG_ENABLE
dnl (MM)
AC_ARG_ENABLE(dlopen,
[  --disable-dlopen        link statically [default=no]] ,
enable_dlopen=$enableval,
enable_dlopen=yes)

# override the user's opinion, if we know it better ;)
if test "$ac_cv_have_dlfcn" = "no" && test "$ac_cv_have_shload" = "no"; then
  enable_dlopen=no
fi

if test "$ac_cv_have_dlfcn" = "yes"; then
  AC_DEFINE_UNQUOTED(HAVE_DLFCN, 1, [Define if you have dlfcn])
fi

if test "$ac_cv_have_shload" = "yes"; then
  AC_DEFINE_UNQUOTED(HAVE_SHLOAD, 1, [Define if you have shload])
fi

if test "$enable_dlopen" = no ; then
  test -n "$1" && eval $1
else
  test -n "$2" && eval $2
fi

])

AC_DEFUN([KDE_CHECK_DYNAMIC_LOADING],
[
KDE_CHECK_DLOPEN(libtool_enable_shared=yes, libtool_enable_static=no)
KDE_PROG_LIBTOOL
AC_MSG_CHECKING([dynamic loading])
eval "`egrep '^build_libtool_libs=' libtool`"
if test "$build_libtool_libs" = "yes" && test "$enable_dlopen" = "yes"; then
  dynamic_loading=yes
  AC_DEFINE_UNQUOTED(HAVE_DYNAMIC_LOADING)
else
  dynamic_loading=no
fi
AC_MSG_RESULT($dynamic_loading)
if test "$dynamic_loading" = "yes"; then
  $1
else
  $2
fi
])

AC_DEFUN([KDE_ADD_INCLUDES],
[
if test -z "$1"; then
  test_include="Pix.h"
else
  test_include="$1"
fi

AC_MSG_CHECKING([for libg++ ($test_include)])

AC_CACHE_VAL(kde_cv_libgpp_includes,
[
kde_cv_libgpp_includes=no

   for ac_dir in               \
                               \
     /usr/include/g++          \
     /usr/include              \
     /usr/unsupported/include  \
     /opt/include              \
     $extra_include            \
     ; \
   do
     if test -r "$ac_dir/$test_include"; then
       kde_cv_libgpp_includes=$ac_dir
       break
     fi
   done
])

AC_MSG_RESULT($kde_cv_libgpp_includes)
if test "$kde_cv_libgpp_includes" != "no"; then
  all_includes="-I$kde_cv_libgpp_includes $all_includes $USER_INCLUDES"
fi
])
])


AC_DEFUN([KDE_CHECK_MICO],
[
AC_REQUIRE([KDE_CHECK_LIBDL])
AC_REQUIRE([KDE_MISC_TESTS])
AC_MSG_CHECKING(for MICO)

if test -z "$MICODIR"; then
    kde_micodir=/usr/local
 else
    kde_micodir="$MICODIR"
fi

AC_ARG_WITH(micodir,
  [  --with-micodir=micodir  where mico is installed ],
  kde_micodir=$withval,
  kde_micodir=$kde_micodir
)

AC_CACHE_VAL(kde_cv_mico_incdir,
[
  mico_incdirs="$kde_micodir/include /usr/include /usr/local/include /usr/local/include /opt/local/include $kde_extra_includes"
AC_FIND_FILE(CORBA.h, $mico_incdirs, kde_cv_mico_incdir)

])
kde_micodir=`echo $kde_cv_mico_incdir | sed -e 's#/include##'`

if test ! -r  $kde_micodir/include/CORBA.h; then
  AC_MSG_ERROR([No CORBA.h found, specify another micodir])
fi

AC_MSG_RESULT($kde_micodir)

MICO_INCLUDES=-I$kde_micodir/include
AC_SUBST(MICO_INCLUDES)
MICO_LDFLAGS=-L$kde_micodir/lib
AC_SUBST(MICO_LDFLAGS)
micodir=$kde_micodir
AC_SUBST(micodir)

AC_MSG_CHECKING([for MICO version])
AC_CACHE_VAL(kde_cv_mico_version,
[
AC_LANG_C
cat >conftest.$ac_ext <<EOF
#include <stdio.h>
#include <mico/version.h>
int main() {

   printf("MICO_VERSION=%s\n",MICO_VERSION);
   return (0);
}
EOF
ac_compile='${CC-gcc} $CFLAGS $MICO_INCLUDES conftest.$ac_ext -o conftest'
if AC_TRY_EVAL(ac_compile); then
  if eval `./conftest 2>&5`; then
    kde_cv_mico_version=$MICO_VERSION
  else
    AC_MSG_ERROR([your system is not able to execute a small application to
    find MICO version! Check $kde_micodir/include/mico/version.h])
  fi
else
  AC_MSG_ERROR([your system is not able to compile a small application to
  find MICO version! Check $kde_micodir/include/mico/version.h])
fi
])

dnl installed MICO version
mico_v_maj=`echo $kde_cv_mico_version | sed -e 's/^\(.*\)\..*\..*$/\1/'`
mico_v_mid=`echo $kde_cv_mico_version | sed -e 's/^.*\.\(.*\)\..*$/\1/'`
mico_v_min=`echo $kde_cv_mico_version | sed -e 's/^.*\..*\.\(.*\)$/\1/'`

if test "x$1" = "x"; then
 req_version="2.3.0"
else
 req_version=$1
fi

dnl required MICO version
req_v_maj=`echo $req_version | sed -e 's/^\(.*\)\..*\..*$/\1/'`
req_v_mid=`echo $req_version | sed -e 's/^.*\.\(.*\)\..*$/\1/'`
req_v_min=`echo $req_version | sed -e 's/^.*\..*\.\(.*\)$/\1/'`

if test "$mico_v_maj" -lt "$req_v_maj" || \
   ( test "$mico_v_maj" -eq "$req_v_maj" && \
        test "$mico_v_mid" -lt "$req_v_mid" ) || \
   ( test "$mico_v_mid" -eq "$req_v_mid" && \
        test "$mico_v_min" -lt "$req_v_min" )

then
  AC_MSG_ERROR([found MICO version $kde_cv_mico_version but version $req_version \
at least is required. You should upgrade MICO.])
else
  AC_MSG_RESULT([$kde_cv_mico_version (minimum version $req_version, ok)])
fi

LIBMICO="-lmico$kde_cv_mico_version $LIBCRYPT $LIBSOCKET $LIBDL"
AC_SUBST(LIBMICO)
if test -z "$IDL"; then
  IDL='$(kde_bindir)/cuteidl'
fi
AC_SUBST(IDL)
IDL_DEPENDENCIES='$(kde_includes)/CUTE.h'
AC_SUBST(IDL_DEPENDENCIES)

idldir="\$(includedir)/idl"
AC_SUBST(idldir)

])

AC_DEFUN([KDE_CHECK_MINI_STL],
[
AC_REQUIRE([KDE_CHECK_MICO])

AC_MSG_CHECKING(if we use mico's mini-STL)
AC_CACHE_VAL(kde_cv_have_mini_stl,
[
AC_LANG_SAVE
AC_LANG_CPLUSPLUS
kde_save_cxxflags="$CXXFLAGS"
CXXFLAGS="$CXXFLAGS $MICO_INCLUDES"
AC_TRY_COMPILE(
[
#include <mico/config.h>
],
[
#ifdef HAVE_MINI_STL
#error "nothing"
#endif
],
kde_cv_have_mini_stl=no,
kde_cv_have_mini_stl=yes)
CXXFLAGS="$kde_save_cxxflags"
AC_LANG_RESTORE
])

if test "x$kde_cv_have_mini_stl" = "xyes"; then
   AC_MSG_RESULT(yes)
   $1
else
   AC_MSG_RESULT(no)
   $2
fi
])

])


AC_DEFUN([KDE_CHECK_LIBPTHREAD],
[
AC_CHECK_LIB(pthread, pthread_create, [LIBPTHREAD="-lpthread"] )
AC_SUBST(LIBPTHREAD)
])

AC_DEFUN([KDE_CHECK_PTHREAD_OPTION],
[
    AC_ARG_ENABLE(kernel-threads, [  --enable-kernel-threads Enable the use of the LinuxThreads port on FreeBSD/i386 only.],
	kde_use_kernthreads=$enableval, kde_use_kernthreads=no)

    if test "$kde_use_kernthreads" = "yes"; then
      ac_save_CXXFLAGS="$CXXFLAGS"
      ac_save_CFLAGS="$CFLAGS"
      CXXFLAGS="-I/usr/local/include/pthread/linuxthreads $CXXFLAGS"
      CFLAGS="-I/usr/local/include/pthread/linuxthreads $CFLAGS"
      AC_CHECK_HEADERS(pthread/linuxthreads/pthread.h)
      CXXFLAGS="$ac_save_CXXFLAGS"
      CFLAGS="$ac_save_CFLAGS"
      if test "$ac_cv_header_pthread_linuxthreads_pthread_h" = "no"; then
        kde_use_kernthreads=no
      else
        dnl Add proper -I and -l statements
        AC_CHECK_LIB(lthread, pthread_join, [LIBPTHREAD="-llthread -llgcc_r"]) dnl for FreeBSD
        if test "x$LIBPTHREAD" = "x"; then
          kde_use_kernthreads=no
        else
          USE_THREADS="-D_THREAD_SAFE -I/usr/local/include/pthread/linuxthreads"
        fi
      fi
    else 
      USE_THREADS=""
      if test -z "$LIBPTHREAD"; then
        KDE_CHECK_COMPILER_FLAG(pthread, [USE_THREADS="-pthread"] )
      fi
    fi

    case $host_os in
 	solaris*)
		KDE_CHECK_COMPILER_FLAG(mt, [USE_THREADS="-mt"])
                CPPFLAGS="$CPPFLAGS -D_REENTRANT -D_POSIX_PTHREAD_SEMANTICS -DUSE_SOLARIS -DSVR4"
    		;;
        freebsd*)
                CPPFLAGS="$CPPFLAGS -D_THREAD_SAFE"
                ;;
        aix*)
                CPPFLAGS="$CPPFLAGS -D_THREAD_SAFE"
                LIBPTHREAD="$LIBPTHREAD -lc_r"
                ;;
        linux*) CPPFLAGS="$CPPFLAGS -D_REENTRANT"
                if test "$CXX" = "KCC"; then
                  CXXFLAGS="$CXXFLAGS --thread_safe"
		  NOOPT_CXXFLAGS="$NOOPT_CXXFLAGS --thread_safe"
                fi
                ;;
	*)
		;;
    esac
    AC_SUBST(USE_THREADS)
    AC_SUBST(LIBPTHREAD)
])

AC_DEFUN([KDE_CHECK_THREADING],
[
  AC_REQUIRE([KDE_CHECK_LIBPTHREAD])
  AC_REQUIRE([KDE_CHECK_PTHREAD_OPTION])
  dnl default is yes if libpthread is found and no if no libpthread is available
  if test -z "$LIBPTHREAD"; then
    if test -z "$USE_THREADS"; then
      kde_check_threading_default=no
    else
      kde_check_threading_default=yes
    fi
  else
    kde_check_threading_default=yes
  fi
  AC_ARG_ENABLE(threading, [  --disable-threading     disables threading even if libpthread found ],
   kde_use_threading=$enableval, kde_use_threading=$kde_check_threading_default)
  if test "x$kde_use_threading" = "xyes"; then
    AC_DEFINE(HAVE_LIBPTHREAD, 1, [Define if you have a working libpthread (will enable threaded code)])
  fi
])

AC_DEFUN([KDE_TRY_LINK_PYTHON],
[
if test "$kde_python_link_found" = no; then

if test "$1" = normal; then
  AC_MSG_CHECKING(if a Python application links)
else
  AC_MSG_CHECKING(if Python depends on $2)
fi

AC_CACHE_VAL(kde_cv_try_link_python_$1,
[
AC_LANG_SAVE
AC_LANG_C
kde_save_cflags="$CFLAGS"
CFLAGS="$CFLAGS $PYTHONINC"
kde_save_libs="$LIBS"
LIBS="$LIBS $LIBPYTHON $2 $LIBDL $LIBSOCKET"
kde_save_ldflags="$LDFLAGS"
LDFLAGS="$LDFLAGS $PYTHONLIB"

AC_TRY_LINK(
[
#include <Python.h>
],[
	PySys_SetArgv(1, 0);
],
	[kde_cv_try_link_python_$1=yes],
	[kde_cv_try_link_python_$1=no]
)
CFLAGS="$kde_save_cflags"
LIBS="$kde_save_libs"
LDFLAGS="$kde_save_ldflags"
])

if test "$kde_cv_try_link_python_$1" = "yes"; then
  AC_MSG_RESULT(yes)
  kde_python_link_found=yes
  if test ! "$1" = normal; then
    LIBPYTHON="$LIBPYTHON $2"
  fi
  $3
else
  AC_MSG_RESULT(no)
  $4
fi
AC_LANG_RESTORE

fi

])

AC_DEFUN([KDE_CHECK_PYTHON_DIR],
[
AC_MSG_CHECKING([for Python directory])
 
AC_CACHE_VAL(kde_cv_pythondir,
[
  if test -z "$PYTHONDIR"; then
    kde_cv_pythondir=/usr/local
  else
    kde_cv_pythondir="$PYTHONDIR"
  fi
])
 
AC_ARG_WITH(pythondir,
[  --with-pythondir=pythondir   use python installed in pythondir ],
[
  ac_python_dir=$withval
], ac_python_dir=$kde_cv_pythondir
)
 
AC_MSG_RESULT($ac_python_dir)
])

AC_DEFUN([KDE_CHECK_PYTHON_INTERN],
[
AC_REQUIRE([KDE_CHECK_LIBDL])
AC_REQUIRE([KDE_CHECK_LIBPTHREAD])
AC_REQUIRE([KDE_CHECK_PYTHON_DIR])

if test -z "$1"; then
  version="1.5"
else
  version="$1"
fi

AC_MSG_CHECKING([for Python$version])

python_incdirs="$ac_python_dir/include /usr/include /usr/local/include/ $kde_extra_includes"
AC_FIND_FILE(Python.h, $python_incdirs, python_incdir)
if test ! -r $python_incdir/Python.h; then
  AC_FIND_FILE(python$version/Python.h, $python_incdirs, python_incdir)
  python_incdir=$python_incdir/python$version
  if test ! -r $python_incdir/Python.h; then
    python_incdir=no
  fi
fi

PYTHONINC=-I$python_incdir

python_libdirs="$ac_python_dir/lib /usr/lib /usr/local /usr/lib $kde_extra_libs"
AC_FIND_FILE(libpython$version.a, $python_libdirs, python_libdir)
if test ! -r $python_libdir/libpython$version.a; then
  AC_FIND_FILE(python$version/config/libpython$version.a, $python_libdirs, python_libdir)
  python_libdir=$python_libdir/python$version/config
  if test ! -r $python_libdir/libpython$version.a; then
    python_libdir=no
  fi
fi

PYTHONLIB=-L$python_libdir
kde_orig_LIBPYTHON=$LIBPYTHON
if test -z "$LIBPYTHON"; then
  LIBPYTHON=-lpython$version
fi

python_libdirs="$ac_python_dir/lib /usr/lib /usr/local /usr/lib $kde_extra_libs"
AC_FIND_FILE(python$version/copy.py, $python_libdirs, python_moddir)
python_moddir=$python_moddir/python$version
if test ! -r $python_moddir/copy.py; then
  python_moddir=no
fi

PYTHONMODDIR=$python_moddir

AC_MSG_RESULT(header $python_incdir library $python_libdir modules $python_moddir)

if test x$python_incdir = xno ||  test x$python_libdir = xno ||  test x$python_moddir = xno; then
   LIBPYTHON=$kde_orig_LIBPYTHON
   test "x$PYTHONLIB" = "x-Lno" && PYTHONLIB=""
   test "x$PYTHONINC" = "x-Ino" && PYTHONINC=""
   $2
else 
  dnl Note: this test is very weak
  kde_python_link_found=no
  KDE_TRY_LINK_PYTHON(normal)
  KDE_TRY_LINK_PYTHON(m, -lm)
  KDE_TRY_LINK_PYTHON(pthread, $LIBPTHREAD)
  KDE_TRY_LINK_PYTHON(tcl, -ltcl)
  KDE_TRY_LINK_PYTHON(db2, -ldb2)
  KDE_TRY_LINK_PYTHON(m_and_thread, [$LIBPTHREAD -lm])
  KDE_TRY_LINK_PYTHON(m_and_thread_and_util, [$LIBPTHREAD -lm -lutil])
  KDE_TRY_LINK_PYTHON(m_and_thread_and_db3, [$LIBPTHREAD -lm -ldb-3 -lutil])
  KDE_TRY_LINK_PYTHON(pthread_and_db3, [$LIBPTHREAD -ldb-3])
  KDE_TRY_LINK_PYTHON(m_and_thread_and_db, [$LIBPTHREAD -lm -ldb -ltermcap -lutil])
  KDE_TRY_LINK_PYTHON(pthread_and_dl, [$LIBPTHREAD $LIBDL -lutil -lreadline -lncurses -lm])
  KDE_TRY_LINK_PYTHON(m_and_thread_and_db_special, [$LIBPTHREAD -lm -ldb -lutil], [],
	[AC_MSG_WARN([it seems, Python depends on another library.
    Pleae set LIBPYTHON to '-lpython$version -lotherlib' before calling configure to fix this
    and contact the authors to let them know about this problem])
	])

  LIBPYTHON="$LIBPYTHON $LIBDL $LIBSOCKET"
  AC_SUBST(PYTHONINC)
  AC_SUBST(PYTHONLIB)
  AC_SUBST(LIBPYTHON)
  AC_SUBST(PYTHONMODDIR)
  AC_DEFINE(HAVE_PYTHON, 1, [Define if you have the development files for python])
fi

])


AC_DEFUN([KDE_CHECK_PYTHON],
[
  KDE_CHECK_PYTHON_INTERN("2.2", 
    [KDE_CHECK_PYTHON_INTERN("2.1", 
      [KDE_CHECK_PYTHON_INTERN("2.0", [ KDE_CHECK_PYTHON_INTERN($1, $2) ])
  ])])
])

AC_DEFUN([KDE_CHECK_STL_SGI],
[
    AC_MSG_CHECKING([if STL implementation is SGI like])
    AC_CACHE_VAL(kde_cv_stl_type_sgi,
    [
      AC_TRY_COMPILE([
#include <string>
using namespace std;
],[
  string astring="Hallo Welt.";
  astring.erase(0, 6); // now astring is "Welt"
  return 0;
], kde_cv_stl_type_sgi=yes,
   kde_cv_stl_type_sgi=no)
])

   AC_MSG_RESULT($kde_cv_stl_type_sgi)

   if test "$kde_cv_stl_type_sgi" = "yes"; then
	AC_DEFINE_UNQUOTED(HAVE_SGI_STL, 1, [Define if you have a STL implementation by SGI])
   fi
])

AC_DEFUN([KDE_CHECK_STL_HP],
[
    AC_MSG_CHECKING([if STL implementation is HP like])
    AC_CACHE_VAL(kde_cv_stl_type_hp,
    [
      AC_TRY_COMPILE([
#include <string>
using namespace std;
],[
  string astring="Hello World";
  astring.remove(0, 6); // now astring is "World"
  return 0;
], kde_cv_stl_type_hp=yes,
   kde_cv_stl_type_hp=no)
])
   AC_MSG_RESULT($kde_cv_stl_type_hp)

   if test "$kde_cv_stl_type_hp" = "yes"; then
	AC_DEFINE_UNQUOTED(HAVE_HP_STL, 1, [Define if you have a STL implementation by HP])
   fi
])

AC_DEFUN([KDE_CHECK_STL],
[
    AC_LANG_SAVE
    AC_LANG_CPLUSPLUS
    ac_save_CXXFLAGS="$CXXFLAGS"
    CXXFLAGS="`echo $CXXFLAGS | sed s/-fno-exceptions//`"
    KDE_CHECK_STL_SGI

    if test "$kde_cv_stl_type_sgi" = "no"; then
       KDE_CHECK_STL_HP

       if test "$kde_cv_stl_type_hp" = "no"; then
         AC_MSG_ERROR("no known STL type found - did you forget to install libstdc++[-devel] ?")
       fi
    fi

    CXXFLAGS="$ac_save_CXXFLAGS"
    AC_LANG_RESTORE
])

AC_DEFUN([AC_FIND_QIMGIO],
   [AC_REQUIRE([AC_FIND_JPEG])
AC_REQUIRE([KDE_CHECK_EXTRA_LIBS])
AC_MSG_CHECKING([for qimgio])
AC_CACHE_VAL(ac_cv_lib_qimgio,
[
AC_LANG_SAVE
AC_LANG_CPLUSPLUS
ac_save_LIBS="$LIBS"
ac_save_CXXFLAGS="$CXXFLAGS"
LIBS="$all_libraries -lqimgio -lpng -lz $LIBJPEG $LIBQT"
CXXFLAGS="$CXXFLAGS -I$qt_incdir $all_includes"
AC_TRY_RUN(dnl
[
#include <qimageio.h>
#include <qstring.h>
int main() {
		QString t = "hallo";
		t.fill('t');
		qInitImageIO();
}
],
            ac_cv_lib_qimgio=yes,
            ac_cv_lib_qimgio=no,
	    ac_cv_lib_qimgio=no)
LIBS="$ac_save_LIBS"
CXXFLAGS="$ac_save_CXXFLAGS"
AC_LANG_RESTORE
])dnl
if eval "test \"`echo $ac_cv_lib_qimgio`\" = yes"; then
  LIBQIMGIO="-lqimgio -lpng -lz $LIBJPEG"
  AC_MSG_RESULT(yes)
  AC_DEFINE_UNQUOTED(HAVE_QIMGIO, 1, [Define if you have the Qt extension qimgio available])
  AC_SUBST(LIBQIMGIO)
else
  AC_MSG_RESULT(not found)
fi
])

AC_DEFUN([KDE_CHECK_ANSI],
[
])

AC_DEFUN([KDE_CHECK_INSURE],
[
  AC_ARG_ENABLE(insure, [  --enable-insure             use insure++ for debugging [default=no]],
  [
  if test $enableval = "no"; dnl
	then ac_use_insure="no"
	else ac_use_insure="yes"
   fi
  ], [ac_use_insure="no"])

  AC_MSG_CHECKING(if we will use Insure++ to debug)
  AC_MSG_RESULT($ac_use_insure)
  if test "$ac_use_insure" = "yes"; dnl
       then CC="insure"; CXX="insure"; dnl CFLAGS="$CLAGS -fno-rtti -fno-exceptions "????
   fi
])

AC_DEFUN([AM_DISABLE_LIBRARIES],
[
    AC_PROVIDE([AM_ENABLE_STATIC])
    AC_PROVIDE([AM_ENABLE_SHARED])
    enable_static=no
    enable_shared=yes
])


AC_DEFUN([AC_CHECK_UTMP_FILE],
[
    AC_MSG_CHECKING([for utmp file])

    AC_CACHE_VAL(kde_cv_utmp_file,
    [
    kde_cv_utmp_file=no

    for ac_file in    \
                      \
	/var/run/utmp \
	/var/adm/utmp \
	/etc/utmp     \
     ; \
    do
     if test -r "$ac_file"; then
       kde_cv_utmp_file=$ac_file
       break
     fi
    done
    ])

    if test "$kde_cv_utmp_file" != "no"; then
	AC_DEFINE_UNQUOTED(UTMP, "$kde_cv_utmp_file", [Define the file for utmp entries])
	$1
	AC_MSG_RESULT($kde_cv_utmp_file)
    else
    	$2
	AC_MSG_RESULT([non found])
    fi
])


AC_DEFUN([KDE_CREATE_SUBDIRSLIST],
[

DO_NOT_COMPILE="$DO_NOT_COMPILE CVS debian bsd-port admin"

if test ! -s $srcdir/subdirs; then
  dnl Note: Makefile.common creates subdirs, so this is just a fallback
  TOPSUBDIRS=""
  files=`cd $srcdir && ls -1`
  dirs=`for i in $files; do if test -d $i; then echo $i; fi; done`
  for i in $dirs; do
    echo $i >> $srcdir/subdirs
  done
fi

if test -s $srcdir/inst-apps; then
  ac_topsubdirs="`cat $srcdir/inst-apps`"
else
  ac_topsubdirs="`cat $srcdir/subdirs`"
fi

for i in $ac_topsubdirs; do
  AC_MSG_CHECKING([if $i should be compiled])
  if test -d $srcdir/$i; then
    install_it="yes"
    for j in $DO_NOT_COMPILE; do
      if test $i = $j; then
        install_it="no"
      fi
    done
  else
    install_it="no"
  fi
  AC_MSG_RESULT($install_it)
  if test $install_it = "yes"; then
    TOPSUBDIRS="$TOPSUBDIRS $i"
  fi
done

AC_SUBST(TOPSUBDIRS)
])

AC_DEFUN([KDE_CHECK_NAMESPACES],
[
AC_MSG_CHECKING(whether C++ compiler supports namespaces)
AC_LANG_SAVE
AC_LANG_CPLUSPLUS
AC_TRY_COMPILE([
],
[
namespace Foo {
  extern int i;
  namespace Bar {
    extern int i;
  }
}

int Foo::i = 0;
int Foo::Bar::i = 1;
],[
  AC_MSG_RESULT(yes)
  AC_DEFINE(HAVE_NAMESPACES)
], [
AC_MSG_RESULT(no)
])
AC_LANG_RESTORE
])

AC_DEFUN([KDE_CHECK_NEWLIBS],
[

])

dnl ------------------------------------------------------------------------
dnl Check for S_ISSOCK macro. Doesn't exist on Unix SCO. faure@kde.org
dnl ------------------------------------------------------------------------
dnl
AC_DEFUN([AC_CHECK_S_ISSOCK],
[
AC_MSG_CHECKING(for S_ISSOCK)
AC_CACHE_VAL(ac_cv_have_s_issock,
[
AC_LANG_SAVE
AC_LANG_C
AC_TRY_LINK(
[
#include <sys/stat.h>
],
[
struct stat buff;
int b = S_ISSOCK( buff.st_mode );
],
ac_cv_have_s_issock=yes,
ac_cv_have_s_issock=no)
AC_LANG_RESTORE
])
AC_MSG_RESULT($ac_cv_have_s_issock)
if test "$ac_cv_have_s_issock" = "yes"; then
  AC_DEFINE_UNQUOTED(HAVE_S_ISSOCK, 1, [Define if sys/stat.h declares S_ISSOCK.])
fi
])

dnl ------------------------------------------------------------------------
dnl Check for MAXPATHLEN macro, defines KDEMAXPATHLEN. faure@kde.org
dnl ------------------------------------------------------------------------
dnl
AC_DEFUN([AC_CHECK_KDEMAXPATHLEN],
[
AC_MSG_CHECKING(for MAXPATHLEN)
AC_CACHE_VAL(ac_cv_maxpathlen,
[
AC_LANG_C
cat > conftest.$ac_ext <<EOF
#ifdef STDC_HEADERS
# include <stdlib.h>
#endif
#include <stdio.h>
#include <sys/param.h>
#ifndef MAXPATHLEN
#define MAXPATHLEN 1024
#endif

KDE_HELLO MAXPATHLEN

EOF

ac_try="$ac_cpp conftest.$ac_ext 2>/dev/null | grep '^KDE_HELLO' >conftest.out"

if AC_TRY_EVAL(ac_try) && test -s conftest.out; then
    ac_cv_maxpathlen=`sed 's#KDE_HELLO ##' conftest.out`
else
    ac_cv_maxpathlen=1024
fi

rm conftest.*

])
AC_MSG_RESULT($ac_cv_maxpathlen)
AC_DEFINE_UNQUOTED(KDEMAXPATHLEN,$ac_cv_maxpathlen, [Define a safe value for MAXPATHLEN] )
])

dnl -------------------------------------------------------------------------
dnl See if the compiler supports a template repository         bero@redhat.de
dnl -------------------------------------------------------------------------
AC_DEFUN([KDE_COMPILER_REPO],
[
  REPO=""
  NOREPO=""

  KDE_CHECK_COMPILER_FLAG(frepo,
   [
     REPO="-frepo"
     NOREPO="-fno-repo"
   ])

  if test -z "$REPO"; then
  KDE_CHECK_COMPILER_FLAG(instances=explicit,
  [
     REPO="-instances=explicit"
     NOREPO="-instances=extern"
  ])
  fi

  if test -n "$REPO"; then
     AC_DEFINE_UNQUOTED(HAVE_TEMPLATE_REPOSITORY, 1,
		[C++ compiler supports template repository])
     $1
  fi

  AC_SUBST(REPO)
  AC_SUBST(NOREPO)
])

AC_DEFUN([KDE_CHECK_HEADER],
[
   AC_LANG_SAVE
   kde_safe_cppflags=$CPPFLAGS
   CPPFLAGS="$CPPFLAGS $all_includes"
   AC_LANG_CPLUSPLUS
   AC_CHECK_HEADER($1, $2, $3)
   CPPFLAGS=$kde_safe_cppflags
   AC_LANG_RESTORE
])

AC_DEFUN([KDE_FAST_CONFIGURE],
[
  dnl makes configure fast (needs perl)
  AC_ARG_ENABLE(fast-perl, [  --disable-fast-perl     disable fast Makefile generation (needs perl)],
      with_fast_perl=$enableval, with_fast_perl=yes)
])

AC_DEFUN([KDE_CONF_FILES],
[
  val=
  if test -f $srcdir/configure.files ; then
    val=`sed -e 's%^%\$(top_srcdir)/%' $srcdir/configure.files`
  fi
  CONF_FILES=
  if test -n "$val" ; then
    for i in $val ; do
      CONF_FILES="$CONF_FILES $i"
    done
  fi
  AC_SUBST(CONF_FILES)
])dnl

AC_DEFUN([KDE_SET_PREFIX],
[
  unset CDPATH
  dnl make $KDEDIR the default for the installation
  AC_PREFIX_DEFAULT(${KDEDIR:-/usr/local/kde})

  if test "x$prefix" = "xNONE"; then
    prefix=$ac_default_prefix
    ac_configure_args="$ac_configure_args --prefix $prefix"
  fi
  KDE_FAST_CONFIGURE
  KDE_CONF_FILES
])

pushdef([AC_PROG_INSTALL],
[
  dnl our own version, testing for a -p flag
  popdef([AC_PROG_INSTALL])
  dnl as AC_PROG_INSTALL works as it works we first have
  dnl to save if the user didn't specify INSTALL, as the
  dnl autoconf one overwrites INSTALL and we have no chance to find
  dnl out afterwards
  test -n "$INSTALL" && kde_save_INSTALL_given=$INSTALL
  test -n "$INSTALL_PROGRAM" && kde_save_INSTALL_PROGRAM_given=$INSTALL_PROGRAM
  test -n "$INSTALL_SCRIPT" && kde_save_INSTALL_SCRIPT_given=$INSTALL_SCRIPT
  AC_PROG_INSTALL

  if test -z "$kde_save_INSTALL_given" ; then
    # OK, user hasn't given any INSTALL, autoconf found one for us
    # now we test, if it supports the -p flag
    AC_MSG_CHECKING(for -p flag to install)
    rm -f confinst.$$.* > /dev/null 2>&1
    echo "Testtest" > confinst.$$.orig
    ac_res=no
    if ${INSTALL} -p confinst.$$.orig confinst.$$.new > /dev/null 2>&1 ; then
      if test -f confinst.$$.new ; then
        # OK, -p seems to do no harm to install
	INSTALL="${INSTALL} -p"
	ac_res=yes
      fi
    fi
    rm -f confinst.$$.*
    AC_MSG_RESULT($ac_res)
  fi
  dnl the following tries to resolve some signs and wonders coming up
  dnl with different autoconf/automake versions
  dnl e.g.:
  dnl  *automake 1.4 install-strip sets A_M_INSTALL_PROGRAM_FLAGS to -s
  dnl   and has INSTALL_PROGRAM = @INSTALL_PROGRAM@ $(A_M_INSTALL_PROGRAM_FLAGS)
  dnl   it header-vars.am, so there the actual INSTALL_PROGRAM gets the -s
  dnl  *automake 1.4a (and above) use INSTALL_STRIP_FLAG and only has
  dnl   INSTALL_PROGRAM = @INSTALL_PROGRAM@ there, but changes the
  dnl   install-@DIR@PROGRAMS targets to explicitly use that flag
  dnl  *autoconf 2.13 is dumb, and thinks it can use INSTALL_PROGRAM as
  dnl   INSTALL_SCRIPT, which breaks with automake <= 1.4
  dnl  *autoconf >2.13 (since 10.Apr 1999) has not that failure
  dnl  *sometimes KDE does not use the install-@DIR@PROGRAM targets from
  dnl   automake (due to broken Makefile.am or whatever) to install programs,
  dnl   and so does not see the -s flag in automake > 1.4
  dnl to clean up that mess we:
  dnl  +set INSTALL_PROGRAM to use INSTALL_STRIP_FLAG
  dnl   which cleans KDE's program with automake > 1.4;
  dnl  +set INSTALL_SCRIPT to only use INSTALL, to clean up autoconf's problems
  dnl   with automake<=1.4
  dnl  note that dues to this sometimes two '-s' flags are used (if KDE
  dnl   properly uses install-@DIR@PROGRAMS, but I don't care
  dnl
  dnl And to all this comes, that I even can't write in comments variable
  dnl  names used by automake, because it is so stupid to think I wanted to
  dnl  _use_ them, therefor I have written A_M_... instead of AM_
  dnl hmm, I wanted to say something ... ahh yes: Arghhh.

  if test -z "$kde_save_INSTALL_PROGRAM_given" ; then
    INSTALL_PROGRAM='${INSTALL} $(INSTALL_STRIP_FLAG)'
  fi
  if test -z "$kde_save_INSTALL_SCRIPT_given" ; then
    INSTALL_SCRIPT='${INSTALL}'
  fi
])dnl

AC_DEFUN([KDE_LANG_CPLUSPLUS],
[AC_LANG_CPLUSPLUS
ac_link='rm -rf SunWS_cache; ${CXX-g++} -o conftest${ac_exeext} $CXXFLAGS $CPPFLAGS $LDFLAGS conftest.$ac_ext $LIBS 1>&AC_FD_CC'
pushdef([AC_LANG_CPLUSPLUS], [popdef([AC_LANG_CPLUSPLUS]) KDE_LANG_CPLUSPLUS])
])

pushdef([AC_LANG_CPLUSPLUS],
[popdef([AC_LANG_CPLUSPLUS])
KDE_LANG_CPLUSPLUS
])

AC_DEFUN([KDE_CHECK_LONG_LONG],
[
AC_MSG_CHECKING(for long long)
AC_CACHE_VAL(kde_cv_c_long_long,
[
  AC_LANG_SAVE
  AC_LANG_CPLUSPLUS
  AC_TRY_LINK([], [
  long long foo = 0;
  foo = foo+1;
  ],
  kde_cv_c_long_long=yes, kde_cv_c_long_long=no)
  AC_LANG_RESTORE
])
AC_MSG_RESULT($kde_cv_c_long_long)
if test "$kde_cv_c_long_long" = yes; then
   AC_DEFINE(HAVE_LONG_LONG, 1, [Define if you have long long as datatype])
fi
])

AC_DEFUN([KDE_CHECK_LIB],
[
     kde_save_LDFLAGS="$LDFLAGS"
     dnl AC_CHECK_LIB modifies LIBS, so save it here
     kde_save_LIBS="$LIBS"
     LDFLAGS="$LDFLAGS $all_libraries"
     case $host_os in
      aix*) LDFLAGS="-brtl $LDFLAGS"
	test "$GCC" = yes && LDFLAGS="-Wl,$LDFLAGS"
	;;
     esac
     AC_CHECK_LIB($1, $2, $3, $4, $5)
     LDFLAGS="$kde_save_LDFLAGS"
     LIBS="$kde_save_LIBS"
])




AC_DEFUN([KDE_CHECK_INITGROUPS],
[ 
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CHECK_FUNCS(initgroups)
  if test "x$ac_cv_func_initgroups" = "xyes"; then
    case $host_os in
      aix*) AC_LANG_SAVE
            AC_LANG_CPLUSPLUS
            AC_MSG_CHECKING([for initgroups prototype])
            AC_CACHE_VAL(kde_cv_check_initgroups_proto,
            [ AC_TRY_COMPILE(
              [ #include <grp.h>
              ],
              [ char buffer[10];
                gid_t id;
                int x = initgroups(buffer,id);
              ],
              kde_cv_check_initgroups_proto=yes,
              kde_cv_check_initgroups_proto=no)
            ])
            AC_MSG_RESULT($kde_cv_check_initgroups_proto)
            AC_LANG_RESTORE
            ;;
      *)
            kde_cv_check_initgroups_proto=yes
            ;;
    esac
  else
    kde_cv_check_initgroups_proto=no
  fi
  if test "x$kde_cv_check_initgroups_proto" = "xyes"; then
    kde_check_initgroups_proto=1
  else
    kde_check_initgroups_proto=0
  fi
  AC_DEFINE_UNQUOTED(HAVE_INITGROUPS_PROTO,$kde_check_initgroups_proto,
           [initgroups may exist but not its prototype (e.g. AIX<4.3.3:8)])
])


AC_DEFUN([KDE_CHECK_JAVA_DIR],
[
AC_MSG_CHECKING([for Java directory])

AC_ARG_WITH(java,
[  --with-java=javadir     use java installed in javadir, --without-java disables ],
[  ac_java_dir=$withval
], ac_java_dir=""
)

dnl at this point ac_java_dir is either a dir, 'no' to disable, or '' to say look in $PATH
if test "x$ac_java_dir" = "xno"; then
   kde_cv_java_bindir=no
   kde_cv_java_includedir=no
   kde_java_libjvmdir=no
   kde_java_libhpidir=no
else
  if test "x$ac_java_dir" = "x"; then
    dnl No option set -> look in $PATH
    AC_CACHE_VAL(kde_cv_java_bindir,
    [
      dnl First look for javac in $PATH. If not found we'll look at the option.
      KDE_FIND_PATH(javac, JAVAC, [], [])
      if test -n "$JAVAC"; then
          kde_cv_java_bindir=`echo $JAVAC | sed -e 's,/javac$,/,'`
          dnl this substitution might not work - well, we test for jni.h below
          kde_cv_java_includedir=`echo $kde_cv_java_bindir | sed -e 's,bin/$,include/,'`
      else
          kde_cv_java_bindir=no
      fi
    ])
  else
    dnl config option set
    kde_cv_java_bindir=$ac_java_dir/bin
    kde_cv_java_includedir=$ac_java_dir/include
  fi
fi

dnl At this point kde_cv_java_bindir and kde_cv_java_includedir are either set or "no"
if test "x$kde_cv_java_bindir" != "xno"; then

  dnl Look for libjvm.so
  kde_java_libjvmdir=`find $kde_cv_java_bindir/.. -name libjvm.so | sed 's,libjvm.so,,'|head -n 1`
  dnl Look for libhpi.so and avoid green threads
  kde_java_libhpidir=`find $kde_cv_java_bindir/.. -name libhpi.so | grep -v green | sed 's,libhpi.so,,'`

  dnl Now check everything's fine under there

  if test ! -x "$kde_cv_java_bindir/javac"; then
    AC_MSG_ERROR([javac not found under $kde_cv_java_bindir - it seems you passed a wrong --with-java.])
  fi
  if test ! -x "$kde_cv_java_bindir/javah"; then
    AC_MSG_ERROR([javah not found under $kde_cv_java_bindir. javac was found though! Use --with-java or --without-java.])
  fi
  if test ! -x "$kde_cv_java_bindir/jar"; then
    AC_MSG_ERROR([jar not found under $kde_cv_java_bindir. javac was found though! Use --with-java or --without-java.])
  fi
  if test ! -r "$kde_cv_java_includedir/jni.h"; then
    AC_MSG_ERROR([jni.h not found under $kde_cv_java_includedir. Use --with-java or --without-java.])
  fi
  if test ! -r "$kde_java_libjvmdir/libjvm.so"; then
    AC_MSG_ERROR([libjvm.so not found under $kde_java_libjvmdir. Use --without-java.])
  fi
  if test ! -r "$kde_java_libhpidir/libhpi.so"; then
    AC_MSG_ERROR([libhpi.so not found under $kde_java_libhpidir. Use --without-java.])
  fi

  jni_includes="-I$kde_cv_java_includedir"
  dnl Strange thing, jni.h requires jni_md.h which is under genunix here..
  dnl and under linux here..
  test -d "$kde_cv_java_includedir/linux" && jni_includes="$jni_includes -I$kde_cv_java_includedir/linux"
  test -d "$kde_cv_java_includedir/genunix" && jni_includes="$jni_includes -I$kde_cv_java_includedir/genunix"

  dnl Check for JNI version
  AC_LANG_SAVE
  AC_LANG_CPLUSPLUS
  ac_cxxflags_safe="$CXXFLAGS"
  CXXFLAGS="$CXXFLAGS $all_includes $jni_includes"

  AC_TRY_COMPILE([
#include <jni.h>
	    ],
	    [
#ifndef JNI_VERSION_1_2
Syntax Error
#endif
	    ],[ kde_jni_works=yes ],
            [ kde_jni_works=no ])

  if test $kde_jni_works = no; then
    AC_MSG_ERROR([Incorrect version of $kde_cv_java_includedir/jni.h.
	          You need to have Java Development Kit (JDK) version 1.2. 
	
	          Use --with-java to specify another location.
	          Use --without-java to configure without java support.
        	  Or download a newer JDK and try again. 
	          See e.g. http://java.sun.com/products/jdk/1.2 ])
  fi

  CXXFLAGS="$ac_cxxflags_safe"    
  AC_LANG_RESTORE

  dnl All tests ok, inform and subst the variables
  AC_MSG_RESULT([javac/javah/jar in $kde_cv_java_bindir, jni.h in $kde_cv_java_includedir])

  JAVAC=$kde_cv_java_bindir/javac
  AC_SUBST(JAVAC)
  JAVAH=$kde_cv_java_bindir/javah
  AC_SUBST(JAVAH)
  JAR=$kde_cv_java_bindir/jar
  AC_SUBST(JAR)
  AC_SUBST(jni_includes)
  JVMLIBS="-L$kde_java_libjvmdir -ljvm -L$kde_java_libhpidir -lhpi"
  AC_SUBST(JVMLIBS)
fi
])

dnl this is a redefinition of autoconf 2.5x's AC_FOREACH.
dnl When the argument list becomes big, as in KDE for AC_OUTPUT in
dnl big packages, m4_foreach is dog-slow.  So use our own version of
dnl it.  (matz@kde.org)
dnl m4_define([mm_foreach],
dnl [m4_pushdef([$1])_mm_foreach($@)m4_popdef([$1])])
dnl m4_define([mm_car], [[$1]])
dnl m4_define([mm_car2], [[$@]])
dnl m4_define([_mm_foreach],
dnl [m4_if(m4_quote($2), [], [],
dnl       [m4_define([$1], [mm_car($2)])$3[]_mm_foreach([$1],
dnl                                                     mm_car2(m4_shift($2)),
dnl                                                     [$3])])])
dnl m4_define([AC_FOREACH],
dnl [mm_foreach([$1], m4_split(m4_normalize([$2])), [$3])])

AC_DEFUN([KDE_NEED_FLEX],
[
kde_libs_safe=$LIBS
LIBS="$LIBS $USER_LDFLAGS"
AM_PROG_LEX
LIBS=$kde_libs_safe
if test -z "$LEXLIB"; then
    AC_MSG_ERROR([You need to have flex installed.])
fi
AC_SUBST(LEXLIB)
])

AC_DEFUN([AC_PATH_QTOPIA],
[
  dnl TODO: use AC_CACHE_VAL

  if test -z "$1"; then
    qtopia_minver_maj=1
    qtopia_minver_min=5
    qtopia_minver_pat=0
  else
    qtopia_minver_maj=`echo "$1" | sed -e "s/^\(.*\)\..*\..*$/\1/"`
    qtopia_minver_min=`echo "$1" | sed -e "s/^.*\.\(.*\)\..*$/\1/"`
    qtopia_minver_pat=`echo "$1" | sed -e "s/^.*\..*\.\(.*\)$/\1/"`
  fi

  qtopia_minver="$qtopia_minver_maj$qtopia_minver_min$qtopia_minver_pat"
  qtopia_minverstr="$qtopia_minver_maj.$qtopia_minver_min.$qtopia_minver_pat"

  AC_REQUIRE([AC_PATH_QT])

  AC_MSG_CHECKING([for Qtopia])

  LIB_QTOPIA="-lqpe"
  AC_SUBST(LIB_QTOPIA)

  kde_qtopia_dirs="$QPEDIR /opt/Qtopia"

  ac_qtopia_incdir=NO

  AC_ARG_WITH(qtopia-dir,
              [  --with-qtopia-dir=DIR   where the root of Qtopia is installed ],
              [  ac_qtopia_incdir="$withval"/include] ) 
  
  qtopia_incdirs=""
  for dir in $kde_qtopia_dirs; do
    qtopia_incdirs="$qtopia_incdirs $dir/include"
  done

  if test ! "$ac_qtopia_incdir" = "NO"; then
    qtopia_incdirs="$ac_qtopia_incdir $qtopia_incdirs"
  fi

  qtopia_incdir=""
  AC_FIND_FILE(qpe/qpeapplication.h, $qtopia_incdirs, qtopia_incdir)
  ac_qtopia_incdir="$qtopia_incdir"

  if test -z "$qtopia_incdir"; then
    AC_MSG_ERROR([Cannot find Qtopia headers. Please check your installation.])
  fi

  qtopia_ver_maj=`cat $qtopia_incdir/qpe/version.h | sed -n -e 's,.*QPE_VERSION "\(.*\)\..*\..*".*,\1,p'`;
  qtopia_ver_min=`cat $qtopia_incdir/qpe/version.h | sed -n -e 's,.*QPE_VERSION ".*\.\(.*\)\..*".*,\1,p'`;
  qtopia_ver_pat=`cat $qtopia_incdir/qpe/version.h | sed -n -e 's,.*QPE_VERSION ".*\..*\.\(.*\)".*,\1,p'`;

  qtopia_ver="$qtopia_ver_maj$qtopia_ver_min$qtopia_ver_pat"
  qtopia_verstr="$qtopia_ver_maj.$qtopia_ver_min.$qtopia_ver_pat"
  if test "$qtopia_ver" -lt "$qtopia_minver"; then
    AC_MSG_ERROR([found Qtopia version $qtopia_verstr but version $qtopia_minverstr
is required.])
  fi

  AC_LANG_SAVE
  AC_LANG_CPLUSPLUS

  ac_cxxflags_safe="$CXXFLAGS"
  ac_ldflags_safe="$LDFLAGS"
  ac_libs_safe="$LIBS"

  CXXFLAGS="$CXXFLAGS -I$qtopia_incdir $all_includes"
  LDFLAGS="$LDFLAGS $QT_LDFLAGS $all_libraries $USER_LDFLAGS $KDE_MT_LDFLAGS"
  LIBS="$LIBS $LIB_QTOPIA $LIBQT"

  cat > conftest.$ac_ext <<EOF
#include "confdefs.h"
#include <qpe/qpeapplication.h>
#include <qpe/version.h>

int main( int argc, char **argv )
{
    QPEApplication app( argc, argv );
    return 0;
}
EOF

  if AC_TRY_EVAL(ac_link) && test -s conftest; then
    rm -f conftest*
  else
    rm -f conftest*
    AC_MSG_ERROR([Cannot link small Qtopia Application. For more details look at
the end of config.log])
  fi

  CXXFLAGS="$ac_cxxflags_safe"
  LDFLAGS="$ac_ldflags_safe"
  LIBS="$ac_libs_safe"

  AC_LANG_RESTORE

  QTOPIA_INCLUDES="-I$qtopia_incdir"
  AC_SUBST(QTOPIA_INCLUDES)

  AC_MSG_RESULT([found version $qtopia_verstr with headers at $qtopia_incdir])
])

# libtool.m4 - Configure libtool for the host system. -*-Autoconf-*-

# serial 47 AC_PROG_LIBTOOL
# Debian $Rev: 214 $


# AC_PROVIDE_IFELSE(MACRO-NAME, IF-PROVIDED, IF-NOT-PROVIDED)
# -----------------------------------------------------------
# If this macro is not defined by Autoconf, define it here.
m4_ifdef([AC_PROVIDE_IFELSE],
         [],
         [m4_define([AC_PROVIDE_IFELSE],
	         [m4_ifdef([AC_PROVIDE_$1],
		           [$2], [$3])])])


# AC_PROG_LIBTOOL
# ---------------
AC_DEFUN([AC_PROG_LIBTOOL],
[AC_REQUIRE([_AC_PROG_LIBTOOL])dnl
dnl If AC_PROG_CXX has already been expanded, run AC_LIBTOOL_CXX
dnl immediately, otherwise, hook it in at the end of AC_PROG_CXX.
  AC_PROVIDE_IFELSE([AC_PROG_CXX],
    [AC_LIBTOOL_CXX],
    [define([AC_PROG_CXX], defn([AC_PROG_CXX])[AC_LIBTOOL_CXX
  ])])
dnl And a similar setup for Fortran 77 support
  AC_PROVIDE_IFELSE([AC_PROG_F77],
    [AC_LIBTOOL_F77],
    [define([AC_PROG_F77], defn([AC_PROG_F77])[AC_LIBTOOL_F77
])])

dnl Quote A][M_PROG_GCJ so that aclocal doesn't bring it in needlessly.
dnl If either AC_PROG_GCJ or A][M_PROG_GCJ have already been expanded, run
dnl AC_LIBTOOL_GCJ immediately, otherwise, hook it in at the end of both.
  AC_PROVIDE_IFELSE([AC_PROG_GCJ],
    [AC_LIBTOOL_GCJ],
    [AC_PROVIDE_IFELSE([A][M_PROG_GCJ],
      [AC_LIBTOOL_GCJ],
      [AC_PROVIDE_IFELSE([LT_AC_PROG_GCJ],
	[AC_LIBTOOL_GCJ],
      [ifdef([AC_PROG_GCJ],
	     [define([AC_PROG_GCJ], defn([AC_PROG_GCJ])[AC_LIBTOOL_GCJ])])
       ifdef([A][M_PROG_GCJ],
	     [define([A][M_PROG_GCJ], defn([A][M_PROG_GCJ])[AC_LIBTOOL_GCJ])])
       ifdef([LT_AC_PROG_GCJ],
	     [define([LT_AC_PROG_GCJ],
		defn([LT_AC_PROG_GCJ])[AC_LIBTOOL_GCJ])])])])
])])# AC_PROG_LIBTOOL


# _AC_PROG_LIBTOOL
# ----------------
AC_DEFUN([_AC_PROG_LIBTOOL],
[AC_REQUIRE([AC_LIBTOOL_SETUP])dnl
AC_BEFORE([$0],[AC_LIBTOOL_CXX])dnl
AC_BEFORE([$0],[AC_LIBTOOL_F77])dnl
AC_BEFORE([$0],[AC_LIBTOOL_GCJ])dnl

# This can be used to rebuild libtool when needed
LIBTOOL_DEPS="$ac_aux_dir/ltmain.sh"

# Always use our own libtool.
LIBTOOL='$(SHELL) $(top_builddir)/libtool'
AC_SUBST(LIBTOOL)dnl

# Prevent multiple expansion
define([AC_PROG_LIBTOOL], [])
])# _AC_PROG_LIBTOOL


# AC_LIBTOOL_SETUP
# ----------------
AC_DEFUN([AC_LIBTOOL_SETUP],
[AC_PREREQ(2.50)dnl
AC_REQUIRE([AC_ENABLE_SHARED])dnl
AC_REQUIRE([AC_ENABLE_STATIC])dnl
AC_REQUIRE([AC_ENABLE_FAST_INSTALL])dnl
AC_REQUIRE([AC_CANONICAL_HOST])dnl
AC_REQUIRE([AC_CANONICAL_BUILD])dnl
AC_REQUIRE([AC_PROG_CC])dnl
AC_REQUIRE([AC_PROG_LD])dnl
AC_REQUIRE([AC_PROG_LD_RELOAD_FLAG])dnl
AC_REQUIRE([AC_PROG_NM])dnl

AC_REQUIRE([AC_PROG_LN_S])dnl
AC_REQUIRE([AC_DEPLIBS_CHECK_METHOD])dnl
# Autoconf 2.13's AC_OBJEXT and AC_EXEEXT macros only works for C compilers!
AC_REQUIRE([AC_OBJEXT])dnl
AC_REQUIRE([AC_EXEEXT])dnl
dnl

AC_LIBTOOL_SYS_MAX_CMD_LEN
AC_LIBTOOL_SYS_GLOBAL_SYMBOL_PIPE
AC_LIBTOOL_OBJDIR

AC_REQUIRE([_LT_AC_SYS_COMPILER])dnl
_LT_AC_PROG_ECHO_BACKSLASH

case $host_os in
aix3*)
  # AIX sometimes has problems with the GCC collect2 program.  For some
  # reason, if we set the COLLECT_NAMES environment variable, the problems
  # vanish in a puff of smoke.
  if test "X${COLLECT_NAMES+set}" != Xset; then
    COLLECT_NAMES=
    export COLLECT_NAMES
  fi
  ;;
esac

# Sed substitution that helps us do robust quoting.  It backslashifies
# metacharacters that are still active within double-quoted strings.
Xsed='sed -e s/^X//'
[sed_quote_subst='s/\([\\"\\`$\\\\]\)/\\\1/g']

# Same as above, but do not quote variable references.
[double_quote_subst='s/\([\\"\\`\\\\]\)/\\\1/g']

# Sed substitution to delay expansion of an escaped shell variable in a
# double_quote_subst'ed string.
delay_variable_subst='s/\\\\\\\\\\\$/\\\\\\$/g'

# Sed substitution to avoid accidental globbing in evaled expressions
no_glob_subst='s/\*/\\\*/g'

# Constants:
rm="rm -f"

# Global variables:
default_ofile=libtool
can_build_shared=yes

# All known linkers require a `.a' archive for static linking (except M$VC,
# which needs '.lib').
libext=a
ltmain="$ac_aux_dir/ltmain.sh"
ofile="$default_ofile"
with_gnu_ld="$lt_cv_prog_gnu_ld"

AC_CHECK_TOOL(AR, ar, false)
AC_CHECK_TOOL(RANLIB, ranlib, :)
AC_CHECK_TOOL(STRIP, strip, :)

old_CC="$CC"
old_CFLAGS="$CFLAGS"

# Set sane defaults for various variables
test -z "$AR" && AR=ar
test -z "$AR_FLAGS" && AR_FLAGS=cru
test -z "$AS" && AS=as
test -z "$CC" && CC=cc
test -z "$LTCC" && LTCC=$CC
test -z "$DLLTOOL" && DLLTOOL=dlltool
test -z "$LD" && LD=ld
test -z "$LN_S" && LN_S="ln -s"
test -z "$MAGIC_CMD" && MAGIC_CMD=file
test -z "$NM" && NM=nm
test -z "$SED" && SED=sed
test -z "$OBJDUMP" && OBJDUMP=objdump
test -z "$RANLIB" && RANLIB=:
test -z "$STRIP" && STRIP=:
test -z "$ac_objext" && ac_objext=o

# Determine commands to create old-style static archives.
old_archive_cmds='$AR $AR_FLAGS $oldlib$oldobjs$old_deplibs'
old_postinstall_cmds='chmod 644 $oldlib'
old_postuninstall_cmds=

if test -n "$RANLIB"; then
  case $host_os in
  openbsd*)
    old_postinstall_cmds="\$RANLIB -t \$oldlib~$old_postinstall_cmds"
    ;;
  *)
    old_postinstall_cmds="\$RANLIB \$oldlib~$old_postinstall_cmds"
    ;;
  esac
  old_archive_cmds="$old_archive_cmds~\$RANLIB \$oldlib"
fi

# Only perform the check for file, if the check method requires it
case $deplibs_check_method in
file_magic*)
  if test "$file_magic_cmd" = '$MAGIC_CMD'; then
    AC_PATH_MAGIC
  fi
  ;;
esac

AC_PROVIDE_IFELSE([AC_LIBTOOL_DLOPEN], enable_dlopen=yes, enable_dlopen=no)
AC_PROVIDE_IFELSE([AC_LIBTOOL_WIN32_DLL],
enable_win32_dll=yes, enable_win32_dll=no)

AC_ARG_ENABLE([libtool-lock],
    [AC_HELP_STRING([--disable-libtool-lock],
	[avoid locking (might break parallel builds)])])
test "x$enable_libtool_lock" != xno && enable_libtool_lock=yes

AC_ARG_WITH([pic],
    [AC_HELP_STRING([--with-pic],
	[try to use only PIC/non-PIC objects @<:@default=use both@:>@])],
    [pic_mode="$withval"],
    [pic_mode=default])
test -z "$pic_mode" && pic_mode=default

# Use C for the default configuration in the libtool script
tagname=
AC_LIBTOOL_LANG_C_CONFIG
_LT_AC_TAGCONFIG
])# AC_LIBTOOL_SETUP


# _LT_AC_SYS_COMPILER
# -------------------
AC_DEFUN([_LT_AC_SYS_COMPILER],
[AC_REQUIRE([AC_PROG_CC])dnl

# If no C compiler was specified, use CC.
LTCC=${LTCC-"$CC"}

# Allow CC to be a program name with arguments.
compiler=$CC
])# _LT_AC_SYS_COMPILER


# _LT_AC_SYS_LIBPATH_AIX
# ----------------------
# Links a minimal program and checks the executable
# for the system default hardcoded library path. In most cases,
# this is /usr/lib:/lib, but when the MPI compilers are used
# the location of the communication and MPI libs are included too.
# If we don't find anything, use the default library path according
# to the aix ld manual.
AC_DEFUN([_LT_AC_SYS_LIBPATH_AIX],
[AC_LINK_IFELSE(AC_LANG_PROGRAM,[
aix_libpath=`dump -H conftest$ac_exeext 2>/dev/null | $SED -n -e '/Import File Strings/,/^$/ { /^0/ { s/^0  *\(.*\)$/\1/; p; }
}'`
# Check for a 64-bit object if we didn't find anything.
if test -z "$aix_libpath"; then aix_libpath=`dump -HX64 conftest$ac_exeext 2>/dev/null | $SED -n -e '/Import File Strings/,/^$/ { /^0/ { s/^0  *\(.*\)$/\1/; p; }
}'`; fi],[])
if test -z "$aix_libpath"; then aix_libpath="/usr/lib:/lib"; fi
])# _LT_AC_SYS_LIBPATH_AIX


# _LT_AC_SHELL_INIT(ARG)
# ----------------------
AC_DEFUN([_LT_AC_SHELL_INIT],
[ifdef([AC_DIVERSION_NOTICE],
	     [AC_DIVERT_PUSH(AC_DIVERSION_NOTICE)],
	 [AC_DIVERT_PUSH(NOTICE)])
$1
AC_DIVERT_POP
])# _LT_AC_SHELL_INIT


# _LT_AC_PROG_ECHO_BACKSLASH
# --------------------------
# Add some code to the start of the generated configure script which
# will find an echo command which doesn't interpret backslashes.
AC_DEFUN([_LT_AC_PROG_ECHO_BACKSLASH],
[_LT_AC_SHELL_INIT([
# Check that we are running under the correct shell.
SHELL=${CONFIG_SHELL-/bin/sh}

case X$ECHO in
X*--fallback-echo)
  # Remove one level of quotation (which was required for Make).
  ECHO=`echo "$ECHO" | sed 's,\\\\\[$]\\[$]0,'[$]0','`
  ;;
esac

echo=${ECHO-echo}
if test "X[$]1" = X--no-reexec; then
  # Discard the --no-reexec flag, and continue.
  shift
elif test "X[$]1" = X--fallback-echo; then
  # Avoid inline document here, it may be left over
  :
elif test "X`($echo '\t') 2>/dev/null`" = 'X\t' ; then
  # Yippee, $echo works!
  :
else
  # Restart under the correct shell.
  exec $SHELL "[$]0" --no-reexec ${1+"[$]@"}
fi

if test "X[$]1" = X--fallback-echo; then
  # used as fallback echo
  shift
  cat <<EOF
[$]*
EOF
  exit 0
fi

# The HP-UX ksh and POSIX shell print the target directory to stdout
# if CDPATH is set.
if test "X${CDPATH+set}" = Xset; then CDPATH=:; export CDPATH; fi

if test -z "$ECHO"; then
if test "X${echo_test_string+set}" != Xset; then
# find a string as large as possible, as long as the shell can cope with it
  for cmd in 'sed 50q "[$]0"' 'sed 20q "[$]0"' 'sed 10q "[$]0"' 'sed 2q "[$]0"' 'echo test'; do
    # expected sizes: less than 2Kb, 1Kb, 512 bytes, 16 bytes, ...
    if (echo_test_string="`eval $cmd`") 2>/dev/null &&
       echo_test_string="`eval $cmd`" &&
       (test "X$echo_test_string" = "X$echo_test_string") 2>/dev/null
    then
      break
    fi
  done
fi

if test "X`($echo '\t') 2>/dev/null`" = 'X\t' &&
   echo_testing_string=`($echo "$echo_test_string") 2>/dev/null` &&
   test "X$echo_testing_string" = "X$echo_test_string"; then
  :
else
  # The Solaris, AIX, and Digital Unix default echo programs unquote
  # backslashes.  This makes it impossible to quote backslashes using
  #   echo "$something" | sed 's/\\/\\\\/g'
  #
  # So, first we look for a working echo in the user's PATH.

  lt_save_ifs="$IFS"; IFS=$PATH_SEPARATOR
  for dir in $PATH /usr/ucb; do
    IFS="$lt_save_ifs"
    if (test -f $dir/echo || test -f $dir/echo$ac_exeext) &&
       test "X`($dir/echo '\t') 2>/dev/null`" = 'X\t' &&
       echo_testing_string=`($dir/echo "$echo_test_string") 2>/dev/null` &&
       test "X$echo_testing_string" = "X$echo_test_string"; then
      echo="$dir/echo"
      break
    fi
  done
  IFS="$lt_save_ifs"

  if test "X$echo" = Xecho; then
    # We didn't find a better echo, so look for alternatives.
    if test "X`(print -r '\t') 2>/dev/null`" = 'X\t' &&
       echo_testing_string=`(print -r "$echo_test_string") 2>/dev/null` &&
       test "X$echo_testing_string" = "X$echo_test_string"; then
      # This shell has a builtin print -r that does the trick.
      echo='print -r'
    elif (test -f /bin/ksh || test -f /bin/ksh$ac_exeext) &&
	 test "X$CONFIG_SHELL" != X/bin/ksh; then
      # If we have ksh, try running configure again with it.
      ORIGINAL_CONFIG_SHELL=${CONFIG_SHELL-/bin/sh}
      export ORIGINAL_CONFIG_SHELL
      CONFIG_SHELL=/bin/ksh
      export CONFIG_SHELL
      exec $CONFIG_SHELL "[$]0" --no-reexec ${1+"[$]@"}
    else
      # Try using printf.
      echo='printf %s\n'
      if test "X`($echo '\t') 2>/dev/null`" = 'X\t' &&
	 echo_testing_string=`($echo "$echo_test_string") 2>/dev/null` &&
	 test "X$echo_testing_string" = "X$echo_test_string"; then
	# Cool, printf works
	:
      elif echo_testing_string=`($ORIGINAL_CONFIG_SHELL "[$]0" --fallback-echo '\t') 2>/dev/null` &&
	   test "X$echo_testing_string" = 'X\t' &&
	   echo_testing_string=`($ORIGINAL_CONFIG_SHELL "[$]0" --fallback-echo "$echo_test_string") 2>/dev/null` &&
	   test "X$echo_testing_string" = "X$echo_test_string"; then
	CONFIG_SHELL=$ORIGINAL_CONFIG_SHELL
	export CONFIG_SHELL
	SHELL="$CONFIG_SHELL"
	export SHELL
	echo="$CONFIG_SHELL [$]0 --fallback-echo"
      elif echo_testing_string=`($CONFIG_SHELL "[$]0" --fallback-echo '\t') 2>/dev/null` &&
	   test "X$echo_testing_string" = 'X\t' &&
	   echo_testing_string=`($CONFIG_SHELL "[$]0" --fallback-echo "$echo_test_string") 2>/dev/null` &&
	   test "X$echo_testing_string" = "X$echo_test_string"; then
	echo="$CONFIG_SHELL [$]0 --fallback-echo"
      else
	# maybe with a smaller string...
	prev=:

	for cmd in 'echo test' 'sed 2q "[$]0"' 'sed 10q "[$]0"' 'sed 20q "[$]0"' 'sed 50q "[$]0"'; do
	  if (test "X$echo_test_string" = "X`eval $cmd`") 2>/dev/null
	  then
	    break
	  fi
	  prev="$cmd"
	done

	if test "$prev" != 'sed 50q "[$]0"'; then
	  echo_test_string=`eval $prev`
	  export echo_test_string
	  exec ${ORIGINAL_CONFIG_SHELL-${CONFIG_SHELL-/bin/sh}} "[$]0" ${1+"[$]@"}
	else
	  # Oops.  We lost completely, so just stick with echo.
	  echo=echo
	fi
      fi
    fi
  fi
fi
fi

# Copy echo and quote the copy suitably for passing to libtool from
# the Makefile, instead of quoting the original, which is used later.
ECHO=$echo
if test "X$ECHO" = "X$CONFIG_SHELL [$]0 --fallback-echo"; then
   ECHO="$CONFIG_SHELL \\\$\[$]0 --fallback-echo"
fi

AC_SUBST(ECHO)
])])# _LT_AC_PROG_ECHO_BACKSLASH


# _LT_AC_LOCK
# -----------
AC_DEFUN([_LT_AC_LOCK],
[AC_ARG_ENABLE([libtool-lock],
    [AC_HELP_STRING([--disable-libtool-lock],
	[avoid locking (might break parallel builds)])])
test "x$enable_libtool_lock" != xno && enable_libtool_lock=yes

# Some flags need to be propagated to the compiler or linker for good
# libtool support.
case $host in
ia64-*-hpux*)
  # Find out which ABI we are using.
  echo 'int i;' > conftest.$ac_ext
  if AC_TRY_EVAL(ac_compile); then
    case `/usr/bin/file conftest.$ac_objext` in
    *ELF-32*)
      HPUX_IA64_MODE="32"
      ;;
    *ELF-64*)
      HPUX_IA64_MODE="64"
      ;;
    esac
  fi
  rm -rf conftest*
  ;;
*-*-irix6*)
  # Find out which ABI we are using.
  echo '[#]line __oline__ "configure"' > conftest.$ac_ext
  if AC_TRY_EVAL(ac_compile); then
   if test "$lt_cv_prog_gnu_ld" = yes; then
    case `/usr/bin/file conftest.$ac_objext` in
    *32-bit*)
      LD="${LD-ld} -melf32bsmip"
      ;;
    *N32*)
      LD="${LD-ld} -melf32bmipn32"
      ;;
    *64-bit*)
      LD="${LD-ld} -melf64bmip"
      ;;
    esac
   else
    case `/usr/bin/file conftest.$ac_objext` in
    *32-bit*)
      LD="${LD-ld} -32"
      ;;
    *N32*)
      LD="${LD-ld} -n32"
      ;;
    *64-bit*)
      LD="${LD-ld} -64"
      ;;
    esac
   fi
  fi
  rm -rf conftest*
  ;;

x86_64-*linux*|ppc*-*linux*|powerpc*-*linux*|s390*-*linux*|sparc*-*linux*)
  # Find out which ABI we are using.
  echo 'int i;' > conftest.$ac_ext
  if AC_TRY_EVAL(ac_compile); then
    case "`/usr/bin/file conftest.o`" in
    *32-bit*)
      case $host in
        x86_64-*linux*)
          LD="${LD-ld} -m elf_i386"
          ;;
        ppc64-*linux*|powerpc64-*linux*)
          LD="${LD-ld} -m elf32ppclinux"
          ;;
        s390x-*linux*)
          LD="${LD-ld} -m elf_s390"
          ;;
        sparc64-*linux*)
          LD="${LD-ld} -m elf32_sparc"
          ;;
      esac
      ;;
    *64-bit*)
      case $host in
        x86_64-*linux*)
          LD="${LD-ld} -m elf_x86_64"
          ;;
        ppc*-*linux*|powerpc*-*linux*)
          LD="${LD-ld} -m elf64ppc"
          ;;
        s390*-*linux*)
          LD="${LD-ld} -m elf64_s390"
          ;;
        sparc*-*linux*)
          LD="${LD-ld} -m elf64_sparc"
          ;;
      esac
      ;;
    esac
  fi
  rm -rf conftest*
  ;;

*-*-sco3.2v5*)
  # On SCO OpenServer 5, we need -belf to get full-featured binaries.
  SAVE_CFLAGS="$CFLAGS"
  CFLAGS="$CFLAGS -belf"
  AC_CACHE_CHECK([whether the C compiler needs -belf], lt_cv_cc_needs_belf,
    [AC_LANG_PUSH(C)
     AC_TRY_LINK([],[],[lt_cv_cc_needs_belf=yes],[lt_cv_cc_needs_belf=no])
     AC_LANG_POP])
  if test x"$lt_cv_cc_needs_belf" != x"yes"; then
    # this is probably gcc 2.8.0, egcs 1.0 or newer; no need for -belf
    CFLAGS="$SAVE_CFLAGS"
  fi
  ;;
AC_PROVIDE_IFELSE([AC_LIBTOOL_WIN32_DLL],
[*-*-cygwin* | *-*-mingw* | *-*-pw32*)
  AC_CHECK_TOOL(DLLTOOL, dlltool, false)
  AC_CHECK_TOOL(AS, as, false)
  AC_CHECK_TOOL(OBJDUMP, objdump, false)
  ;;
  ])
esac

need_locks="$enable_libtool_lock"

])# _LT_AC_LOCK


# AC_LIBTOOL_COMPILER_OPTION(MESSAGE, VARIABLE-NAME, FLAGS,
#		[OUTPUT-FILE], [ACTION-SUCCESS], [ACTION-FAILURE])
# ----------------------------------------------------------------
# Check whether the given compiler option works
AC_DEFUN([AC_LIBTOOL_COMPILER_OPTION],
[AC_REQUIRE([LT_AC_PROG_SED])
AC_CACHE_CHECK([$1], [$2],
  [$2=no
  ifelse([$4], , [ac_outfile=conftest.$ac_objext], [ac_outfile=$4])
   printf "$lt_simple_compile_test_code" > conftest.$ac_ext
   lt_compiler_flag="$3"
   # Insert the option either (1) after the last *FLAGS variable, or
   # (2) before a word containing "conftest.", or (3) at the end.
   # Note that $ac_compile itself does not contain backslashes and begins
   # with a dollar sign (not a hyphen), so the echo should work correctly.
   # The option is referenced via a variable to avoid confusing sed.
   lt_compile=`echo "$ac_compile" | $SED \
   -e 's:.*FLAGS}? :&$lt_compiler_flag :; t' \
   -e 's: [[^ ]]*conftest\.: $lt_compiler_flag&:; t' \
   -e 's:$: $lt_compiler_flag:'`
   (eval echo "\"\$as_me:__oline__: $lt_compile\"" >&AS_MESSAGE_LOG_FD)
   (eval "$lt_compile" 2>conftest.err)
   ac_status=$?
   cat conftest.err >&AS_MESSAGE_LOG_FD
   echo "$as_me:__oline__: \$? = $ac_status" >&AS_MESSAGE_LOG_FD
   if (exit $ac_status) && test -s "$ac_outfile"; then
     # The compiler can only warn and ignore the option if not recognized
     # So say no if there are warnings
     if test ! -s conftest.err; then
       $2=yes
     fi
   fi
   $rm conftest*
])

if test x"[$]$2" = xyes; then
    ifelse([$5], , :, [$5])
else
    ifelse([$6], , :, [$6])
fi
])# AC_LIBTOOL_COMPILER_OPTION


# AC_LIBTOOL_LINKER_OPTION(MESSAGE, VARIABLE-NAME, FLAGS,
#                          [ACTION-SUCCESS], [ACTION-FAILURE])
# ------------------------------------------------------------
# Check whether the given compiler option works
AC_DEFUN([AC_LIBTOOL_LINKER_OPTION],
[AC_CACHE_CHECK([$1], [$2],
  [$2=no
   save_LDFLAGS="$LDFLAGS"
   LDFLAGS="$LDFLAGS $3"
   printf "$lt_simple_link_test_code" > conftest.$ac_ext
   if (eval $ac_link 2>conftest.err) && test -s conftest$ac_exeext; then
     # The compiler can only warn and ignore the option if not recognized
     # So say no if there are warnings
     if test -s conftest.err; then
       # Append any errors to the config.log.
       cat conftest.err 1>&AS_MESSAGE_LOG_FD
     else
       $2=yes
     fi
   fi
   $rm conftest*
   LDFLAGS="$save_LDFLAGS"
])

if test x"[$]$2" = xyes; then
    ifelse([$4], , :, [$4])
else
    ifelse([$5], , :, [$5])
fi
])# AC_LIBTOOL_LINKER_OPTION


# AC_LIBTOOL_SYS_MAX_CMD_LEN
# --------------------------
AC_DEFUN([AC_LIBTOOL_SYS_MAX_CMD_LEN],
[# find the maximum length of command line arguments
AC_MSG_CHECKING([the maximum length of command line arguments])
AC_CACHE_VAL([lt_cv_sys_max_cmd_len], [dnl
  i=0
  teststring="ABCD"

  case $build_os in
  msdosdjgpp*)
    # On DJGPP, this test can blow up pretty badly due to problems in libc
    # (any single argument exceeding 2000 bytes causes a buffer overrun
    # during glob expansion).  Even if it were fixed, the result of this
    # check would be larger than it should be.
    lt_cv_sys_max_cmd_len=12288;    # 12K is about right
    ;;

  gnu*)
    # Under GNU Hurd, this test is not required because there is
    # no limit to the length of command line arguments.
    # Libtool will interpret -1 as no limit whatsoever
    lt_cv_sys_max_cmd_len=-1;
    ;;

  cygwin* | mingw*)
    # On Win9x/ME, this test blows up -- it succeeds, but takes
    # about 5 minutes as the teststring grows exponentially.
    # Worse, since 9x/ME are not pre-emptively multitasking,
    # you end up with a "frozen" computer, even though with patience
    # the test eventually succeeds (with a max line length of 256k).
    # Instead, let's just punt: use the minimum linelength reported by
    # all of the supported platforms: 8192 (on NT/2K/XP).
    lt_cv_sys_max_cmd_len=8192;
    ;;

  amigaos*)
    # On AmigaOS with pdksh, this test takes hours, literally.
    # So we just punt and use a minimum line length of 8192.
    lt_cv_sys_max_cmd_len=8192;
    ;;

 *)
    # If test is not a shell built-in, we'll probably end up computing a
    # maximum length that is only half of the actual maximum length, but
    # we can't tell.
    while (test "X"`$CONFIG_SHELL [$]0 --fallback-echo "X$teststring" 2>/dev/null` \
	       = "XX$teststring") >/dev/null 2>&1 &&
	    new_result=`expr "X$teststring" : ".*" 2>&1` &&
	    lt_cv_sys_max_cmd_len=$new_result &&
	    test $i != 17 # 1/2 MB should be enough
    do
      i=`expr $i + 1`
      teststring=$teststring$teststring
    done
    teststring=
    # Add a significant safety factor because C++ compilers can tack on massive
    # amounts of additional arguments before passing them to the linker.
    # It appears as though 1/2 is a usable value.
    lt_cv_sys_max_cmd_len=`expr $lt_cv_sys_max_cmd_len \/ 2`
    ;;
  esac
])
if test -n $lt_cv_sys_max_cmd_len ; then
  AC_MSG_RESULT($lt_cv_sys_max_cmd_len)
else
  AC_MSG_RESULT(none)
fi
])# AC_LIBTOOL_SYS_MAX_CMD_LEN


# _LT_AC_CHECK_DLFCN
# --------------------
AC_DEFUN([_LT_AC_CHECK_DLFCN],
[AC_CHECK_HEADERS(dlfcn.h)dnl
])# _LT_AC_CHECK_DLFCN


# _LT_AC_TRY_DLOPEN_SELF (ACTION-IF-TRUE, ACTION-IF-TRUE-W-USCORE,
#                           ACTION-IF-FALSE, ACTION-IF-CROSS-COMPILING)
# ------------------------------------------------------------------
AC_DEFUN([_LT_AC_TRY_DLOPEN_SELF],
[AC_REQUIRE([_LT_AC_CHECK_DLFCN])dnl
if test "$cross_compiling" = yes; then :
  [$4]
else
  lt_dlunknown=0; lt_dlno_uscore=1; lt_dlneed_uscore=2
  lt_status=$lt_dlunknown
  cat > conftest.$ac_ext <<EOF
[#line __oline__ "configure"
#include "confdefs.h"

#if HAVE_DLFCN_H
#include <dlfcn.h>
#endif

#include <stdio.h>

#ifdef RTLD_GLOBAL
#  define LT_DLGLOBAL		RTLD_GLOBAL
#else
#  ifdef DL_GLOBAL
#    define LT_DLGLOBAL		DL_GLOBAL
#  else
#    define LT_DLGLOBAL		0
#  endif
#endif

/* We may have to define LT_DLLAZY_OR_NOW in the command line if we
   find out it does not work in some platform. */
#ifndef LT_DLLAZY_OR_NOW
#  ifdef RTLD_LAZY
#    define LT_DLLAZY_OR_NOW		RTLD_LAZY
#  else
#    ifdef DL_LAZY
#      define LT_DLLAZY_OR_NOW		DL_LAZY
#    else
#      ifdef RTLD_NOW
#        define LT_DLLAZY_OR_NOW	RTLD_NOW
#      else
#        ifdef DL_NOW
#          define LT_DLLAZY_OR_NOW	DL_NOW
#        else
#          define LT_DLLAZY_OR_NOW	0
#        endif
#      endif
#    endif
#  endif
#endif

#ifdef __cplusplus
extern "C" void exit (int);
#endif

void fnord() { int i=42;}
int main ()
{
  void *self = dlopen (0, LT_DLGLOBAL|LT_DLLAZY_OR_NOW);
  int status = $lt_dlunknown;

  if (self)
    {
      if (dlsym (self,"fnord"))       status = $lt_dlno_uscore;
      else if (dlsym( self,"_fnord")) status = $lt_dlneed_uscore;
      /* dlclose (self); */
    }

    exit (status);
}]
EOF
  if AC_TRY_EVAL(ac_link) && test -s conftest${ac_exeext} 2>/dev/null; then
    (./conftest; exit; ) 2>/dev/null
    lt_status=$?
    case x$lt_status in
      x$lt_dlno_uscore) $1 ;;
      x$lt_dlneed_uscore) $2 ;;
      x$lt_unknown|x*) $3 ;;
    esac
  else :
    # compilation failed
    $3
  fi
fi
rm -fr conftest*
])# _LT_AC_TRY_DLOPEN_SELF


# AC_LIBTOOL_DLOPEN_SELF
# -------------------
AC_DEFUN([AC_LIBTOOL_DLOPEN_SELF],
[AC_REQUIRE([_LT_AC_CHECK_DLFCN])dnl
if test "x$enable_dlopen" != xyes; then
  enable_dlopen=unknown
  enable_dlopen_self=unknown
  enable_dlopen_self_static=unknown
else
  lt_cv_dlopen=no
  lt_cv_dlopen_libs=

  case $host_os in
  beos*)
    lt_cv_dlopen="load_add_on"
    lt_cv_dlopen_libs=
    lt_cv_dlopen_self=yes
    ;;

  mingw* | pw32*)
    lt_cv_dlopen="LoadLibrary"
    lt_cv_dlopen_libs=
   ;;

  cygwin*)
    lt_cv_dlopen="dlopen"
    lt_cv_dlopen_libs=
   ;;

  darwin*)
  # if libdl is installed we need to link against it
    AC_CHECK_LIB([dl], [dlopen],
		[lt_cv_dlopen="dlopen" lt_cv_dlopen_libs="-ldl"],[
    lt_cv_dlopen="dyld"
    lt_cv_dlopen_libs=
    lt_cv_dlopen_self=yes
    ])
   ;;

  *)
    AC_CHECK_FUNC([shl_load],
	  [lt_cv_dlopen="shl_load"],
      [AC_CHECK_LIB([dld], [shl_load],
	    [lt_cv_dlopen="shl_load" lt_cv_dlopen_libs="-dld"],
	[AC_CHECK_FUNC([dlopen],
	      [lt_cv_dlopen="dlopen"],
	  [AC_CHECK_LIB([dl], [dlopen],
		[lt_cv_dlopen="dlopen" lt_cv_dlopen_libs="-ldl"],
	    [AC_CHECK_LIB([svld], [dlopen],
		  [lt_cv_dlopen="dlopen" lt_cv_dlopen_libs="-lsvld"],
	      [AC_CHECK_LIB([dld], [dld_link],
		    [lt_cv_dlopen="dld_link" lt_cv_dlopen_libs="-dld"])
	      ])
	    ])
	  ])
	])
      ])
    ;;
  esac

  if test "x$lt_cv_dlopen" != xno; then
    enable_dlopen=yes
  else
    enable_dlopen=no
  fi

  case $lt_cv_dlopen in
  dlopen)
    save_CPPFLAGS="$CPPFLAGS"
    test "x$ac_cv_header_dlfcn_h" = xyes && CPPFLAGS="$CPPFLAGS -DHAVE_DLFCN_H"

    save_LDFLAGS="$LDFLAGS"
    eval LDFLAGS=\"\$LDFLAGS $export_dynamic_flag_spec\"

    save_LIBS="$LIBS"
    LIBS="$lt_cv_dlopen_libs $LIBS"

    AC_CACHE_CHECK([whether a program can dlopen itself],
	  lt_cv_dlopen_self, [dnl
	  _LT_AC_TRY_DLOPEN_SELF(
	    lt_cv_dlopen_self=yes, lt_cv_dlopen_self=yes,
	    lt_cv_dlopen_self=no, lt_cv_dlopen_self=cross)
    ])

    if test "x$lt_cv_dlopen_self" = xyes; then
      LDFLAGS="$LDFLAGS $link_static_flag"
      AC_CACHE_CHECK([whether a statically linked program can dlopen itself],
    	  lt_cv_dlopen_self_static, [dnl
	  _LT_AC_TRY_DLOPEN_SELF(
	    lt_cv_dlopen_self_static=yes, lt_cv_dlopen_self_static=yes,
	    lt_cv_dlopen_self_static=no,  lt_cv_dlopen_self_static=cross)
      ])
    fi

    CPPFLAGS="$save_CPPFLAGS"
    LDFLAGS="$save_LDFLAGS"
    LIBS="$save_LIBS"
    ;;
  esac

  case $lt_cv_dlopen_self in
  yes|no) enable_dlopen_self=$lt_cv_dlopen_self ;;
  *) enable_dlopen_self=unknown ;;
  esac

  case $lt_cv_dlopen_self_static in
  yes|no) enable_dlopen_self_static=$lt_cv_dlopen_self_static ;;
  *) enable_dlopen_self_static=unknown ;;
  esac
fi
])# AC_LIBTOOL_DLOPEN_SELF


# AC_LIBTOOL_PROG_CC_C_O([TAGNAME])
# ---------------------------------
# Check to see if options -c and -o are simultaneously supported by compiler
AC_DEFUN([AC_LIBTOOL_PROG_CC_C_O],
[AC_REQUIRE([_LT_AC_SYS_COMPILER])dnl
AC_CACHE_CHECK([if $compiler supports -c -o file.$ac_objext],
  [_LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1)],
  [_LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1)=no
   $rm -r conftest 2>/dev/null
   mkdir conftest
   cd conftest
   mkdir out
   printf "$lt_simple_compile_test_code" > conftest.$ac_ext

   lt_compiler_flag="-o out/conftest2.$ac_objext"
   # Insert the option either (1) after the last *FLAGS variable, or
   # (2) before a word containing "conftest.", or (3) at the end.
   # Note that $ac_compile itself does not contain backslashes and begins
   # with a dollar sign (not a hyphen), so the echo should work correctly.
   lt_compile=`echo "$ac_compile" | $SED \
   -e 's:.*FLAGS}? :&$lt_compiler_flag :; t' \
   -e 's: [[^ ]]*conftest\.: $lt_compiler_flag&:; t' \
   -e 's:$: $lt_compiler_flag:'`
   (eval echo "\"\$as_me:__oline__: $lt_compile\"" >&AS_MESSAGE_LOG_FD)
   (eval "$lt_compile" 2>out/conftest.err)
   ac_status=$?
   cat out/conftest.err >&AS_MESSAGE_LOG_FD
   echo "$as_me:__oline__: \$? = $ac_status" >&AS_MESSAGE_LOG_FD
   if (exit $ac_status) && test -s out/conftest2.$ac_objext
   then
     # The compiler can only warn and ignore the option if not recognized
     # So say no if there are warnings
     if test ! -s out/conftest.err; then
       _LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1)=yes
     fi
   fi
   chmod u+w .
   $rm conftest*
   # SGI C++ compiler will create directory out/ii_files/ for
   # template instantiation
   test -d out/ii_files && $rm out/ii_files/* && rmdir out/ii_files
   $rm out/* && rmdir out
   cd ..
   rmdir conftest
   $rm conftest*
])
])# AC_LIBTOOL_PROG_CC_C_O


# AC_LIBTOOL_SYS_HARD_LINK_LOCKS([TAGNAME])
# -----------------------------------------
# Check to see if we can do hard links to lock some files if needed
AC_DEFUN([AC_LIBTOOL_SYS_HARD_LINK_LOCKS],
[AC_REQUIRE([_LT_AC_LOCK])dnl

hard_links="nottested"
if test "$_LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1)" = no && test "$need_locks" != no; then
  # do not overwrite the value of need_locks provided by the user
  AC_MSG_CHECKING([if we can lock with hard links])
  hard_links=yes
  $rm conftest*
  ln conftest.a conftest.b 2>/dev/null && hard_links=no
  touch conftest.a
  ln conftest.a conftest.b 2>&5 || hard_links=no
  ln conftest.a conftest.b 2>/dev/null && hard_links=no
  AC_MSG_RESULT([$hard_links])
  if test "$hard_links" = no; then
    AC_MSG_WARN([`$CC' does not support `-c -o', so `make -j' may be unsafe])
    need_locks=warn
  fi
else
  need_locks=no
fi
])# AC_LIBTOOL_SYS_HARD_LINK_LOCKS


# AC_LIBTOOL_OBJDIR
# -----------------
AC_DEFUN([AC_LIBTOOL_OBJDIR],
[AC_CACHE_CHECK([for objdir], [lt_cv_objdir],
[rm -f .libs 2>/dev/null
mkdir .libs 2>/dev/null
if test -d .libs; then
  lt_cv_objdir=.libs
else
  # MS-DOS does not allow filenames that begin with a dot.
  lt_cv_objdir=_libs
fi
rmdir .libs 2>/dev/null])
objdir=$lt_cv_objdir
])# AC_LIBTOOL_OBJDIR


# AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH([TAGNAME])
# ----------------------------------------------
# Check hardcoding attributes.
AC_DEFUN([AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH],
[AC_MSG_CHECKING([how to hardcode library paths into programs])
_LT_AC_TAGVAR(hardcode_action, $1)=
if test -n "$_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)" || \
   test -n "$_LT_AC_TAGVAR(runpath_var $1)" || \
   test "X$_LT_AC_TAGVAR(hardcode_automatic, $1)"="Xyes" ; then

  # We can hardcode non-existant directories.
  if test "$_LT_AC_TAGVAR(hardcode_direct, $1)" != no &&
     # If the only mechanism to avoid hardcoding is shlibpath_var, we
     # have to relink, otherwise we might link with an installed library
     # when we should be linking with a yet-to-be-installed one
     ## test "$_LT_AC_TAGVAR(hardcode_shlibpath_var, $1)" != no &&
     test "$_LT_AC_TAGVAR(hardcode_minus_L, $1)" != no; then
    # Linking always hardcodes the temporary library directory.
    _LT_AC_TAGVAR(hardcode_action, $1)=relink
  else
    # We can link without hardcoding, and we can hardcode nonexisting dirs.
    _LT_AC_TAGVAR(hardcode_action, $1)=immediate
  fi
else
  # We cannot hardcode anything, or else we can only hardcode existing
  # directories.
  _LT_AC_TAGVAR(hardcode_action, $1)=unsupported
fi
AC_MSG_RESULT([$_LT_AC_TAGVAR(hardcode_action, $1)])

if test "$_LT_AC_TAGVAR(hardcode_action, $1)" = relink; then
  # Fast installation is not supported
  enable_fast_install=no
elif test "$shlibpath_overrides_runpath" = yes ||
     test "$enable_shared" = no; then
  # Fast installation is not necessary
  enable_fast_install=needless
fi
])# AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH


# AC_LIBTOOL_SYS_LIB_STRIP
# ------------------------
AC_DEFUN([AC_LIBTOOL_SYS_LIB_STRIP],
[striplib=
old_striplib=
AC_MSG_CHECKING([whether stripping libraries is possible])
if test -n "$STRIP" && $STRIP -V 2>&1 | grep "GNU strip" >/dev/null; then
  test -z "$old_striplib" && old_striplib="$STRIP --strip-debug"
  test -z "$striplib" && striplib="$STRIP --strip-unneeded"
  AC_MSG_RESULT([yes])
else
# FIXME - insert some real tests, host_os isn't really good enough
  case $host_os in
   darwin*)
       if test -n "$STRIP" ; then
         striplib="$STRIP -x"
         AC_MSG_RESULT([yes])
       else
  AC_MSG_RESULT([no])
fi
       ;;
   *)
  AC_MSG_RESULT([no])
    ;;
  esac
fi
])# AC_LIBTOOL_SYS_LIB_STRIP


# AC_LIBTOOL_SYS_DYNAMIC_LINKER
# -----------------------------
# PORTME Fill in your ld.so characteristics
AC_DEFUN([AC_LIBTOOL_SYS_DYNAMIC_LINKER],
[AC_MSG_CHECKING([dynamic linker characteristics])
library_names_spec=
libname_spec='lib$name'
soname_spec=
shrext_cmds=".so"
postinstall_cmds=
postuninstall_cmds=
finish_cmds=
finish_eval=
shlibpath_var=
shlibpath_overrides_runpath=unknown
version_type=none
dynamic_linker="$host_os ld.so"
sys_lib_dlsearch_path_spec="/lib /usr/lib"
if test "$GCC" = yes; then
  sys_lib_search_path_spec=`$CC -print-search-dirs | grep "^libraries:" | $SED -e "s/^libraries://" -e "s,=/,/,g"`
  if echo "$sys_lib_search_path_spec" | grep ';' >/dev/null ; then
    # if the path contains ";" then we assume it to be the separator
    # otherwise default to the standard path separator (i.e. ":") - it is
    # assumed that no part of a normal pathname contains ";" but that should
    # okay in the real world where ";" in dirpaths is itself problematic.
    sys_lib_search_path_spec=`echo "$sys_lib_search_path_spec" | $SED -e 's/;/ /g'`
  else
    sys_lib_search_path_spec=`echo "$sys_lib_search_path_spec" | $SED  -e "s/$PATH_SEPARATOR/ /g"`
  fi
else
  sys_lib_search_path_spec="/lib /usr/lib /usr/local/lib"
fi
need_lib_prefix=unknown
hardcode_into_libs=no

# when you set need_version to no, make sure it does not cause -set_version
# flags to be left without arguments
need_version=unknown

case $host_os in
aix3*)
  version_type=linux
  library_names_spec='${libname}${release}${shared_ext}$versuffix $libname.a'
  shlibpath_var=LIBPATH

  # AIX 3 has no versioning support, so we append a major version to the name.
  soname_spec='${libname}${release}${shared_ext}$major'
  ;;

aix4* | aix5*)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  hardcode_into_libs=yes
  if test "$host_cpu" = ia64; then
    # AIX 5 supports IA64
    library_names_spec='${libname}${release}${shared_ext}$major ${libname}${release}${shared_ext}$versuffix $libname${shared_ext}'
    shlibpath_var=LD_LIBRARY_PATH
  else
    # With GCC up to 2.95.x, collect2 would create an import file
    # for dependence libraries.  The import file would start with
    # the line `#! .'.  This would cause the generated library to
    # depend on `.', always an invalid library.  This was fixed in
    # development snapshots of GCC prior to 3.0.
    case $host_os in
      aix4 | aix4.[[01]] | aix4.[[01]].*)
      if { echo '#if __GNUC__ > 2 || (__GNUC__ == 2 && __GNUC_MINOR__ >= 97)'
	   echo ' yes '
	   echo '#endif'; } | ${CC} -E - | grep yes > /dev/null; then
	:
      else
	can_build_shared=no
      fi
      ;;
    esac
    # AIX (on Power*) has no versioning support, so currently we can not hardcode correct
    # soname into executable. Probably we can add versioning support to
    # collect2, so additional links can be useful in future.
    if test "$aix_use_runtimelinking" = yes; then
      # If using run time linking (on AIX 4.2 or later) use lib<name>.so
      # instead of lib<name>.a to let people know that these are not
      # typical AIX shared libraries.
      library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
    else
      # We preserve .a as extension for shared libraries through AIX4.2
      # and later when we are not doing run time linking.
      library_names_spec='${libname}${release}.a $libname.a'
      soname_spec='${libname}${release}${shared_ext}$major'
    fi
    shlibpath_var=LIBPATH
  fi
  ;;

amigaos*)
  library_names_spec='$libname.ixlibrary $libname.a'
  # Create ${libname}_ixlibrary.a entries in /sys/libs.
  finish_eval='for lib in `ls $libdir/*.ixlibrary 2>/dev/null`; do libname=`$echo "X$lib" | $Xsed -e '\''s%^.*/\([[^/]]*\)\.ixlibrary$%\1%'\''`; test $rm /sys/libs/${libname}_ixlibrary.a; $show "cd /sys/libs && $LN_S $lib ${libname}_ixlibrary.a"; cd /sys/libs && $LN_S $lib ${libname}_ixlibrary.a || exit 1; done'
  ;;

beos*)
  library_names_spec='${libname}${shared_ext}'
  dynamic_linker="$host_os ld.so"
  shlibpath_var=LIBRARY_PATH
  ;;

bsdi4*)
  version_type=linux
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  finish_cmds='PATH="\$PATH:/sbin" ldconfig $libdir'
  shlibpath_var=LD_LIBRARY_PATH
  sys_lib_search_path_spec="/shlib /usr/lib /usr/X11/lib /usr/contrib/lib /lib /usr/local/lib"
  sys_lib_dlsearch_path_spec="/shlib /usr/lib /usr/local/lib"
  # the default ld.so.conf also contains /usr/contrib/lib and
  # /usr/X11R6/lib (/usr/X11 is a link to /usr/X11R6), but let us allow
  # libtool to hard-code these into programs
  ;;

cygwin* | mingw* | pw32*)
  version_type=windows
  shrext_cmds=".dll"
  need_version=no
  need_lib_prefix=no

  case $GCC,$host_os in
  yes,cygwin* | yes,mingw* | yes,pw32*)
    library_names_spec='$libname.dll.a'
    # DLL is installed to $(libdir)/../bin by postinstall_cmds
    postinstall_cmds='base_file=`basename \${file}`~
      dlpath=`$SHELL 2>&1 -c '\''. $dir/'\''\${base_file}'\''i;echo \$dlname'\''`~
      dldir=$destdir/`dirname \$dlpath`~
      test -d \$dldir || mkdir -p \$dldir~
      $install_prog $dir/$dlname \$dldir/$dlname'
    postuninstall_cmds='dldll=`$SHELL 2>&1 -c '\''. $file; echo \$dlname'\''`~
      dlpath=$dir/\$dldll~
       $rm \$dlpath'
    shlibpath_overrides_runpath=yes

    case $host_os in
    cygwin*)
      # Cygwin DLLs use 'cyg' prefix rather than 'lib'
      soname_spec='`echo ${libname} | sed -e 's/^lib/cyg/'``echo ${release} | $SED -e 's/[[.]]/-/g'`${versuffix}${shared_ext}'
      sys_lib_search_path_spec="/usr/lib /lib/w32api /lib /usr/local/lib"
      ;;
    mingw*)
      # MinGW DLLs use traditional 'lib' prefix
      soname_spec='${libname}`echo ${release} | $SED -e 's/[[.]]/-/g'`${versuffix}${shared_ext}'
      sys_lib_search_path_spec=`$CC -print-search-dirs | grep "^libraries:" | $SED -e "s/^libraries://" -e "s,=/,/,g"`
      if echo "$sys_lib_search_path_spec" | [grep ';[c-zC-Z]:/' >/dev/null]; then
        # It is most probably a Windows format PATH printed by
        # mingw gcc, but we are running on Cygwin. Gcc prints its search
        # path with ; separators, and with drive letters. We can handle the
        # drive letters (cygwin fileutils understands them), so leave them,
        # especially as we might pass files found there to a mingw objdump,
        # which wouldn't understand a cygwinified path. Ahh.
        sys_lib_search_path_spec=`echo "$sys_lib_search_path_spec" | $SED -e 's/;/ /g'`
      else
        sys_lib_search_path_spec=`echo "$sys_lib_search_path_spec" | $SED  -e "s/$PATH_SEPARATOR/ /g"`
      fi
      ;;
    pw32*)
      # pw32 DLLs use 'pw' prefix rather than 'lib'
      library_names_spec='`echo ${libname} | sed -e 's/^lib/pw/'``echo ${release} | $SED -e 's/[.]/-/g'`${versuffix}${shared_ext}'
      ;;
    esac
    ;;

  *)
    library_names_spec='${libname}`echo ${release} | $SED -e 's/[[.]]/-/g'`${versuffix}${shared_ext} $libname.lib'
    ;;
  esac
  dynamic_linker='Win32 ld.exe'
  # FIXME: first we should search . and the directory the executable is in
  shlibpath_var=PATH
  ;;

darwin* | rhapsody*)
  dynamic_linker="$host_os dyld"
  version_type=darwin
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${versuffix}$shared_ext ${libname}${release}${major}$shared_ext ${libname}$shared_ext'
  soname_spec='${libname}${release}${major}$shared_ext'
  shlibpath_overrides_runpath=yes
  shlibpath_var=DYLD_LIBRARY_PATH
  shrext_cmds='$(test .$module = .yes && echo .so || echo .dylib)'
  # Apple's gcc prints 'gcc -print-search-dirs' doesn't operate the same.
  if test "$GCC" = yes; then
    sys_lib_search_path_spec=`$CC -print-search-dirs | tr "\n" "$PATH_SEPARATOR" | sed -e 's/libraries:/@libraries:/' | tr "@" "\n" | grep "^libraries:" | sed -e "s/^libraries://" -e "s,=/,/,g" -e "s,$PATH_SEPARATOR, ,g" -e "s,.*,& /lib /usr/lib /usr/local/lib,g"`
  else
    sys_lib_search_path_spec='/lib /usr/lib /usr/local/lib'
  fi
  sys_lib_dlsearch_path_spec='/usr/local/lib /lib /usr/lib'
  ;;

dgux*)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname$shared_ext'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  ;;

freebsd1*)
  dynamic_linker=no
  ;;

kfreebsd*-gnu)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=no
  hardcode_into_libs=yes
  dynamic_linker='GNU ld.so'
  ;;

freebsd*)
  objformat=`test -x /usr/bin/objformat && /usr/bin/objformat || echo aout`
  version_type=freebsd-$objformat
  case $version_type in
    freebsd-elf*)
      library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext} $libname${shared_ext}'
      need_version=no
      need_lib_prefix=no
      ;;
    freebsd-*)
      library_names_spec='${libname}${release}${shared_ext}$versuffix $libname${shared_ext}$versuffix'
      need_version=yes
      ;;
  esac
  shlibpath_var=LD_LIBRARY_PATH
  case $host_os in
  freebsd2*)
    shlibpath_overrides_runpath=yes
    ;;
  freebsd3.[01]* | freebsdelf3.[01]*)
    shlibpath_overrides_runpath=yes
    hardcode_into_libs=yes
    ;;
  *) # from 3.2 on
    shlibpath_overrides_runpath=no
    hardcode_into_libs=yes
    ;;
  esac
  ;;

gnu*)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}${major} ${libname}${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  hardcode_into_libs=yes
  ;;

hpux9* | hpux10* | hpux11*)
  # Give a soname corresponding to the major version so that dld.sl refuses to
  # link against other versions.
  version_type=sunos
  need_lib_prefix=no
  need_version=no
  case "$host_cpu" in
  ia64*)
    shrext_cmds='.so'
    hardcode_into_libs=yes
    dynamic_linker="$host_os dld.so"
    shlibpath_var=LD_LIBRARY_PATH
    shlibpath_overrides_runpath=yes # Unless +noenvvar is specified.
    library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
    soname_spec='${libname}${release}${shared_ext}$major'
    if test "X$HPUX_IA64_MODE" = X32; then
      sys_lib_search_path_spec="/usr/lib/hpux32 /usr/local/lib/hpux32 /usr/local/lib"
    else
      sys_lib_search_path_spec="/usr/lib/hpux64 /usr/local/lib/hpux64"
    fi
    sys_lib_dlsearch_path_spec=$sys_lib_search_path_spec
    ;;
   hppa*64*)
     shrext_cmds='.sl'
     hardcode_into_libs=yes
     dynamic_linker="$host_os dld.sl"
     shlibpath_var=LD_LIBRARY_PATH # How should we handle SHLIB_PATH
     shlibpath_overrides_runpath=yes # Unless +noenvvar is specified.
     library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
     soname_spec='${libname}${release}${shared_ext}$major'
     sys_lib_search_path_spec="/usr/lib/pa20_64 /usr/ccs/lib/pa20_64"
     sys_lib_dlsearch_path_spec=$sys_lib_search_path_spec
     ;;
   *)
    shrext_cmds='.sl'
    dynamic_linker="$host_os dld.sl"
    shlibpath_var=SHLIB_PATH
    shlibpath_overrides_runpath=no # +s is required to enable SHLIB_PATH
    library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
    soname_spec='${libname}${release}${shared_ext}$major'
    ;;
  esac
  # HP-UX runs *really* slowly unless shared libraries are mode 555.
  postinstall_cmds='chmod 555 $lib'
  ;;

irix5* | irix6* | nonstopux*)
  case $host_os in
    nonstopux*) version_type=nonstopux ;;
    *)
	if test "$lt_cv_prog_gnu_ld" = yes; then
		version_type=linux
	else
		version_type=irix
	fi ;;
  esac
  need_lib_prefix=no
  need_version=no
  soname_spec='${libname}${release}${shared_ext}$major'
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${release}${shared_ext} $libname${shared_ext}'
  case $host_os in
  irix5* | nonstopux*)
    libsuff= shlibsuff=
    ;;
  *)
    case $LD in # libtool.m4 will add one of these switches to LD
    *-32|*"-32 "|*-melf32bsmip|*"-melf32bsmip ")
      libsuff= shlibsuff= libmagic=32-bit;;
    *-n32|*"-n32 "|*-melf32bmipn32|*"-melf32bmipn32 ")
      libsuff=32 shlibsuff=N32 libmagic=N32;;
    *-64|*"-64 "|*-melf64bmip|*"-melf64bmip ")
      libsuff=64 shlibsuff=64 libmagic=64-bit;;
    *) libsuff= shlibsuff= libmagic=never-match;;
    esac
    ;;
  esac
  shlibpath_var=LD_LIBRARY${shlibsuff}_PATH
  shlibpath_overrides_runpath=no
  sys_lib_search_path_spec="/usr/lib${libsuff} /lib${libsuff} /usr/local/lib${libsuff}"
  sys_lib_dlsearch_path_spec="/usr/lib${libsuff} /lib${libsuff}"
  hardcode_into_libs=yes
  ;;

# No shared lib support for Linux oldld, aout, or coff.
linux*oldld* | linux*aout* | linux*coff*)
  dynamic_linker=no
  ;;

# This must be Linux ELF.
linux*)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  finish_cmds='PATH="\$PATH:/sbin" ldconfig -n $libdir'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=no
  # This implies no fast_install, which is unacceptable.
  # Some rework will be needed to allow for fast_install
  # before this can be enabled.
  hardcode_into_libs=yes

  # Append ld.so.conf contents to the search path
  if test -f /etc/ld.so.conf; then
    lt_ld_extra=`$SED -e 's/[:,\t]/ /g;s/=[^=]*$//;s/=[^= ]* / /g' /etc/ld.so.conf | tr '\n' ' '`
    sys_lib_dlsearch_path_spec="/lib /usr/lib $lt_ld_extra"
  fi

  # We used to test for /lib/ld.so.1 and disable shared libraries on
  # powerpc, because MkLinux only supported shared libraries with the
  # GNU dynamic linker.  Since this was broken with cross compilers,
  # most powerpc-linux boxes support dynamic linking these days and
  # people can always --disable-shared, the test was removed, and we
  # assume the GNU/Linux dynamic linker is in use.
  dynamic_linker='GNU/Linux ld.so'
  ;;

netbsdelf*-gnu)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=no
  hardcode_into_libs=yes
  dynamic_linker='NetBSD ld.elf_so'
  ;;

knetbsd*-gnu)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=no
  hardcode_into_libs=yes
  dynamic_linker='GNU ld.so'
  ;;

netbsd*)
  version_type=sunos
  need_lib_prefix=no
  need_version=no
  if echo __ELF__ | $CC -E - | grep __ELF__ >/dev/null; then
    library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${shared_ext}$versuffix'
    finish_cmds='PATH="\$PATH:/sbin" ldconfig -m $libdir'
    dynamic_linker='NetBSD (a.out) ld.so'
  else
    library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${shared_ext}'
    soname_spec='${libname}${release}${shared_ext}$major'
    dynamic_linker='NetBSD ld.elf_so'
  fi
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=yes
  hardcode_into_libs=yes
  ;;

newsos6)
  version_type=linux
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=yes
  ;;

nto-qnx*)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=yes
  ;;

openbsd*)
  version_type=sunos
  need_lib_prefix=no
  need_version=yes
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${shared_ext}$versuffix'
  finish_cmds='PATH="\$PATH:/sbin" ldconfig -m $libdir'
  shlibpath_var=LD_LIBRARY_PATH
  if test -z "`echo __ELF__ | $CC -E - | grep __ELF__`" || test "$host_os-$host_cpu" = "openbsd2.8-powerpc"; then
    case $host_os in
      openbsd2.[[89]] | openbsd2.[[89]].*)
	shlibpath_overrides_runpath=no
	;;
      *)
	shlibpath_overrides_runpath=yes
	;;
      esac
  else
    shlibpath_overrides_runpath=yes
  fi
  ;;

os2*)
  libname_spec='$name'
  shrext_cmds=".dll"
  need_lib_prefix=no
  library_names_spec='$libname${shared_ext} $libname.a'
  dynamic_linker='OS/2 ld.exe'
  shlibpath_var=LIBPATH
  ;;

osf3* | osf4* | osf5*)
  version_type=osf
  need_lib_prefix=no
  need_version=no
  soname_spec='${libname}${release}${shared_ext}$major'
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  shlibpath_var=LD_LIBRARY_PATH
  sys_lib_search_path_spec="/usr/shlib /usr/ccs/lib /usr/lib/cmplrs/cc /usr/lib /usr/local/lib /var/shlib"
  sys_lib_dlsearch_path_spec="$sys_lib_search_path_spec"
  ;;

sco3.2v5*)
  version_type=osf
  soname_spec='${libname}${release}${shared_ext}$major'
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  shlibpath_var=LD_LIBRARY_PATH
  ;;

solaris*)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=yes
  hardcode_into_libs=yes
  # ldd complains unless libraries are executable
  postinstall_cmds='chmod +x $lib'
  ;;

sunos4*)
  version_type=sunos
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${shared_ext}$versuffix'
  finish_cmds='PATH="\$PATH:/usr/etc" ldconfig $libdir'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=yes
  if test "$with_gnu_ld" = yes; then
    need_lib_prefix=no
  fi
  need_version=yes
  ;;

sysv4 | sysv4.2uw2* | sysv4.3* | sysv5*)
  version_type=linux
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  case $host_vendor in
    sni)
      shlibpath_overrides_runpath=no
      need_lib_prefix=no
      export_dynamic_flag_spec='${wl}-Blargedynsym'
      runpath_var=LD_RUN_PATH
      ;;
    siemens)
      need_lib_prefix=no
      ;;
    motorola)
      need_lib_prefix=no
      need_version=no
      shlibpath_overrides_runpath=no
      sys_lib_search_path_spec='/lib /usr/lib /usr/ccs/lib'
      ;;
  esac
  ;;

sysv4*MP*)
  if test -d /usr/nec ;then
    version_type=linux
    library_names_spec='$libname${shared_ext}.$versuffix $libname${shared_ext}.$major $libname${shared_ext}'
    soname_spec='$libname${shared_ext}.$major'
    shlibpath_var=LD_LIBRARY_PATH
  fi
  ;;

uts4*)
  version_type=linux
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  ;;

*)
  dynamic_linker=no
  ;;
esac
AC_MSG_RESULT([$dynamic_linker])
test "$dynamic_linker" = no && can_build_shared=no
])# AC_LIBTOOL_SYS_DYNAMIC_LINKER


# _LT_AC_TAGCONFIG
# ----------------
AC_DEFUN([_LT_AC_TAGCONFIG],
[AC_ARG_WITH([tags],
    [AC_HELP_STRING([--with-tags@<:@=TAGS@:>@],
        [include additional configurations @<:@automatic@:>@])],
    [tagnames="$withval"])

if test -f "$ltmain" && test -n "$tagnames"; then
  if test ! -f "${ofile}"; then
    AC_MSG_WARN([output file `$ofile' does not exist])
  fi

  if test -z "$LTCC"; then
    eval "`$SHELL ${ofile} --config | grep '^LTCC='`"
    if test -z "$LTCC"; then
      AC_MSG_WARN([output file `$ofile' does not look like a libtool script])
    else
      AC_MSG_WARN([using `LTCC=$LTCC', extracted from `$ofile'])
    fi
  fi

  # Extract list of available tagged configurations in $ofile.
  # Note that this assumes the entire list is on one line.
  available_tags=`grep "^available_tags=" "${ofile}" | $SED -e 's/available_tags=\(.*$\)/\1/' -e 's/\"//g'`

  lt_save_ifs="$IFS"; IFS="${IFS}$PATH_SEPARATOR,"
  for tagname in $tagnames; do
    IFS="$lt_save_ifs"
    # Check whether tagname contains only valid characters
    case `$echo "X$tagname" | $Xsed -e 's:[[-_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890,/]]::g'` in
    "") ;;
    *)  AC_MSG_ERROR([invalid tag name: $tagname])
	;;
    esac

    if grep "^# ### BEGIN LIBTOOL TAG CONFIG: $tagname$" < "${ofile}" > /dev/null
    then
      AC_MSG_ERROR([tag name \"$tagname\" already exists])
    fi

    # Update the list of available tags.
    if test -n "$tagname"; then
      echo appending configuration tag \"$tagname\" to $ofile

      case $tagname in
      CXX)
	if test -n "$CXX" && test "X$CXX" != "Xno"; then
	  AC_LIBTOOL_LANG_CXX_CONFIG
	else
	  tagname=""
	fi
	;;

      F77)
	if test -n "$F77" && test "X$F77" != "Xno"; then
	  AC_LIBTOOL_LANG_F77_CONFIG
	else
	  tagname=""
	fi
	;;

      GCJ)
	if test -n "$GCJ" && test "X$GCJ" != "Xno"; then
	  AC_LIBTOOL_LANG_GCJ_CONFIG
	else
	  tagname=""
	fi
	;;

      RC)
	AC_LIBTOOL_LANG_RC_CONFIG
	;;

      *)
	AC_MSG_ERROR([Unsupported tag name: $tagname])
	;;
      esac

      # Append the new tag name to the list of available tags.
      if test -n "$tagname" ; then
      available_tags="$available_tags $tagname"
    fi
    fi
  done
  IFS="$lt_save_ifs"

  # Now substitute the updated list of available tags.
  if eval "sed -e 's/^available_tags=.*\$/available_tags=\"$available_tags\"/' \"$ofile\" > \"${ofile}T\""; then
    mv "${ofile}T" "$ofile"
    chmod +x "$ofile"
  else
    rm -f "${ofile}T"
    AC_MSG_ERROR([unable to update list of available tagged configurations.])
  fi
fi
])# _LT_AC_TAGCONFIG


# AC_LIBTOOL_DLOPEN
# -----------------
# enable checks for dlopen support
AC_DEFUN([AC_LIBTOOL_DLOPEN],
 [AC_BEFORE([$0],[AC_LIBTOOL_SETUP])
])# AC_LIBTOOL_DLOPEN


# AC_LIBTOOL_WIN32_DLL
# --------------------
# declare package support for building win32 dll's
AC_DEFUN([AC_LIBTOOL_WIN32_DLL],
[AC_BEFORE([$0], [AC_LIBTOOL_SETUP])
])# AC_LIBTOOL_WIN32_DLL


# AC_ENABLE_SHARED([DEFAULT])
# ---------------------------
# implement the --enable-shared flag
# DEFAULT is either `yes' or `no'.  If omitted, it defaults to `yes'.
AC_DEFUN([AC_ENABLE_SHARED],
[define([AC_ENABLE_SHARED_DEFAULT], ifelse($1, no, no, yes))dnl
AC_ARG_ENABLE([shared],
    [AC_HELP_STRING([--enable-shared@<:@=PKGS@:>@],
	[build shared libraries @<:@default=]AC_ENABLE_SHARED_DEFAULT[@:>@])],
    [p=${PACKAGE-default}
    case $enableval in
    yes) enable_shared=yes ;;
    no) enable_shared=no ;;
    *)
      enable_shared=no
      # Look at the argument we got.  We use all the common list separators.
      lt_save_ifs="$IFS"; IFS="${IFS}$PATH_SEPARATOR,"
      for pkg in $enableval; do
	IFS="$lt_save_ifs"
	if test "X$pkg" = "X$p"; then
	  enable_shared=yes
	fi
      done
      IFS="$lt_save_ifs"
      ;;
    esac],
    [enable_shared=]AC_ENABLE_SHARED_DEFAULT)
])# AC_ENABLE_SHARED


# AC_DISABLE_SHARED
# -----------------
#- set the default shared flag to --disable-shared
AC_DEFUN([AC_DISABLE_SHARED],
[AC_BEFORE([$0],[AC_LIBTOOL_SETUP])dnl
AC_ENABLE_SHARED(no)
])# AC_DISABLE_SHARED


# AC_ENABLE_STATIC([DEFAULT])
# ---------------------------
# implement the --enable-static flag
# DEFAULT is either `yes' or `no'.  If omitted, it defaults to `yes'.
AC_DEFUN([AC_ENABLE_STATIC],
[define([AC_ENABLE_STATIC_DEFAULT], ifelse($1, no, no, yes))dnl
AC_ARG_ENABLE([static],
    [AC_HELP_STRING([--enable-static@<:@=PKGS@:>@],
	[build static libraries @<:@default=]AC_ENABLE_STATIC_DEFAULT[@:>@])],
    [p=${PACKAGE-default}
    case $enableval in
    yes) enable_static=yes ;;
    no) enable_static=no ;;
    *)
     enable_static=no
      # Look at the argument we got.  We use all the common list separators.
      lt_save_ifs="$IFS"; IFS="${IFS}$PATH_SEPARATOR,"
      for pkg in $enableval; do
	IFS="$lt_save_ifs"
	if test "X$pkg" = "X$p"; then
	  enable_static=yes
	fi
      done
      IFS="$lt_save_ifs"
      ;;
    esac],
    [enable_static=]AC_ENABLE_STATIC_DEFAULT)
])# AC_ENABLE_STATIC


# AC_DISABLE_STATIC
# -----------------
# set the default static flag to --disable-static
AC_DEFUN([AC_DISABLE_STATIC],
[AC_BEFORE([$0],[AC_LIBTOOL_SETUP])dnl
AC_ENABLE_STATIC(no)
])# AC_DISABLE_STATIC


# AC_ENABLE_FAST_INSTALL([DEFAULT])
# ---------------------------------
# implement the --enable-fast-install flag
# DEFAULT is either `yes' or `no'.  If omitted, it defaults to `yes'.
AC_DEFUN([AC_ENABLE_FAST_INSTALL],
[define([AC_ENABLE_FAST_INSTALL_DEFAULT], ifelse($1, no, no, yes))dnl
AC_ARG_ENABLE([fast-install],
    [AC_HELP_STRING([--enable-fast-install@<:@=PKGS@:>@],
    [optimize for fast installation @<:@default=]AC_ENABLE_FAST_INSTALL_DEFAULT[@:>@])],
    [p=${PACKAGE-default}
    case $enableval in
    yes) enable_fast_install=yes ;;
    no) enable_fast_install=no ;;
    *)
      enable_fast_install=no
      # Look at the argument we got.  We use all the common list separators.
      lt_save_ifs="$IFS"; IFS="${IFS}$PATH_SEPARATOR,"
      for pkg in $enableval; do
	IFS="$lt_save_ifs"
	if test "X$pkg" = "X$p"; then
	  enable_fast_install=yes
	fi
      done
      IFS="$lt_save_ifs"
      ;;
    esac],
    [enable_fast_install=]AC_ENABLE_FAST_INSTALL_DEFAULT)
])# AC_ENABLE_FAST_INSTALL


# AC_DISABLE_FAST_INSTALL
# -----------------------
# set the default to --disable-fast-install
AC_DEFUN([AC_DISABLE_FAST_INSTALL],
[AC_BEFORE([$0],[AC_LIBTOOL_SETUP])dnl
AC_ENABLE_FAST_INSTALL(no)
])# AC_DISABLE_FAST_INSTALL


# AC_LIBTOOL_PICMODE([MODE])
# --------------------------
# implement the --with-pic flag
# MODE is either `yes' or `no'.  If omitted, it defaults to `both'.
AC_DEFUN([AC_LIBTOOL_PICMODE],
[AC_BEFORE([$0],[AC_LIBTOOL_SETUP])dnl
pic_mode=ifelse($#,1,$1,default)
])# AC_LIBTOOL_PICMODE


# AC_PROG_EGREP
# -------------
# This is predefined starting with Autoconf 2.54, so this conditional
# definition can be removed once we require Autoconf 2.54 or later.
m4_ifndef([AC_PROG_EGREP], [AC_DEFUN([AC_PROG_EGREP],
[AC_CACHE_CHECK([for egrep], [ac_cv_prog_egrep],
   [if echo a | (grep -E '(a|b)') >/dev/null 2>&1
    then ac_cv_prog_egrep='grep -E'
    else ac_cv_prog_egrep='egrep'
    fi])
 EGREP=$ac_cv_prog_egrep
 AC_SUBST([EGREP])
])])


# AC_PATH_TOOL_PREFIX
# -------------------
# find a file program which can recognise shared library
AC_DEFUN([AC_PATH_TOOL_PREFIX],
[AC_REQUIRE([AC_PROG_EGREP])dnl
AC_MSG_CHECKING([for $1])
AC_CACHE_VAL(lt_cv_path_MAGIC_CMD,
[case $MAGIC_CMD in
[[\\/*] |  ?:[\\/]*])
  lt_cv_path_MAGIC_CMD="$MAGIC_CMD" # Let the user override the test with a path.
  ;;
*)
  lt_save_MAGIC_CMD="$MAGIC_CMD"
  lt_save_ifs="$IFS"; IFS=$PATH_SEPARATOR
dnl $ac_dummy forces splitting on constant user-supplied paths.
dnl POSIX.2 word splitting is done only on the output of word expansions,
dnl not every word.  This closes a longstanding sh security hole.
  ac_dummy="ifelse([$2], , $PATH, [$2])"
  for ac_dir in $ac_dummy; do
    IFS="$lt_save_ifs"
    test -z "$ac_dir" && ac_dir=.
    if test -f $ac_dir/$1; then
      lt_cv_path_MAGIC_CMD="$ac_dir/$1"
      if test -n "$file_magic_test_file"; then
	case $deplibs_check_method in
	"file_magic "*)
	  file_magic_regex="`expr \"$deplibs_check_method\" : \"file_magic \(.*\)\"`"
	  MAGIC_CMD="$lt_cv_path_MAGIC_CMD"
	  if eval $file_magic_cmd \$file_magic_test_file 2> /dev/null |
	    $EGREP "$file_magic_regex" > /dev/null; then
	    :
	  else
	    cat <<EOF 1>&2

*** Warning: the command libtool uses to detect shared libraries,
*** $file_magic_cmd, produces output that libtool cannot recognize.
*** The result is that libtool may fail to recognize shared libraries
*** as such.  This will affect the creation of libtool libraries that
*** depend on shared libraries, but programs linked with such libtool
*** libraries will work regardless of this problem.  Nevertheless, you
*** may want to report the problem to your system manager and/or to
*** bug-libtool@gnu.org

EOF
	  fi ;;
	esac
      fi
      break
    fi
  done
  IFS="$lt_save_ifs"
  MAGIC_CMD="$lt_save_MAGIC_CMD"
  ;;
esac])
MAGIC_CMD="$lt_cv_path_MAGIC_CMD"
if test -n "$MAGIC_CMD"; then
  AC_MSG_RESULT($MAGIC_CMD)
else
  AC_MSG_RESULT(no)
fi
])# AC_PATH_TOOL_PREFIX


# AC_PATH_MAGIC
# -------------
# find a file program which can recognise a shared library
AC_DEFUN([AC_PATH_MAGIC],
[AC_PATH_TOOL_PREFIX(${ac_tool_prefix}file, /usr/bin$PATH_SEPARATOR$PATH)
if test -z "$lt_cv_path_MAGIC_CMD"; then
  if test -n "$ac_tool_prefix"; then
    AC_PATH_TOOL_PREFIX(file, /usr/bin$PATH_SEPARATOR$PATH)
  else
    MAGIC_CMD=:
  fi
fi
])# AC_PATH_MAGIC


# AC_PROG_LD
# ----------
# find the pathname to the GNU or non-GNU linker
AC_DEFUN([AC_PROG_LD],
[AC_ARG_WITH([gnu-ld],
    [AC_HELP_STRING([--with-gnu-ld],
	[assume the C compiler uses GNU ld @<:@default=no@:>@])],
    [test "$withval" = no || with_gnu_ld=yes],
    [with_gnu_ld=no])
AC_REQUIRE([LT_AC_PROG_SED])dnl
AC_REQUIRE([AC_PROG_CC])dnl
AC_REQUIRE([AC_CANONICAL_HOST])dnl
AC_REQUIRE([AC_CANONICAL_BUILD])dnl
ac_prog=ld
if test "$GCC" = yes; then
  # Check if gcc -print-prog-name=ld gives a path.
  AC_MSG_CHECKING([for ld used by $CC])
  case $host in
  *-*-mingw*)
    # gcc leaves a trailing carriage return which upsets mingw
    ac_prog=`($CC -print-prog-name=ld) 2>&5 | tr -d '\015'` ;;
  *)
    ac_prog=`($CC -print-prog-name=ld) 2>&5` ;;
  esac
  case $ac_prog in
    # Accept absolute paths.
    [[\\/]]* | ?:[[\\/]]*)
      re_direlt='/[[^/]][[^/]]*/\.\./'
      # Canonicalize the pathname of ld
      ac_prog=`echo $ac_prog| $SED 's%\\\\%/%g'`
      while echo $ac_prog | grep "$re_direlt" > /dev/null 2>&1; do
	ac_prog=`echo $ac_prog| $SED "s%$re_direlt%/%"`
      done
      test -z "$LD" && LD="$ac_prog"
      ;;
  "")
    # If it fails, then pretend we aren't using GCC.
    ac_prog=ld
    ;;
  *)
    # If it is relative, then search for the first ld in PATH.
    with_gnu_ld=unknown
    ;;
  esac
elif test "$with_gnu_ld" = yes; then
  AC_MSG_CHECKING([for GNU ld])
else
  AC_MSG_CHECKING([for non-GNU ld])
fi
AC_CACHE_VAL(lt_cv_path_LD,
[if test -z "$LD"; then
  lt_save_ifs="$IFS"; IFS=$PATH_SEPARATOR
  for ac_dir in $PATH; do
    IFS="$lt_save_ifs"
    test -z "$ac_dir" && ac_dir=.
    if test -f "$ac_dir/$ac_prog" || test -f "$ac_dir/$ac_prog$ac_exeext"; then
      lt_cv_path_LD="$ac_dir/$ac_prog"
      # Check to see if the program is GNU ld.  I'd rather use --version,
      # but apparently some GNU ld's only accept -v.
      # Break only if it was the GNU/non-GNU ld that we prefer.
      case `"$lt_cv_path_LD" -v 2>&1 </dev/null` in
      *GNU* | *'with BFD'*)
	test "$with_gnu_ld" != no && break
	;;
      *)
	test "$with_gnu_ld" != yes && break
	;;
      esac
    fi
  done
  IFS="$lt_save_ifs"
else
  lt_cv_path_LD="$LD" # Let the user override the test with a path.
fi])
LD="$lt_cv_path_LD"
if test -n "$LD"; then
  AC_MSG_RESULT($LD)
else
  AC_MSG_RESULT(no)
fi
test -z "$LD" && AC_MSG_ERROR([no acceptable ld found in \$PATH])
AC_PROG_LD_GNU
])# AC_PROG_LD


# AC_PROG_LD_GNU
# --------------
AC_DEFUN([AC_PROG_LD_GNU],
[AC_REQUIRE([AC_PROG_EGREP])dnl
AC_CACHE_CHECK([if the linker ($LD) is GNU ld], lt_cv_prog_gnu_ld,
[# I'd rather use --version here, but apparently some GNU ld's only accept -v.
case `$LD -v 2>&1 </dev/null` in
*GNU* | *'with BFD'*)
  lt_cv_prog_gnu_ld=yes
  ;;
*)
  lt_cv_prog_gnu_ld=no
  ;;
esac])
with_gnu_ld=$lt_cv_prog_gnu_ld
])# AC_PROG_LD_GNU


# AC_PROG_LD_RELOAD_FLAG
# ----------------------
# find reload flag for linker
#   -- PORTME Some linkers may need a different reload flag.
AC_DEFUN([AC_PROG_LD_RELOAD_FLAG],
[AC_CACHE_CHECK([for $LD option to reload object files],
  lt_cv_ld_reload_flag,
  [lt_cv_ld_reload_flag='-r'])
reload_flag=$lt_cv_ld_reload_flag
case $reload_flag in
"" | " "*) ;;
*) reload_flag=" $reload_flag" ;;
esac
reload_cmds='$LD$reload_flag -o $output$reload_objs'
])# AC_PROG_LD_RELOAD_FLAG


# AC_DEPLIBS_CHECK_METHOD
# -----------------------
# how to check for library dependencies
#  -- PORTME fill in with the dynamic library characteristics
AC_DEFUN([AC_DEPLIBS_CHECK_METHOD],
[AC_CACHE_CHECK([how to recognise dependent libraries],
lt_cv_deplibs_check_method,
[lt_cv_file_magic_cmd='$MAGIC_CMD'
lt_cv_file_magic_test_file=
lt_cv_deplibs_check_method='unknown'
# Need to set the preceding variable on all platforms that support
# interlibrary dependencies.
# 'none' -- dependencies not supported.
# `unknown' -- same as none, but documents that we really don't know.
# 'pass_all' -- all dependencies passed with no checks.
# 'test_compile' -- check by making test program.
# 'file_magic [[regex]]' -- check by looking for files in library path
# which responds to the $file_magic_cmd with a given extended regex.
# If you have `file' or equivalent on your system and you're not sure
# whether `pass_all' will *always* work, you probably want this one.

case $host_os in
aix4* | aix5*)
  lt_cv_deplibs_check_method=pass_all
  ;;

beos*)
  lt_cv_deplibs_check_method=pass_all
  ;;

bsdi4*)
  lt_cv_deplibs_check_method='file_magic ELF [[0-9]][[0-9]]*-bit [[ML]]SB (shared object|dynamic lib)'
  lt_cv_file_magic_cmd='/usr/bin/file -L'
  lt_cv_file_magic_test_file=/shlib/libc.so
  ;;

cygwin*)
  # func_win32_libid is a shell function defined in ltmain.sh
  lt_cv_deplibs_check_method='file_magic ^x86 archive import|^x86 DLL'
  lt_cv_file_magic_cmd='func_win32_libid'
  ;;

mingw* | pw32*)
  # Base MSYS/MinGW do not provide the 'file' command needed by
  # func_win32_libid shell function, so use a weaker test based on 'objdump'.
  lt_cv_deplibs_check_method='file_magic file format pei*-i386(.*architecture: i386)?'
  lt_cv_file_magic_cmd='$OBJDUMP -f'
  ;;

darwin* | rhapsody*)
  lt_cv_deplibs_check_method=pass_all
  ;;

freebsd* | kfreebsd*-gnu)
  if echo __ELF__ | $CC -E - | grep __ELF__ > /dev/null; then
    case $host_cpu in
    i*86 )
      # Not sure whether the presence of OpenBSD here was a mistake.
      # Let's accept both of them until this is cleared up.
      lt_cv_deplibs_check_method='file_magic (FreeBSD|OpenBSD)/i[[3-9]]86 (compact )?demand paged shared library'
      lt_cv_file_magic_cmd=/usr/bin/file
      lt_cv_file_magic_test_file=`echo /usr/lib/libc.so.*`
      ;;
    esac
  else
    lt_cv_deplibs_check_method=pass_all
  fi
  ;;

gnu*)
  lt_cv_deplibs_check_method=pass_all
  ;;

hpux10.20* | hpux11*)
  lt_cv_file_magic_cmd=/usr/bin/file
  case "$host_cpu" in
  ia64*)
    lt_cv_deplibs_check_method='file_magic (s[[0-9]][[0-9]][[0-9]]|ELF-[[0-9]][[0-9]]) shared object file - IA64'
    lt_cv_file_magic_test_file=/usr/lib/hpux32/libc.so
    ;;
  hppa*64*)
    [lt_cv_deplibs_check_method='file_magic (s[0-9][0-9][0-9]|ELF-[0-9][0-9]) shared object file - PA-RISC [0-9].[0-9]']
    lt_cv_file_magic_test_file=/usr/lib/pa20_64/libc.sl
    ;;
  *)
    lt_cv_deplibs_check_method='file_magic (s[[0-9]][[0-9]][[0-9]]|PA-RISC[[0-9]].[[0-9]]) shared library'
    lt_cv_file_magic_test_file=/usr/lib/libc.sl
    ;;
  esac
  ;;

irix5* | irix6* | nonstopux*)
  case $LD in
  *-32|*"-32 ") libmagic=32-bit;;
  *-n32|*"-n32 ") libmagic=N32;;
  *-64|*"-64 ") libmagic=64-bit;;
  *) libmagic=never-match;;
  esac
  lt_cv_deplibs_check_method=pass_all
  ;;

# This must be Linux ELF.
linux*)
  lt_cv_deplibs_check_method=pass_all
  ;;

netbsd* | netbsdelf*-gnu | knetbsd*-gnu)
  if echo __ELF__ | $CC -E - | grep __ELF__ > /dev/null; then
    lt_cv_deplibs_check_method='match_pattern /lib[[^/]]+(\.so\.[[0-9]]+\.[[0-9]]+|_pic\.a)$'
  else
    lt_cv_deplibs_check_method='match_pattern /lib[[^/]]+(\.so|_pic\.a)$'
  fi
  ;;

newos6*)
  lt_cv_deplibs_check_method='file_magic ELF [[0-9]][[0-9]]*-bit [[ML]]SB (executable|dynamic lib)'
  lt_cv_file_magic_cmd=/usr/bin/file
  lt_cv_file_magic_test_file=/usr/lib/libnls.so
  ;;

nto-qnx*)
  lt_cv_deplibs_check_method=unknown
  ;;

openbsd*)
  lt_cv_file_magic_cmd=/usr/bin/file
  lt_cv_file_magic_test_file=`echo /usr/lib/libc.so.*`
  if test -z "`echo __ELF__ | $CC -E - | grep __ELF__`" || test "$host_os-$host_cpu" = "openbsd2.8-powerpc"; then
    lt_cv_deplibs_check_method='file_magic ELF [[0-9]][[0-9]]*-bit [[LM]]SB shared object'
  else
    lt_cv_deplibs_check_method='file_magic OpenBSD.* shared library'
  fi
  ;;

osf3* | osf4* | osf5*)
  lt_cv_deplibs_check_method=pass_all
  ;;

sco3.2v5*)
  lt_cv_deplibs_check_method=pass_all
  ;;

solaris*)
  lt_cv_deplibs_check_method=pass_all
  ;;

sysv4 | sysv4.2uw2* | sysv4.3* | sysv5*)
  case $host_vendor in
  motorola)
    lt_cv_deplibs_check_method='file_magic ELF [[0-9]][[0-9]]*-bit [[ML]]SB (shared object|dynamic lib) M[[0-9]][[0-9]]* Version [[0-9]]'
    lt_cv_file_magic_test_file=`echo /usr/lib/libc.so*`
    ;;
  ncr)
    lt_cv_deplibs_check_method=pass_all
    ;;
  sequent)
    lt_cv_file_magic_cmd='/bin/file'
    lt_cv_deplibs_check_method='file_magic ELF [[0-9]][[0-9]]*-bit [[LM]]SB (shared object|dynamic lib )'
    ;;
  sni)
    lt_cv_file_magic_cmd='/bin/file'
    lt_cv_deplibs_check_method="file_magic ELF [[0-9]][[0-9]]*-bit [[LM]]SB dynamic lib"
    lt_cv_file_magic_test_file=/lib/libc.so
    ;;
  siemens)
    lt_cv_deplibs_check_method=pass_all
    ;;
  esac
  ;;

sysv5OpenUNIX8* | sysv5UnixWare7* | sysv5uw[[78]]* | unixware7* | sysv4*uw2*)
  lt_cv_deplibs_check_method=pass_all
  ;;
esac
])
file_magic_cmd=$lt_cv_file_magic_cmd
deplibs_check_method=$lt_cv_deplibs_check_method
test -z "$deplibs_check_method" && deplibs_check_method=unknown
])# AC_DEPLIBS_CHECK_METHOD


# AC_PROG_NM
# ----------
# find the pathname to a BSD-compatible name lister
AC_DEFUN([AC_PROG_NM],
[AC_CACHE_CHECK([for BSD-compatible nm], lt_cv_path_NM,
[if test -n "$NM"; then
  # Let the user override the test.
  lt_cv_path_NM="$NM"
else
  lt_save_ifs="$IFS"; IFS=$PATH_SEPARATOR
  for ac_dir in $PATH /usr/ccs/bin /usr/ucb /bin; do
    IFS="$lt_save_ifs"
    test -z "$ac_dir" && ac_dir=.
    tmp_nm="$ac_dir/${ac_tool_prefix}nm"
    if test -f "$tmp_nm" || test -f "$tmp_nm$ac_exeext" ; then
      # Check to see if the nm accepts a BSD-compat flag.
      # Adding the `sed 1q' prevents false positives on HP-UX, which says:
      #   nm: unknown option "B" ignored
      # Tru64's nm complains that /dev/null is an invalid object file
      case `"$tmp_nm" -B /dev/null 2>&1 | sed '1q'` in
      */dev/null* | *'Invalid file or object type'*)
	lt_cv_path_NM="$tmp_nm -B"
	break
        ;;
      *)
	case `"$tmp_nm" -p /dev/null 2>&1 | sed '1q'` in
	*/dev/null*)
	  lt_cv_path_NM="$tmp_nm -p"
	  break
	  ;;
	*)
	  lt_cv_path_NM=${lt_cv_path_NM="$tmp_nm"} # keep the first match, but
	  continue # so that we can try to find one that supports BSD flags
	  ;;
	esac
      esac
    fi
  done
  IFS="$lt_save_ifs"
  test -z "$lt_cv_path_NM" && lt_cv_path_NM=nm
fi])
NM="$lt_cv_path_NM"
])# AC_PROG_NM


# AC_CHECK_LIBM
# -------------
# check for math library
AC_DEFUN([AC_CHECK_LIBM],
[AC_REQUIRE([AC_CANONICAL_HOST])dnl
LIBM=
case $host in
*-*-beos* | *-*-cygwin* | *-*-pw32* | *-*-darwin*)
  # These system don't have libm, or don't need it
  ;;
*-ncr-sysv4.3*)
  AC_CHECK_LIB(mw, _mwvalidcheckl, LIBM="-lmw")
  AC_CHECK_LIB(m, cos, LIBM="$LIBM -lm")
  ;;
*)
  AC_CHECK_LIB(m, cos, LIBM="-lm")
  ;;
esac
])# AC_CHECK_LIBM


# AC_LIBLTDL_CONVENIENCE([DIRECTORY])
# -----------------------------------
# sets LIBLTDL to the link flags for the libltdl convenience library and
# LTDLINCL to the include flags for the libltdl header and adds
# --enable-ltdl-convenience to the configure arguments.  Note that LIBLTDL
# and LTDLINCL are not AC_SUBSTed, nor is AC_CONFIG_SUBDIRS called.  If
# DIRECTORY is not provided, it is assumed to be `libltdl'.  LIBLTDL will
# be prefixed with '${top_builddir}/' and LTDLINCL will be prefixed with
# '${top_srcdir}/' (note the single quotes!).  If your package is not
# flat and you're not using automake, define top_builddir and
# top_srcdir appropriately in the Makefiles.
AC_DEFUN([AC_LIBLTDL_CONVENIENCE],
[AC_BEFORE([$0],[AC_LIBTOOL_SETUP])dnl
  case $enable_ltdl_convenience in
  no) AC_MSG_ERROR([this package needs a convenience libltdl]) ;;
  "") enable_ltdl_convenience=yes
      ac_configure_args="$ac_configure_args --enable-ltdl-convenience" ;;
  esac
  LIBLTDL='${top_builddir}/'ifelse($#,1,[$1],['libltdl'])/libltdlc.la
  LTDLINCL='-I${top_srcdir}/'ifelse($#,1,[$1],['libltdl'])
  # For backwards non-gettext consistent compatibility...
  INCLTDL="$LTDLINCL"
])# AC_LIBLTDL_CONVENIENCE


# AC_LIBLTDL_INSTALLABLE([DIRECTORY])
# -----------------------------------
# sets LIBLTDL to the link flags for the libltdl installable library and
# LTDLINCL to the include flags for the libltdl header and adds
# --enable-ltdl-install to the configure arguments.  Note that LIBLTDL
# and LTDLINCL are not AC_SUBSTed, nor is AC_CONFIG_SUBDIRS called.  If
# DIRECTORY is not provided and an installed libltdl is not found, it is
# assumed to be `libltdl'.  LIBLTDL will be prefixed with '${top_builddir}/'
# and LTDLINCL will be prefixed with '${top_srcdir}/' (note the single
# quotes!).  If your package is not flat and you're not using automake,
# define top_builddir and top_srcdir appropriately in the Makefiles.
# In the future, this macro may have to be called after AC_PROG_LIBTOOL.
AC_DEFUN([AC_LIBLTDL_INSTALLABLE],
[AC_BEFORE([$0],[AC_LIBTOOL_SETUP])dnl
  AC_CHECK_LIB(ltdl, lt_dlinit,
  [test x"$enable_ltdl_install" != xyes && enable_ltdl_install=no],
  [if test x"$enable_ltdl_install" = xno; then
     AC_MSG_WARN([libltdl not installed, but installation disabled])
   else
     enable_ltdl_install=yes
   fi
  ])
  if test x"$enable_ltdl_install" = x"yes"; then
    ac_configure_args="$ac_configure_args --enable-ltdl-install"
    LIBLTDL='${top_builddir}/'ifelse($#,1,[$1],['libltdl'])/libltdl.la
    LTDLINCL='-I${top_srcdir}/'ifelse($#,1,[$1],['libltdl'])
  else
    ac_configure_args="$ac_configure_args --enable-ltdl-install=no"
    LIBLTDL="-lltdl"
    LTDLINCL=
  fi
  # For backwards non-gettext consistent compatibility...
  INCLTDL="$LTDLINCL"
])# AC_LIBLTDL_INSTALLABLE


# AC_LIBTOOL_CXX
# --------------
# enable support for C++ libraries
AC_DEFUN([AC_LIBTOOL_CXX],
[AC_REQUIRE([_LT_AC_LANG_CXX])
])# AC_LIBTOOL_CXX


# _LT_AC_LANG_CXX
# ---------------
AC_DEFUN([_LT_AC_LANG_CXX],
[AC_REQUIRE([AC_PROG_CXX])
AC_REQUIRE([AC_PROG_CXXCPP])
_LT_AC_SHELL_INIT([tagnames=${tagnames+${tagnames},}CXX])
])# _LT_AC_LANG_CXX


# AC_LIBTOOL_F77
# --------------
# enable support for Fortran 77 libraries
AC_DEFUN([AC_LIBTOOL_F77],
[AC_REQUIRE([_LT_AC_LANG_F77])
])# AC_LIBTOOL_F77


# _LT_AC_LANG_F77
# ---------------
AC_DEFUN([_LT_AC_LANG_F77],
[AC_REQUIRE([AC_PROG_F77])
_LT_AC_SHELL_INIT([tagnames=${tagnames+${tagnames},}F77])
])# _LT_AC_LANG_F77


# AC_LIBTOOL_GCJ
# --------------
# enable support for GCJ libraries
AC_DEFUN([AC_LIBTOOL_GCJ],
[AC_REQUIRE([_LT_AC_LANG_GCJ])
])# AC_LIBTOOL_GCJ


# _LT_AC_LANG_GCJ
# ---------------
AC_DEFUN([_LT_AC_LANG_GCJ],
[AC_PROVIDE_IFELSE([AC_PROG_GCJ],[],
  [AC_PROVIDE_IFELSE([A][M_PROG_GCJ],[],
    [AC_PROVIDE_IFELSE([LT_AC_PROG_GCJ],[],
      [ifdef([AC_PROG_GCJ],[AC_REQUIRE([AC_PROG_GCJ])],
	 [ifdef([A][M_PROG_GCJ],[AC_REQUIRE([A][M_PROG_GCJ])],
	   [AC_REQUIRE([A][C_PROG_GCJ_OR_A][M_PROG_GCJ])])])])])])
_LT_AC_SHELL_INIT([tagnames=${tagnames+${tagnames},}GCJ])
])# _LT_AC_LANG_GCJ


# AC_LIBTOOL_RC
# --------------
# enable support for Windows resource files
AC_DEFUN([AC_LIBTOOL_RC],
[AC_REQUIRE([LT_AC_PROG_RC])
_LT_AC_SHELL_INIT([tagnames=${tagnames+${tagnames},}RC])
])# AC_LIBTOOL_RC


# AC_LIBTOOL_LANG_C_CONFIG
# ------------------------
# Ensure that the configuration vars for the C compiler are
# suitably defined.  Those variables are subsequently used by
# AC_LIBTOOL_CONFIG to write the compiler configuration to `libtool'.
AC_DEFUN([AC_LIBTOOL_LANG_C_CONFIG], [_LT_AC_LANG_C_CONFIG])
AC_DEFUN([_LT_AC_LANG_C_CONFIG],
[lt_save_CC="$CC"
AC_LANG_PUSH(C)

# Source file extension for C test sources.
ac_ext=c

# Object file extension for compiled C test sources.
objext=o
_LT_AC_TAGVAR(objext, $1)=$objext

# Code to be used in simple compile tests
lt_simple_compile_test_code="int some_variable = 0;\n"

# Code to be used in simple link tests
lt_simple_link_test_code='int main(){return(0);}\n'

_LT_AC_SYS_COMPILER

#
# Check for any special shared library compilation flags.
#
_LT_AC_TAGVAR(lt_prog_cc_shlib, $1)=
if test "$GCC" = no; then
  case $host_os in
  sco3.2v5*)
    _LT_AC_TAGVAR(lt_prog_cc_shlib, $1)='-belf'
    ;;
  esac
fi
if test -n "$_LT_AC_TAGVAR(lt_prog_cc_shlib, $1)"; then
  AC_MSG_WARN([`$CC' requires `$_LT_AC_TAGVAR(lt_prog_cc_shlib, $1)' to build shared libraries])
  if echo "$old_CC $old_CFLAGS " | grep "[[ 	]]$_LT_AC_TAGVAR(lt_prog_cc_shlib, $1)[[ 	]]" >/dev/null; then :
  else
    AC_MSG_WARN([add `$_LT_AC_TAGVAR(lt_prog_cc_shlib, $1)' to the CC or CFLAGS env variable and reconfigure])
    _LT_AC_TAGVAR(lt_cv_prog_cc_can_build_shared, $1)=no
  fi
fi


#
# Check to make sure the static flag actually works.
#
AC_LIBTOOL_LINKER_OPTION([if $compiler static flag $_LT_AC_TAGVAR(lt_prog_compiler_static, $1) works],
  _LT_AC_TAGVAR(lt_prog_compiler_static_works, $1),
  $_LT_AC_TAGVAR(lt_prog_compiler_static, $1),
  [],
  [_LT_AC_TAGVAR(lt_prog_compiler_static, $1)=])


AC_LIBTOOL_PROG_COMPILER_NO_RTTI($1)
AC_LIBTOOL_PROG_COMPILER_PIC($1)
AC_LIBTOOL_PROG_CC_C_O($1)
AC_LIBTOOL_SYS_HARD_LINK_LOCKS($1)
AC_LIBTOOL_PROG_LD_SHLIBS($1)
AC_LIBTOOL_SYS_DYNAMIC_LINKER($1)
AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH($1)
AC_LIBTOOL_SYS_LIB_STRIP
AC_LIBTOOL_DLOPEN_SELF($1)

# Report which librarie types wil actually be built
AC_MSG_CHECKING([if libtool supports shared libraries])
AC_MSG_RESULT([$can_build_shared])

AC_MSG_CHECKING([whether to build shared libraries])
test "$can_build_shared" = "no" && enable_shared=no

# On AIX, shared libraries and static libraries use the same namespace, and
# are all built from PIC.
case "$host_os" in
aix3*)
  test "$enable_shared" = yes && enable_static=no
  if test -n "$RANLIB"; then
    archive_cmds="$archive_cmds~\$RANLIB \$lib"
    postinstall_cmds='$RANLIB $lib'
  fi
  ;;

aix4* | aix5*)
  if test "$host_cpu" != ia64 && test "$aix_use_runtimelinking" = no ; then
    test "$enable_shared" = yes && enable_static=no
  fi
  ;;
  darwin* | rhapsody*)
  if test "$GCC" = yes; then
    _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
    case "$host_os" in
    rhapsody* | darwin1.[[012]])
      _LT_AC_TAGVAR(allow_undefined_flag, $1)='-undefined suppress'
      ;;
    *) # Darwin 1.3 on
      if test -z ${MACOSX_DEPLOYMENT_TARGET} ; then
      	_LT_AC_TAGVAR(allow_undefined_flag, $1)='-flat_namespace -undefined suppress'
      else
        case ${MACOSX_DEPLOYMENT_TARGET} in
          10.[[012]])
            _LT_AC_TAGVAR(allow_undefined_flag, $1)='-flat_namespace -undefined suppress'
            ;;
          10.*)
            _LT_AC_TAGVAR(allow_undefined_flag, $1)='-undefined dynamic_lookup'
            ;;
        esac
      fi
      ;;
    esac
    output_verbose_link_cmd='echo'
    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -dynamiclib $allow_undefined_flag -o $lib $libobjs $deplibs$compiler_flags -install_name $rpath/$soname $verstring'
    _LT_AC_TAGVAR(module_cmds, $1)='$CC $allow_undefined_flag -o $lib -bundle $libobjs $deplibs$compiler_flags'
    # Don't fix this by using the ld -exported_symbols_list flag, it doesn't exist in older darwin ld's
    _LT_AC_TAGVAR(archive_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC -dynamiclib $allow_undefined_flag  -o $lib $libobjs $deplibs$compiler_flags -install_name $rpath/$soname $verstring~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
    _LT_AC_TAGVAR(module_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC $allow_undefined_flag  -o $lib -bundle $libobjs $deplibs$compiler_flags~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
    _LT_AC_TAGVAR(hardcode_direct, $1)=no
    _LT_AC_TAGVAR(hardcode_automatic, $1)=yes
    _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=unsupported
    _LT_AC_TAGVAR(whole_archive_flag_spec, $1)='-all_load $convenience'
    _LT_AC_TAGVAR(link_all_deplibs, $1)=yes
  else
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
  fi
    ;;
esac
AC_MSG_RESULT([$enable_shared])

AC_MSG_CHECKING([whether to build static libraries])
# Make sure either enable_shared or enable_static is yes.
test "$enable_shared" = yes || enable_static=yes
AC_MSG_RESULT([$enable_static])

AC_LIBTOOL_CONFIG($1)

AC_LANG_POP
CC="$lt_save_CC"
])# AC_LIBTOOL_LANG_C_CONFIG


# AC_LIBTOOL_LANG_CXX_CONFIG
# --------------------------
# Ensure that the configuration vars for the C compiler are
# suitably defined.  Those variables are subsequently used by
# AC_LIBTOOL_CONFIG to write the compiler configuration to `libtool'.
AC_DEFUN([AC_LIBTOOL_LANG_CXX_CONFIG], [_LT_AC_LANG_CXX_CONFIG(CXX)])
AC_DEFUN([_LT_AC_LANG_CXX_CONFIG],
[AC_LANG_PUSH(C++)
AC_REQUIRE([AC_PROG_CXX])
AC_REQUIRE([AC_PROG_CXXCPP])

_LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
_LT_AC_TAGVAR(allow_undefined_flag, $1)=
_LT_AC_TAGVAR(always_export_symbols, $1)=no
_LT_AC_TAGVAR(archive_expsym_cmds, $1)=
_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)=
_LT_AC_TAGVAR(hardcode_direct, $1)=no
_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)=
_LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)=
_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=
_LT_AC_TAGVAR(hardcode_minus_L, $1)=no
_LT_AC_TAGVAR(hardcode_automatic, $1)=no
_LT_AC_TAGVAR(module_cmds, $1)=
_LT_AC_TAGVAR(module_expsym_cmds, $1)=
_LT_AC_TAGVAR(link_all_deplibs, $1)=unknown
_LT_AC_TAGVAR(old_archive_cmds, $1)=$old_archive_cmds
_LT_AC_TAGVAR(no_undefined_flag, $1)=
_LT_AC_TAGVAR(whole_archive_flag_spec, $1)=
_LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)=no

# Dependencies to place before and after the object being linked:
_LT_AC_TAGVAR(predep_objects, $1)=
_LT_AC_TAGVAR(postdep_objects, $1)=
_LT_AC_TAGVAR(predeps, $1)=
_LT_AC_TAGVAR(postdeps, $1)=
_LT_AC_TAGVAR(compiler_lib_search_path, $1)=

# Source file extension for C++ test sources.
ac_ext=cc

# Object file extension for compiled C++ test sources.
objext=o
_LT_AC_TAGVAR(objext, $1)=$objext

# Code to be used in simple compile tests
lt_simple_compile_test_code="int some_variable = 0;\n"

# Code to be used in simple link tests
lt_simple_link_test_code='int main(int, char *[]) { return(0); }\n'

# ltmain only uses $CC for tagged configurations so make sure $CC is set.
_LT_AC_SYS_COMPILER

# Allow CC to be a program name with arguments.
lt_save_CC=$CC
lt_save_LD=$LD
lt_save_GCC=$GCC
GCC=$GXX
lt_save_with_gnu_ld=$with_gnu_ld
lt_save_path_LD=$lt_cv_path_LD
if test -n "${lt_cv_prog_gnu_ldcxx+set}"; then
  lt_cv_prog_gnu_ld=$lt_cv_prog_gnu_ldcxx
else
  unset lt_cv_prog_gnu_ld
fi
if test -n "${lt_cv_path_LDCXX+set}"; then
  lt_cv_path_LD=$lt_cv_path_LDCXX
else
  unset lt_cv_path_LD
fi
test -z "${LDCXX+set}" || LD=$LDCXX
CC=${CXX-"c++"}
compiler=$CC
_LT_AC_TAGVAR(compiler, $1)=$CC
cc_basename=`$echo X"$compiler" | $Xsed -e 's%^.*/%%'`

# We don't want -fno-exception wen compiling C++ code, so set the
# no_builtin_flag separately
if test "$GXX" = yes; then
  _LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)=' -fno-builtin'
else
  _LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)=
fi

if test "$GXX" = yes; then
  # Set up default GNU C++ configuration

  AC_PROG_LD

  # Check if GNU C++ uses GNU ld as the underlying linker, since the
  # archiving commands below assume that GNU ld is being used.
  if test "$with_gnu_ld" = yes; then
    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname -o $lib'
    _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'

    _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}--rpath ${wl}$libdir'
    _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}--export-dynamic'

    # If archive_cmds runs LD, not CC, wlarc should be empty
    # XXX I think wlarc can be eliminated in ltcf-cxx, but I need to
    #     investigate it a little bit more. (MM)
    wlarc='${wl}'

    # ancient GNU ld didn't support --whole-archive et. al.
    if eval "`$CC -print-prog-name=ld` --help 2>&1" | \
	grep 'no-whole-archive' > /dev/null; then
      _LT_AC_TAGVAR(whole_archive_flag_spec, $1)="$wlarc"'--whole-archive$convenience '"$wlarc"'--no-whole-archive'
    else
      _LT_AC_TAGVAR(whole_archive_flag_spec, $1)=
    fi
  else
    with_gnu_ld=no
    wlarc=

    # A generic and very simple default shared library creation
    # command for GNU C++ for the case where it uses the native
    # linker, instead of GNU ld.  If possible, this setting should
    # overridden to take advantage of the native linker features on
    # the platform it is being used on.
    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -o $lib'
  fi

  # Commands to make compiler produce verbose output that lists
  # what "hidden" libraries, object files and flags are used when
  # linking a shared library.
  output_verbose_link_cmd='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "\-L"'

else
  GXX=no
  with_gnu_ld=no
  wlarc=
fi

# PORTME: fill in a description of your system's C++ link characteristics
AC_MSG_CHECKING([whether the $compiler linker ($LD) supports shared libraries])
_LT_AC_TAGVAR(ld_shlibs, $1)=yes
case $host_os in
  aix3*)
    # FIXME: insert proper C++ library support
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  aix4* | aix5*)
    if test "$host_cpu" = ia64; then
      # On IA64, the linker does run time linking by default, so we don't
      # have to do anything special.
      aix_use_runtimelinking=no
      exp_sym_flag='-Bexport'
      no_entry_flag=""
    else
      aix_use_runtimelinking=no

      # Test if we are trying to use run time linking or normal
      # AIX style linking. If -brtl is somewhere in LDFLAGS, we
      # need to do runtime linking.
      case $host_os in aix4.[[23]]|aix4.[[23]].*|aix5*)
	for ld_flag in $LDFLAGS; do
	  case $ld_flag in
	  *-brtl*)
	    aix_use_runtimelinking=yes
	    break
	    ;;
	  esac
	done
      esac

      exp_sym_flag='-bexport'
      no_entry_flag='-bnoentry'
    fi

    # When large executables or shared objects are built, AIX ld can
    # have problems creating the table of contents.  If linking a library
    # or program results in "error TOC overflow" add -mminimal-toc to
    # CXXFLAGS/CFLAGS for g++/gcc.  In the cases where that is not
    # enough to fix the problem, add -Wl,-bbigtoc to LDFLAGS.

    _LT_AC_TAGVAR(archive_cmds, $1)=''
    _LT_AC_TAGVAR(hardcode_direct, $1)=yes
    _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=':'
    _LT_AC_TAGVAR(link_all_deplibs, $1)=yes

    if test "$GXX" = yes; then
      case $host_os in aix4.[012]|aix4.[012].*)
      # We only want to do this on AIX 4.2 and lower, the check
      # below for broken collect2 doesn't work under 4.3+
	collect2name=`${CC} -print-prog-name=collect2`
	if test -f "$collect2name" && \
	   strings "$collect2name" | grep resolve_lib_name >/dev/null
	then
	  # We have reworked collect2
	  _LT_AC_TAGVAR(hardcode_direct, $1)=yes
	else
	  # We have old collect2
	  _LT_AC_TAGVAR(hardcode_direct, $1)=unsupported
	  # It fails to find uninstalled libraries when the uninstalled
	  # path is not listed in the libpath.  Setting hardcode_minus_L
	  # to unsupported forces relinking
	  _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
	  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=
	fi
      esac
      shared_flag='-shared'
    else
      # not using gcc
      if test "$host_cpu" = ia64; then
	# VisualAge C++, Version 5.5 for AIX 5L for IA-64, Beta 3 Release
	# chokes on -Wl,-G. The following line is correct:
	shared_flag='-G'
      else
	if test "$aix_use_runtimelinking" = yes; then
	  shared_flag='${wl}-G'
	else
	  shared_flag='${wl}-bM:SRE'
	fi
      fi
    fi

    # It seems that -bexpall does not export symbols beginning with
    # underscore (_), so it is better to generate a list of symbols to export.
    _LT_AC_TAGVAR(always_export_symbols, $1)=yes
    if test "$aix_use_runtimelinking" = yes; then
      # Warning - without using the other runtime loading flags (-brtl),
      # -berok will link without error, but may produce a broken library.
      _LT_AC_TAGVAR(allow_undefined_flag, $1)='-berok'
      # Determine the default libpath from the value encoded in an empty executable.
      _LT_AC_SYS_LIBPATH_AIX
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-blibpath:$libdir:'"$aix_libpath"

      _LT_AC_TAGVAR(archive_expsym_cmds, $1)="\$CC"' -o $output_objdir/$soname $libobjs $deplibs $compiler_flags `if test "x${allow_undefined_flag}" != "x"; then echo "${wl}${allow_undefined_flag}"; else :; fi` '"\${wl}$no_entry_flag \${wl}$exp_sym_flag:\$export_symbols $shared_flag"
     else
      if test "$host_cpu" = ia64; then
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-R $libdir:/usr/lib:/lib'
	_LT_AC_TAGVAR(allow_undefined_flag, $1)="-z nodefs"
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)="\$CC $shared_flag"' -o $output_objdir/$soname $libobjs $deplibs $compiler_flags ${wl}${allow_undefined_flag} '"\${wl}$no_entry_flag \${wl}$exp_sym_flag:\$export_symbols"
      else
	# Determine the default libpath from the value encoded in an empty executable.
	_LT_AC_SYS_LIBPATH_AIX
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-blibpath:$libdir:'"$aix_libpath"
	# Warning - without using the other run time loading flags,
	# -berok will link without error, but may produce a broken library.
	_LT_AC_TAGVAR(no_undefined_flag, $1)=' ${wl}-bernotok'
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-berok'
	# -bexpall does not export symbols beginning with underscore (_)
	_LT_AC_TAGVAR(always_export_symbols, $1)=yes
	# Exported symbols can be pulled into shared objects from archives
	_LT_AC_TAGVAR(whole_archive_flag_spec, $1)=' '
	_LT_AC_TAGVAR(archive_cmds_need_lc, $1)=yes
	# This is similar to how AIX traditionally builds it's shared libraries.
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)="\$CC $shared_flag"' -o $output_objdir/$soname $libobjs $deplibs $compiler_flags ${wl}-bE:$export_symbols ${wl}-bnoentry${allow_undefined_flag}~$AR $AR_FLAGS $output_objdir/$libname$release.a $output_objdir/$soname'
      fi
    fi
    ;;
  chorus*)
    case $cc_basename in
      *)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
    esac
    ;;

  cygwin* | mingw* | pw32*)
    # _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1) is actually meaningless,
    # as there is no search path for DLLs.
    _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
    _LT_AC_TAGVAR(allow_undefined_flag, $1)=unsupported
    _LT_AC_TAGVAR(always_export_symbols, $1)=no
    _LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)=yes

    if $LD --help 2>&1 | grep 'auto-import' > /dev/null; then
      _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -o $output_objdir/$soname ${wl}--image-base=0x10000000 ${wl}--out-implib,$lib'
      # If the export-symbols file already is a .def file (1st line
      # is EXPORTS), use it as is; otherwise, prepend...
      _LT_AC_TAGVAR(archive_expsym_cmds, $1)='if test "x`$SED 1q $export_symbols`" = xEXPORTS; then
	cp $export_symbols $output_objdir/$soname.def;
      else
	echo EXPORTS > $output_objdir/$soname.def;
	cat $export_symbols >> $output_objdir/$soname.def;
      fi~
      $CC -shared -nostdlib $output_objdir/$soname.def $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -o $output_objdir/$soname ${wl}--image-base=0x10000000 ${wl}--out-implib,$lib'
    else
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
    fi
  ;;

  darwin* | rhapsody*)
  if test "$GXX" = yes; then
    _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
    case "$host_os" in
    rhapsody* | darwin1.[[012]])
      _LT_AC_TAGVAR(allow_undefined_flag, $1)='-undefined suppress'
      ;;
    *) # Darwin 1.3 on
      if test -z ${MACOSX_DEPLOYMENT_TARGET} ; then
      	_LT_AC_TAGVAR(allow_undefined_flag, $1)='-flat_namespace -undefined suppress'
      else
        case ${MACOSX_DEPLOYMENT_TARGET} in
          10.[[012]])
            _LT_AC_TAGVAR(allow_undefined_flag, $1)='-flat_namespace -undefined suppress'
            ;;
          10.*)
            _LT_AC_TAGVAR(allow_undefined_flag, $1)='-undefined dynamic_lookup'
            ;;
        esac
      fi
      ;;
    esac
    lt_int_apple_cc_single_mod=no
    output_verbose_link_cmd='echo'
    if $CC -dumpspecs 2>&1 | grep 'single_module' >/dev/null ; then
      lt_int_apple_cc_single_mod=yes
    fi
    if test "X$lt_int_apple_cc_single_mod" = Xyes ; then
      _LT_AC_TAGVAR(archive_cmds, $1)='$CC -dynamiclib -single_module $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags -install_name $rpath/$soname $verstring'
    else
      _LT_AC_TAGVAR(archive_cmds, $1)='$CC -r ${wl}-bind_at_load -keep_private_externs -nostdlib -o ${lib}-master.o $libobjs~$CC -dynamiclib $allow_undefined_flag -o $lib ${lib}-master.o $deplibs $compiler_flags -install_name $rpath/$soname $verstring'
    fi
    _LT_AC_TAGVAR(module_cmds, $1)='$CC ${wl}-bind_at_load $allow_undefined_flag -o $lib -bundle $libobjs $deplibs$compiler_flags'

    # Don't fix this by using the ld -exported_symbols_list flag, it doesn't exist in older darwin ld's
    if test "X$lt_int_apple_cc_single_mod" = Xyes ; then
      _LT_AC_TAGVAR(archive_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC -dynamiclib -single_module $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags -install_name $rpath/$soname $verstring~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
    else
      _LT_AC_TAGVAR(archive_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC -r ${wl}-bind_at_load -keep_private_externs -nostdlib -o ${lib}-master.o $libobjs~$CC -dynamiclib $allow_undefined_flag -o $lib ${lib}-master.o $deplibs $compiler_flags -install_name $rpath/$soname $verstring~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
    fi
    _LT_AC_TAGVAR(module_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC $allow_undefined_flag  -o $lib -bundle $libobjs $deplibs$compiler_flags~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
    _LT_AC_TAGVAR(hardcode_direct, $1)=no
    _LT_AC_TAGVAR(hardcode_automatic, $1)=yes
    _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=unsupported
    _LT_AC_TAGVAR(whole_archive_flag_spec, $1)='-all_load $convenience'
    _LT_AC_TAGVAR(link_all_deplibs, $1)=yes
  else
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
  fi
    ;;

  dgux*)
    case $cc_basename in
      ec++)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      ghcx)
	# Green Hills C++ Compiler
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      *)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
    esac
    ;;
  freebsd[12]*)
    # C++ shared libraries reported to be fairly broken before switch to ELF
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  freebsd-elf*)
    _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
    ;;
  freebsd* | kfreebsd*-gnu)
    # FreeBSD 3 and later use GNU C++ and GNU ld with standard ELF
    # conventions
    _LT_AC_TAGVAR(ld_shlibs, $1)=yes
    ;;
  gnu*)
    ;;
  hpux9*)
    _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}+b ${wl}$libdir'
    _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
    _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'
    _LT_AC_TAGVAR(hardcode_direct, $1)=yes
    _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes # Not in the search PATH,
				# but as the default
				# location of the library.

    case $cc_basename in
    CC)
      # FIXME: insert proper C++ library support
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
      ;;
    aCC)
      _LT_AC_TAGVAR(archive_cmds, $1)='$rm $output_objdir/$soname~$CC -b ${wl}+b ${wl}$install_libdir -o $output_objdir/$soname $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags~test $output_objdir/$soname = $lib || mv $output_objdir/$soname $lib'
      # Commands to make compiler produce verbose output that lists
      # what "hidden" libraries, object files and flags are used when
      # linking a shared library.
      #
      # There doesn't appear to be a way to prevent this compiler from
      # explicitly linking system object files so we need to strip them
      # from the output so that they don't get included in the library
      # dependencies.
      output_verbose_link_cmd='templist=`($CC -b $CFLAGS -v conftest.$objext 2>&1) | grep "[-]L"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
      ;;
    *)
      if test "$GXX" = yes; then
        _LT_AC_TAGVAR(archive_cmds, $1)='$rm $output_objdir/$soname~$CC -shared -nostdlib -fPIC ${wl}+b ${wl}$install_libdir -o $output_objdir/$soname $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags~test $output_objdir/$soname = $lib || mv $output_objdir/$soname $lib'
      else
        # FIXME: insert proper C++ library support
        _LT_AC_TAGVAR(ld_shlibs, $1)=no
      fi
      ;;
    esac
    ;;
  hpux10*|hpux11*)
    if test $with_gnu_ld = no; then
      case "$host_cpu" in
      hppa*64*)
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}+b ${wl}$libdir'
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)='+b $libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
        ;;
      ia64*)
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
        ;;
      *)
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}+b ${wl}$libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
	_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'
        ;;
      esac
    fi
    case "$host_cpu" in
    hppa*64*)
      _LT_AC_TAGVAR(hardcode_direct, $1)=no
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;
    ia64*)
      _LT_AC_TAGVAR(hardcode_direct, $1)=no
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes # Not in the search PATH,
					      # but as the default
					      # location of the library.
      ;;
    *)
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes # Not in the search PATH,
					      # but as the default
					      # location of the library.
      ;;
    esac

    case $cc_basename in
      CC)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      aCC)
	case "$host_cpu" in
	hppa*64*|ia64*)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$LD -b +h $soname -o $lib $linker_flags $libobjs $deplibs'
	  ;;
	*)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$CC -b ${wl}+h ${wl}$soname ${wl}+b ${wl}$install_libdir -o $lib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags'
	  ;;
	esac
	# Commands to make compiler produce verbose output that lists
	# what "hidden" libraries, object files and flags are used when
	# linking a shared library.
	#
	# There doesn't appear to be a way to prevent this compiler from
	# explicitly linking system object files so we need to strip them
	# from the output so that they don't get included in the library
	# dependencies.
	output_verbose_link_cmd='templist=`($CC -b $CFLAGS -v conftest.$objext 2>&1) | grep "\-L"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
	;;
      *)
	if test "$GXX" = yes; then
	  if test $with_gnu_ld = no; then
	    case "$host_cpu" in
	    ia64*|hppa*64*)
	      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -b +h $soname -o $lib $linker_flags $libobjs $deplibs'
	      ;;
	    *)
	      _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib -fPIC ${wl}+h ${wl}$soname ${wl}+b ${wl}$install_libdir -o $lib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags'
	      ;;
	    esac
	  fi
	else
	  # FIXME: insert proper C++ library support
	  _LT_AC_TAGVAR(ld_shlibs, $1)=no
	fi
	;;
    esac
    ;;
  irix5* | irix6*)
    case $cc_basename in
      CC)
	# SGI C++
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -all -multigot $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${objdir}/so_locations -o $lib'

	# Archives containing C++ object files must be created using
	# "CC -ar", where "CC" is the IRIX C++ compiler.  This is
	# necessary to make sure instantiated templates are included
	# in the archive.
	_LT_AC_TAGVAR(old_archive_cmds, $1)='$CC -ar -WR,-u -o $oldlib $oldobjs'
	;;
      *)
	if test "$GXX" = yes; then
	  if test "$with_gnu_ld" = no; then
	    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${objdir}/so_locations -o $lib'
	  else
	    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` -o $lib'
	  fi
	fi
	_LT_AC_TAGVAR(link_all_deplibs, $1)=yes
	;;
    esac
    _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
    _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
    ;;
  linux*)
    case $cc_basename in
      KCC)
	# Kuck and Associates, Inc. (KAI) C++ Compiler

	# KCC will only create a shared library if the output file
	# ends with ".so" (or ".sl" for HP-UX), so rename the library
	# to its proper name (with version) after linking.
	_LT_AC_TAGVAR(archive_cmds, $1)='tempext=`echo $shared_ext | $SED -e '\''s/\([[^()0-9A-Za-z{}]]\)/\\\\\1/g'\''`; templib=`echo $lib | $SED -e "s/\${tempext}\..*/.so/"`; $CC $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags --soname $soname -o \$templib; mv \$templib $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='tempext=`echo $shared_ext | $SED -e '\''s/\([[^()0-9A-Za-z{}]]\)/\\\\\1/g'\''`; templib=`echo $lib | $SED -e "s/\${tempext}\..*/.so/"`; $CC $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags --soname $soname -o \$templib ${wl}-retain-symbols-file,$export_symbols; mv \$templib $lib'
	# Commands to make compiler produce verbose output that lists
	# what "hidden" libraries, object files and flags are used when
	# linking a shared library.
	#
	# There doesn't appear to be a way to prevent this compiler from
	# explicitly linking system object files so we need to strip them
	# from the output so that they don't get included in the library
	# dependencies.
	output_verbose_link_cmd='templist=`$CC $CFLAGS -v conftest.$objext -o libconftest$shared_ext 2>&1 | grep "ld"`; rm -f libconftest$shared_ext; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}--rpath,$libdir'
	_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}--export-dynamic'

	# Archives containing C++ object files must be created using
	# "CC -Bstatic", where "CC" is the KAI C++ compiler.
	_LT_AC_TAGVAR(old_archive_cmds, $1)='$CC -Bstatic -o $oldlib $oldobjs'
	;;
      icpc)
	# Intel C++
	with_gnu_ld=yes
	_LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
	_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}--export-dynamic'
	_LT_AC_TAGVAR(whole_archive_flag_spec, $1)='${wl}--whole-archive$convenience ${wl}--no-whole-archive'
	;;
      cxx)
	# Compaq C++
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname  -o $lib ${wl}-retain-symbols-file $wl$export_symbols'

	runpath_var=LD_RUN_PATH
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-rpath $libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	# Commands to make compiler produce verbose output that lists
	# what "hidden" libraries, object files and flags are used when
	# linking a shared library.
	#
	# There doesn't appear to be a way to prevent this compiler from
	# explicitly linking system object files so we need to strip them
	# from the output so that they don't get included in the library
	# dependencies.
	output_verbose_link_cmd='templist=`$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "ld"`; templist=`echo $templist | $SED "s/\(^.*ld.*\)\( .*ld .*$\)/\1/"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
	;;
    esac
    ;;
  lynxos*)
    # FIXME: insert proper C++ library support
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  m88k*)
    # FIXME: insert proper C++ library support
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  mvs*)
    case $cc_basename in
      cxx)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      *)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
    esac
    ;;
  netbsd* | netbsdelf*-gnu | knetbsd*-gnu)
    if echo __ELF__ | $CC -E - | grep __ELF__ >/dev/null; then
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -Bshareable  -o $lib $predep_objects $libobjs $deplibs $postdep_objects $linker_flags'
      wlarc=
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
    fi
    # Workaround some broken pre-1.5 toolchains
    output_verbose_link_cmd='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep conftest.$objext | $SED -e "s:-lgcc -lc -lgcc::"'
    ;;
  osf3*)
    case $cc_basename in
      KCC)
	# Kuck and Associates, Inc. (KAI) C++ Compiler

	# KCC will only create a shared library if the output file
	# ends with ".so" (or ".sl" for HP-UX), so rename the library
	# to its proper name (with version) after linking.
	_LT_AC_TAGVAR(archive_cmds, $1)='tempext=`echo $shared_ext | $SED -e '\''s/\([[^()0-9A-Za-z{}]]\)/\\\\\1/g'\''`; templib=`echo $lib | $SED -e "s/\${tempext}\..*/.so/"`; $CC $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags --soname $soname -o \$templib; mv \$templib $lib'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	# Archives containing C++ object files must be created using
	# "CC -Bstatic", where "CC" is the KAI C++ compiler.
	_LT_AC_TAGVAR(old_archive_cmds, $1)='$CC -Bstatic -o $oldlib $oldobjs'

	;;
      RCC)
	# Rational C++ 2.4.1
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      cxx)
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-expect_unresolved ${wl}\*'
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared${allow_undefined_flag} $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $soname `test -n "$verstring" && echo ${wl}-set_version $verstring` -update_registry ${objdir}/so_locations -o $lib'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	# Commands to make compiler produce verbose output that lists
	# what "hidden" libraries, object files and flags are used when
	# linking a shared library.
	#
	# There doesn't appear to be a way to prevent this compiler from
	# explicitly linking system object files so we need to strip them
	# from the output so that they don't get included in the library
	# dependencies.
	output_verbose_link_cmd='templist=`$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "ld" | grep -v "ld:"`; templist=`echo $templist | $SED "s/\(^.*ld.*\)\( .*ld.*$\)/\1/"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
	;;
      *)
	if test "$GXX" = yes && test "$with_gnu_ld" = no; then
	  _LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-expect_unresolved ${wl}\*'
	  _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib ${allow_undefined_flag} $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${objdir}/so_locations -o $lib'

	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
	  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	  # Commands to make compiler produce verbose output that lists
	  # what "hidden" libraries, object files and flags are used when
	  # linking a shared library.
	  output_verbose_link_cmd='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "\-L"'

	else
	  # FIXME: insert proper C++ library support
	  _LT_AC_TAGVAR(ld_shlibs, $1)=no
	fi
	;;
    esac
    ;;
  osf4* | osf5*)
    case $cc_basename in
      KCC)
	# Kuck and Associates, Inc. (KAI) C++ Compiler

	# KCC will only create a shared library if the output file
	# ends with ".so" (or ".sl" for HP-UX), so rename the library
	# to its proper name (with version) after linking.
	_LT_AC_TAGVAR(archive_cmds, $1)='tempext=`echo $shared_ext | $SED -e '\''s/\([[^()0-9A-Za-z{}]]\)/\\\\\1/g'\''`; templib=`echo $lib | $SED -e "s/\${tempext}\..*/.so/"`; $CC $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags --soname $soname -o \$templib; mv \$templib $lib'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	# Archives containing C++ object files must be created using
	# the KAI C++ compiler.
	_LT_AC_TAGVAR(old_archive_cmds, $1)='$CC -o $oldlib $oldobjs'
	;;
      RCC)
	# Rational C++ 2.4.1
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      cxx)
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' -expect_unresolved \*'
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared${allow_undefined_flag} $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -msym -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${objdir}/so_locations -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='for i in `cat $export_symbols`; do printf "%s %s\\n" -exported_symbol "\$i" >> $lib.exp; done~
	  echo "-hidden">> $lib.exp~
	  $CC -shared$allow_undefined_flag $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -msym -soname $soname -Wl,-input -Wl,$lib.exp  `test -n "$verstring" && echo -set_version	$verstring` -update_registry $objdir/so_locations -o $lib~
	  $rm $lib.exp'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-rpath $libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	# Commands to make compiler produce verbose output that lists
	# what "hidden" libraries, object files and flags are used when
	# linking a shared library.
	#
	# There doesn't appear to be a way to prevent this compiler from
	# explicitly linking system object files so we need to strip them
	# from the output so that they don't get included in the library
	# dependencies.
	output_verbose_link_cmd='templist=`$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "ld" | grep -v "ld:"`; templist=`echo $templist | $SED "s/\(^.*ld.*\)\( .*ld.*$\)/\1/"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
	;;
      *)
	if test "$GXX" = yes && test "$with_gnu_ld" = no; then
	  _LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-expect_unresolved ${wl}\*'
	 _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib ${allow_undefined_flag} $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-msym ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${objdir}/so_locations -o $lib'

	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
	  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	  # Commands to make compiler produce verbose output that lists
	  # what "hidden" libraries, object files and flags are used when
	  # linking a shared library.
	  output_verbose_link_cmd='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "\-L"'

	else
	  # FIXME: insert proper C++ library support
	  _LT_AC_TAGVAR(ld_shlibs, $1)=no
	fi
	;;
    esac
    ;;
  psos*)
    # FIXME: insert proper C++ library support
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  sco*)
    _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
    case $cc_basename in
      CC)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      *)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
    esac
    ;;
  sunos4*)
    case $cc_basename in
      CC)
	# Sun C++ 4.x
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      lcc)
	# Lucid
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      *)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
    esac
    ;;
  solaris*)
    case $cc_basename in
      CC)
	# Sun C++ 4.2, 5.x and Centerline C++
	_LT_AC_TAGVAR(no_undefined_flag, $1)=' -zdefs'
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -G${allow_undefined_flag} -nolib -h$soname -o $lib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $lib.exp~cat $export_symbols | $SED -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
	$CC -G${allow_undefined_flag} -nolib ${wl}-M ${wl}$lib.exp -h$soname -o $lib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags~$rm $lib.exp'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
	_LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
	case $host_os in
	  solaris2.[0-5] | solaris2.[0-5].*) ;;
	  *)
	    # The C++ compiler is used as linker so we must use $wl
	    # flag to pass the commands to the underlying system
	    # linker.
	    # Supported since Solaris 2.6 (maybe 2.5.1?)
	    _LT_AC_TAGVAR(whole_archive_flag_spec, $1)='${wl}-z ${wl}allextract$convenience ${wl}-z ${wl}defaultextract'
	    ;;
	esac
	_LT_AC_TAGVAR(link_all_deplibs, $1)=yes

	# Commands to make compiler produce verbose output that lists
	# what "hidden" libraries, object files and flags are used when
	# linking a shared library.
	#
	# There doesn't appear to be a way to prevent this compiler from
	# explicitly linking system object files so we need to strip them
	# from the output so that they don't get included in the library
	# dependencies.
	output_verbose_link_cmd='templist=`$CC -G $CFLAGS -v conftest.$objext 2>&1 | grep "\-[[LR]]"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'

	# Archives containing C++ object files must be created using
	# "CC -xar", where "CC" is the Sun C++ compiler.  This is
	# necessary to make sure instantiated templates are included
	# in the archive.
	_LT_AC_TAGVAR(old_archive_cmds, $1)='$CC -xar -o $oldlib $oldobjs'
	;;
      gcx)
	# Green Hills C++ Compiler
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-h $wl$soname -o $lib'

	# The C++ compiler must be used to create the archive.
	_LT_AC_TAGVAR(old_archive_cmds, $1)='$CC $LDFLAGS -archive -o $oldlib $oldobjs'
	;;
      *)
	# GNU C++ compiler with Solaris linker
	if test "$GXX" = yes && test "$with_gnu_ld" = no; then
	  _LT_AC_TAGVAR(no_undefined_flag, $1)=' ${wl}-z ${wl}defs'
	  if $CC --version | grep -v '^2\.7' > /dev/null; then
	    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib $LDFLAGS $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-h $wl$soname -o $lib'
	    _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $lib.exp~cat $export_symbols | $SED -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
		$CC -shared -nostdlib ${wl}-M $wl$lib.exp -o $lib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags~$rm $lib.exp'

	    # Commands to make compiler produce verbose output that lists
	    # what "hidden" libraries, object files and flags are used when
	    # linking a shared library.
	    output_verbose_link_cmd="$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep \"\-L\""
	  else
	    # g++ 2.7 appears to require `-G' NOT `-shared' on this
	    # platform.
	    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -G -nostdlib $LDFLAGS $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-h $wl$soname -o $lib'
	    _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $lib.exp~cat $export_symbols | $SED -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
		$CC -G -nostdlib ${wl}-M $wl$lib.exp -o $lib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags~$rm $lib.exp'

	    # Commands to make compiler produce verbose output that lists
	    # what "hidden" libraries, object files and flags are used when
	    # linking a shared library.
	    output_verbose_link_cmd="$CC -G $CFLAGS -v conftest.$objext 2>&1 | grep \"\-L\""
	  fi

	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-R $wl$libdir'
	fi
	;;
    esac
    ;;
  sysv5OpenUNIX8* | sysv5UnixWare7* | sysv5uw[[78]]* | unixware7*)
    _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
    ;;
  tandem*)
    case $cc_basename in
      NCC)
	# NonStop-UX NCC 3.20
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      *)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
    esac
    ;;
  vxworks*)
    # FIXME: insert proper C++ library support
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  *)
    # FIXME: insert proper C++ library support
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
esac
AC_MSG_RESULT([$_LT_AC_TAGVAR(ld_shlibs, $1)])
test "$_LT_AC_TAGVAR(ld_shlibs, $1)" = no && can_build_shared=no

_LT_AC_TAGVAR(GCC, $1)="$GXX"
_LT_AC_TAGVAR(LD, $1)="$LD"

AC_LIBTOOL_POSTDEP_PREDEP($1)
AC_LIBTOOL_PROG_COMPILER_PIC($1)
AC_LIBTOOL_PROG_CC_C_O($1)
AC_LIBTOOL_SYS_HARD_LINK_LOCKS($1)
AC_LIBTOOL_PROG_LD_SHLIBS($1)
AC_LIBTOOL_SYS_DYNAMIC_LINKER($1)
AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH($1)
AC_LIBTOOL_SYS_LIB_STRIP
AC_LIBTOOL_DLOPEN_SELF($1)

AC_LIBTOOL_CONFIG($1)

AC_LANG_POP
CC=$lt_save_CC
LDCXX=$LD
LD=$lt_save_LD
GCC=$lt_save_GCC
with_gnu_ldcxx=$with_gnu_ld
with_gnu_ld=$lt_save_with_gnu_ld
lt_cv_path_LDCXX=$lt_cv_path_LD
lt_cv_path_LD=$lt_save_path_LD
lt_cv_prog_gnu_ldcxx=$lt_cv_prog_gnu_ld
lt_cv_prog_gnu_ld=$lt_save_with_gnu_ld
])# AC_LIBTOOL_LANG_CXX_CONFIG

# AC_LIBTOOL_POSTDEP_PREDEP([TAGNAME])
# ------------------------
# Figure out "hidden" library dependencies from verbose
# compiler output when linking a shared library.
# Parse the compiler output and extract the necessary
# objects, libraries and library flags.
AC_DEFUN([AC_LIBTOOL_POSTDEP_PREDEP],[
dnl we can't use the lt_simple_compile_test_code here,
dnl because it contains code intended for an executable,
dnl not a library.  It's possible we should let each
dnl tag define a new lt_????_link_test_code variable,
dnl but it's only used here...
ifelse([$1],[],[cat > conftest.$ac_ext <<EOF
int a;
void foo (void) { a = 0; }
EOF
],[$1],[CXX],[cat > conftest.$ac_ext <<EOF
class Foo
{
public:
  Foo (void) { a = 0; }
private:
  int a;
};
EOF
],[$1],[F77],[cat > conftest.$ac_ext <<EOF
      subroutine foo
      implicit none
      integer*4 a
      a=0
      return
      end
EOF
],[$1],[GCJ],[cat > conftest.$ac_ext <<EOF
public class foo {
  private int a;
  public void bar (void) {
    a = 0;
  }
};
EOF
])
dnl Parse the compiler output and extract the necessary
dnl objects, libraries and library flags.
if AC_TRY_EVAL(ac_compile); then
  # Parse the compiler output and extract the necessary
  # objects, libraries and library flags.

  # Sentinel used to keep track of whether or not we are before
  # the conftest object file.
  pre_test_object_deps_done=no

  # The `*' in the case matches for architectures that use `case' in
  # $output_verbose_cmd can trigger glob expansion during the loop
  # eval without this substitution.
  output_verbose_link_cmd="`$echo \"X$output_verbose_link_cmd\" | $Xsed -e \"$no_glob_subst\"`"

  for p in `eval $output_verbose_link_cmd`; do
    case $p in

    -L* | -R* | -l*)
       # Some compilers place space between "-{L,R}" and the path.
       # Remove the space.
       if test $p = "-L" \
	  || test $p = "-R"; then
	 prev=$p
	 continue
       else
	 prev=
       fi

       if test "$pre_test_object_deps_done" = no; then
	 case $p in
	 -L* | -R*)
	   # Internal compiler library paths should come after those
	   # provided the user.  The postdeps already come after the
	   # user supplied libs so there is no need to process them.
	   if test -z "$_LT_AC_TAGVAR(compiler_lib_search_path, $1)"; then
	     _LT_AC_TAGVAR(compiler_lib_search_path, $1)="${prev}${p}"
	   else
	     _LT_AC_TAGVAR(compiler_lib_search_path, $1)="${_LT_AC_TAGVAR(compiler_lib_search_path, $1)} ${prev}${p}"
	   fi
	   ;;
	 # The "-l" case would never come before the object being
	 # linked, so don't bother handling this case.
	 esac
       else
	 if test -z "$_LT_AC_TAGVAR(postdeps, $1)"; then
	   _LT_AC_TAGVAR(postdeps, $1)="${prev}${p}"
	 else
	   _LT_AC_TAGVAR(postdeps, $1)="${_LT_AC_TAGVAR(postdeps, $1)} ${prev}${p}"
	 fi
       fi
       ;;

    *.$objext)
       # This assumes that the test object file only shows up
       # once in the compiler output.
       if test "$p" = "conftest.$objext"; then
	 pre_test_object_deps_done=yes
	 continue
       fi

       if test "$pre_test_object_deps_done" = no; then
	 if test -z "$_LT_AC_TAGVAR(predep_objects, $1)"; then
	   _LT_AC_TAGVAR(predep_objects, $1)="$p"
	 else
	   _LT_AC_TAGVAR(predep_objects, $1)="$_LT_AC_TAGVAR(predep_objects, $1) $p"
	 fi
       else
	 if test -z "$_LT_AC_TAGVAR(postdep_objects, $1)"; then
	   _LT_AC_TAGVAR(postdep_objects, $1)="$p"
	 else
	   _LT_AC_TAGVAR(postdep_objects, $1)="$_LT_AC_TAGVAR(postdep_objects, $1) $p"
	 fi
       fi
       ;;

    *) ;; # Ignore the rest.

    esac
  done

  # Clean up.
  rm -f a.out a.exe
else
  echo "libtool.m4: error: problem compiling $1 test program"
fi

$rm -f confest.$objext

case " $_LT_AC_TAGVAR(postdeps, $1) " in
*" -lc "*) _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no ;;
esac
])# AC_LIBTOOL_POSTDEP_PREDEP

# AC_LIBTOOL_LANG_F77_CONFIG
# ------------------------
# Ensure that the configuration vars for the C compiler are
# suitably defined.  Those variables are subsequently used by
# AC_LIBTOOL_CONFIG to write the compiler configuration to `libtool'.
AC_DEFUN([AC_LIBTOOL_LANG_F77_CONFIG], [_LT_AC_LANG_F77_CONFIG(F77)])
AC_DEFUN([_LT_AC_LANG_F77_CONFIG],
[AC_REQUIRE([AC_PROG_F77])
AC_LANG_PUSH(Fortran 77)

_LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
_LT_AC_TAGVAR(allow_undefined_flag, $1)=
_LT_AC_TAGVAR(always_export_symbols, $1)=no
_LT_AC_TAGVAR(archive_expsym_cmds, $1)=
_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)=
_LT_AC_TAGVAR(hardcode_direct, $1)=no
_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)=
_LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)=
_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=
_LT_AC_TAGVAR(hardcode_minus_L, $1)=no
_LT_AC_TAGVAR(hardcode_automatic, $1)=no
_LT_AC_TAGVAR(module_cmds, $1)=
_LT_AC_TAGVAR(module_expsym_cmds, $1)=
_LT_AC_TAGVAR(link_all_deplibs, $1)=unknown
_LT_AC_TAGVAR(old_archive_cmds, $1)=$old_archive_cmds
_LT_AC_TAGVAR(no_undefined_flag, $1)=
_LT_AC_TAGVAR(whole_archive_flag_spec, $1)=
_LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)=no

# Source file extension for f77 test sources.
ac_ext=f

# Object file extension for compiled f77 test sources.
objext=o
_LT_AC_TAGVAR(objext, $1)=$objext

# Code to be used in simple compile tests
lt_simple_compile_test_code="      subroutine t\n      return\n      end\n"

# Code to be used in simple link tests
lt_simple_link_test_code="      program t\n      end\n"

# ltmain only uses $CC for tagged configurations so make sure $CC is set.
_LT_AC_SYS_COMPILER

# Allow CC to be a program name with arguments.
lt_save_CC="$CC"
CC=${F77-"f77"}
compiler=$CC
_LT_AC_TAGVAR(compiler, $1)=$CC
cc_basename=`$echo X"$compiler" | $Xsed -e 's%^.*/%%'`

AC_MSG_CHECKING([if libtool supports shared libraries])
AC_MSG_RESULT([$can_build_shared])

AC_MSG_CHECKING([whether to build shared libraries])
test "$can_build_shared" = "no" && enable_shared=no

# On AIX, shared libraries and static libraries use the same namespace, and
# are all built from PIC.
case "$host_os" in
aix3*)
  test "$enable_shared" = yes && enable_static=no
  if test -n "$RANLIB"; then
    archive_cmds="$archive_cmds~\$RANLIB \$lib"
    postinstall_cmds='$RANLIB $lib'
  fi
  ;;
aix4* | aix5*)
  test "$enable_shared" = yes && enable_static=no
  ;;
esac
AC_MSG_RESULT([$enable_shared])

AC_MSG_CHECKING([whether to build static libraries])
# Make sure either enable_shared or enable_static is yes.
test "$enable_shared" = yes || enable_static=yes
AC_MSG_RESULT([$enable_static])

test "$_LT_AC_TAGVAR(ld_shlibs, $1)" = no && can_build_shared=no

_LT_AC_TAGVAR(GCC, $1)="$G77"
_LT_AC_TAGVAR(LD, $1)="$LD"

AC_LIBTOOL_PROG_COMPILER_PIC($1)
AC_LIBTOOL_PROG_CC_C_O($1)
AC_LIBTOOL_SYS_HARD_LINK_LOCKS($1)
AC_LIBTOOL_PROG_LD_SHLIBS($1)
AC_LIBTOOL_SYS_DYNAMIC_LINKER($1)
AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH($1)
AC_LIBTOOL_SYS_LIB_STRIP


AC_LIBTOOL_CONFIG($1)

AC_LANG_POP
CC="$lt_save_CC"
])# AC_LIBTOOL_LANG_F77_CONFIG


# AC_LIBTOOL_LANG_GCJ_CONFIG
# --------------------------
# Ensure that the configuration vars for the C compiler are
# suitably defined.  Those variables are subsequently used by
# AC_LIBTOOL_CONFIG to write the compiler configuration to `libtool'.
AC_DEFUN([AC_LIBTOOL_LANG_GCJ_CONFIG], [_LT_AC_LANG_GCJ_CONFIG(GCJ)])
AC_DEFUN([_LT_AC_LANG_GCJ_CONFIG],
[AC_LANG_SAVE

# Source file extension for Java test sources.
ac_ext=java

# Object file extension for compiled Java test sources.
objext=o
_LT_AC_TAGVAR(objext, $1)=$objext

# Code to be used in simple compile tests
lt_simple_compile_test_code="class foo {}\n"

# Code to be used in simple link tests
lt_simple_link_test_code='public class conftest { public static void main(String[] argv) {}; }\n'

# ltmain only uses $CC for tagged configurations so make sure $CC is set.
_LT_AC_SYS_COMPILER

# Allow CC to be a program name with arguments.
lt_save_CC="$CC"
CC=${GCJ-"gcj"}
compiler=$CC
_LT_AC_TAGVAR(compiler, $1)=$CC

# GCJ did not exist at the time GCC didn't implicitly link libc in.
_LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no

AC_LIBTOOL_PROG_COMPILER_NO_RTTI($1)
AC_LIBTOOL_PROG_COMPILER_PIC($1)
AC_LIBTOOL_PROG_CC_C_O($1)
AC_LIBTOOL_SYS_HARD_LINK_LOCKS($1)
AC_LIBTOOL_PROG_LD_SHLIBS($1)
AC_LIBTOOL_SYS_DYNAMIC_LINKER($1)
AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH($1)
AC_LIBTOOL_SYS_LIB_STRIP
AC_LIBTOOL_DLOPEN_SELF($1)

AC_LIBTOOL_CONFIG($1)

AC_LANG_RESTORE
CC="$lt_save_CC"
])# AC_LIBTOOL_LANG_GCJ_CONFIG


# AC_LIBTOOL_LANG_RC_CONFIG
# --------------------------
# Ensure that the configuration vars for the Windows resource compiler are
# suitably defined.  Those variables are subsequently used by
# AC_LIBTOOL_CONFIG to write the compiler configuration to `libtool'.
AC_DEFUN([AC_LIBTOOL_LANG_RC_CONFIG], [_LT_AC_LANG_RC_CONFIG(RC)])
AC_DEFUN([_LT_AC_LANG_RC_CONFIG],
[AC_LANG_SAVE

# Source file extension for RC test sources.
ac_ext=rc

# Object file extension for compiled RC test sources.
objext=o
_LT_AC_TAGVAR(objext, $1)=$objext

# Code to be used in simple compile tests
lt_simple_compile_test_code='sample MENU { MENUITEM "&Soup", 100, CHECKED }\n'

# Code to be used in simple link tests
lt_simple_link_test_code="$lt_simple_compile_test_code"

# ltmain only uses $CC for tagged configurations so make sure $CC is set.
_LT_AC_SYS_COMPILER

# Allow CC to be a program name with arguments.
lt_save_CC="$CC"
CC=${RC-"windres"}
compiler=$CC
_LT_AC_TAGVAR(compiler, $1)=$CC
_LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1)=yes

AC_LIBTOOL_CONFIG($1)

AC_LANG_RESTORE
CC="$lt_save_CC"
])# AC_LIBTOOL_LANG_RC_CONFIG


# AC_LIBTOOL_CONFIG([TAGNAME])
# ----------------------------
# If TAGNAME is not passed, then create an initial libtool script
# with a default configuration from the untagged config vars.  Otherwise
# add code to config.status for appending the configuration named by
# TAGNAME from the matching tagged config vars.
AC_DEFUN([AC_LIBTOOL_CONFIG],
[# The else clause should only fire when bootstrapping the
# libtool distribution, otherwise you forgot to ship ltmain.sh
# with your package, and you will get complaints that there are
# no rules to generate ltmain.sh.
if test -f "$ltmain"; then
  # See if we are running on zsh, and set the options which allow our commands through
  # without removal of \ escapes.
  if test -n "${ZSH_VERSION+set}" ; then
    setopt NO_GLOB_SUBST
  fi
  # Now quote all the things that may contain metacharacters while being
  # careful not to overquote the AC_SUBSTed values.  We take copies of the
  # variables and quote the copies for generation of the libtool script.
  for var in echo old_CC old_CFLAGS AR AR_FLAGS EGREP RANLIB LN_S LTCC NM \
    SED SHELL STRIP \
    libname_spec library_names_spec soname_spec extract_expsyms_cmds \
    old_striplib striplib file_magic_cmd finish_cmds finish_eval \
    deplibs_check_method reload_flag reload_cmds need_locks \
    lt_cv_sys_global_symbol_pipe lt_cv_sys_global_symbol_to_cdecl \
    lt_cv_sys_global_symbol_to_c_name_address \
    sys_lib_search_path_spec sys_lib_dlsearch_path_spec \
    old_postinstall_cmds old_postuninstall_cmds \
    _LT_AC_TAGVAR(compiler, $1) \
    _LT_AC_TAGVAR(CC, $1) \
    _LT_AC_TAGVAR(LD, $1) \
    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1) \
    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1) \
    _LT_AC_TAGVAR(lt_prog_compiler_static, $1) \
    _LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1) \
    _LT_AC_TAGVAR(export_dynamic_flag_spec, $1) \
    _LT_AC_TAGVAR(thread_safe_flag_spec, $1) \
    _LT_AC_TAGVAR(whole_archive_flag_spec, $1) \
    _LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1) \
    _LT_AC_TAGVAR(old_archive_cmds, $1) \
    _LT_AC_TAGVAR(old_archive_from_new_cmds, $1) \
    _LT_AC_TAGVAR(predep_objects, $1) \
    _LT_AC_TAGVAR(postdep_objects, $1) \
    _LT_AC_TAGVAR(predeps, $1) \
    _LT_AC_TAGVAR(postdeps, $1) \
    _LT_AC_TAGVAR(compiler_lib_search_path, $1) \
    _LT_AC_TAGVAR(archive_cmds, $1) \
    _LT_AC_TAGVAR(archive_expsym_cmds, $1) \
    _LT_AC_TAGVAR(postinstall_cmds, $1) \
    _LT_AC_TAGVAR(postuninstall_cmds, $1) \
    _LT_AC_TAGVAR(old_archive_from_expsyms_cmds, $1) \
    _LT_AC_TAGVAR(allow_undefined_flag, $1) \
    _LT_AC_TAGVAR(no_undefined_flag, $1) \
    _LT_AC_TAGVAR(export_symbols_cmds, $1) \
    _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1) \
    _LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1) \
    _LT_AC_TAGVAR(hardcode_libdir_separator, $1) \
    _LT_AC_TAGVAR(hardcode_automatic, $1) \
    _LT_AC_TAGVAR(module_cmds, $1) \
    _LT_AC_TAGVAR(module_expsym_cmds, $1) \
    _LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1) \
    _LT_AC_TAGVAR(exclude_expsyms, $1) \
    _LT_AC_TAGVAR(include_expsyms, $1); do

    case $var in
    _LT_AC_TAGVAR(old_archive_cmds, $1) | \
    _LT_AC_TAGVAR(old_archive_from_new_cmds, $1) | \
    _LT_AC_TAGVAR(archive_cmds, $1) | \
    _LT_AC_TAGVAR(archive_expsym_cmds, $1) | \
    _LT_AC_TAGVAR(module_cmds, $1) | \
    _LT_AC_TAGVAR(module_expsym_cmds, $1) | \
    _LT_AC_TAGVAR(old_archive_from_expsyms_cmds, $1) | \
    _LT_AC_TAGVAR(export_symbols_cmds, $1) | \
    extract_expsyms_cmds | reload_cmds | finish_cmds | \
    postinstall_cmds | postuninstall_cmds | \
    old_postinstall_cmds | old_postuninstall_cmds | \
    sys_lib_search_path_spec | sys_lib_dlsearch_path_spec)
      # Double-quote double-evaled strings.
      eval "lt_$var=\\\"\`\$echo \"X\$$var\" | \$Xsed -e \"\$double_quote_subst\" -e \"\$sed_quote_subst\" -e \"\$delay_variable_subst\"\`\\\""
      ;;
    *)
      eval "lt_$var=\\\"\`\$echo \"X\$$var\" | \$Xsed -e \"\$sed_quote_subst\"\`\\\""
      ;;
    esac
  done

  case $lt_echo in
  *'\[$]0 --fallback-echo"')
    lt_echo=`$echo "X$lt_echo" | $Xsed -e 's/\\\\\\\[$]0 --fallback-echo"[$]/[$]0 --fallback-echo"/'`
    ;;
  esac

ifelse([$1], [],
  [cfgfile="${ofile}T"
  trap "$rm \"$cfgfile\"; exit 1" 1 2 15
  $rm -f "$cfgfile"
  AC_MSG_NOTICE([creating $ofile])],
  [cfgfile="$ofile"])

  cat <<__EOF__ >> "$cfgfile"
ifelse([$1], [],
[#! $SHELL

# `$echo "$cfgfile" | sed 's%^.*/%%'` - Provide generalized library-building support services.
# Generated automatically by $PROGRAM (GNU $PACKAGE $VERSION$TIMESTAMP)
# NOTE: Changes made to this file will be lost: look at ltmain.sh.
#
# Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001
# Free Software Foundation, Inc.
#
# This file is part of GNU Libtool:
# Originally by Gordon Matzigkeit <gord@gnu.ai.mit.edu>, 1996
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#
# As a special exception to the GNU General Public License, if you
# distribute this file as part of a program that contains a
# configuration script generated by Autoconf, you may include it under
# the same distribution terms that you use for the rest of that program.

# A sed program that does not truncate output.
SED=$lt_SED

# Sed that helps us avoid accidentally triggering echo(1) options like -n.
Xsed="$SED -e s/^X//"

# The HP-UX ksh and POSIX shell print the target directory to stdout
# if CDPATH is set.
if test "X\${CDPATH+set}" = Xset; then CDPATH=:; export CDPATH; fi

# The names of the tagged configurations supported by this script.
available_tags=

# ### BEGIN LIBTOOL CONFIG],
[# ### BEGIN LIBTOOL TAG CONFIG: $tagname])

# Libtool was configured on host `(hostname || uname -n) 2>/dev/null | sed 1q`:

# Shell to use when invoking shell scripts.
SHELL=$lt_SHELL

# Whether or not to build shared libraries.
build_libtool_libs=$enable_shared

# Whether or not to build static libraries.
build_old_libs=$enable_static

# Whether or not to add -lc for building shared libraries.
build_libtool_need_lc=$_LT_AC_TAGVAR(archive_cmds_need_lc, $1)

# Whether or not to disallow shared libs when runtime libs are static
allow_libtool_libs_with_static_runtimes=$_LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)

# Whether or not to optimize for fast installation.
fast_install=$enable_fast_install

# The host system.
host_alias=$host_alias
host=$host

# An echo program that does not interpret backslashes.
echo=$lt_echo

# The archiver.
AR=$lt_AR
AR_FLAGS=$lt_AR_FLAGS

# A C compiler.
LTCC=$lt_LTCC

# A language-specific compiler.
CC=$lt_[]_LT_AC_TAGVAR(compiler, $1)

# Is the compiler the GNU C compiler?
with_gcc=$_LT_AC_TAGVAR(GCC, $1)

# An ERE matcher.
EGREP=$lt_EGREP

# The linker used to build libraries.
LD=$lt_[]_LT_AC_TAGVAR(LD, $1)

# Whether we need hard or soft links.
LN_S=$lt_LN_S

# A BSD-compatible nm program.
NM=$lt_NM

# A symbol stripping program
STRIP=$lt_STRIP

# Used to examine libraries when file_magic_cmd begins "file"
MAGIC_CMD=$MAGIC_CMD

# Used on cygwin: DLL creation program.
DLLTOOL="$DLLTOOL"

# Used on cygwin: object dumper.
OBJDUMP="$OBJDUMP"

# Used on cygwin: assembler.
AS="$AS"

# The name of the directory that contains temporary libtool files.
objdir=$objdir

# How to create reloadable object files.
reload_flag=$lt_reload_flag
reload_cmds=$lt_reload_cmds

# How to pass a linker flag through the compiler.
wl=$lt_[]_LT_AC_TAGVAR(lt_prog_compiler_wl, $1)

# Object file suffix (normally "o").
objext="$ac_objext"

# Old archive suffix (normally "a").
libext="$libext"

# Shared library suffix (normally ".so").
shrext_cmds='$shrext_cmds'

# Executable file suffix (normally "").
exeext="$exeext"

# Additional compiler flags for building library objects.
pic_flag=$lt_[]_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)
pic_mode=$pic_mode

# What is the maximum length of a command?
max_cmd_len=$lt_cv_sys_max_cmd_len

# Does compiler simultaneously support -c and -o options?
compiler_c_o=$lt_[]_LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1)

# Must we lock files when doing compilation ?
need_locks=$lt_need_locks

# Do we need the lib prefix for modules?
need_lib_prefix=$need_lib_prefix

# Do we need a version for libraries?
need_version=$need_version

# Whether dlopen is supported.
dlopen_support=$enable_dlopen

# Whether dlopen of programs is supported.
dlopen_self=$enable_dlopen_self

# Whether dlopen of statically linked programs is supported.
dlopen_self_static=$enable_dlopen_self_static

# Compiler flag to prevent dynamic linking.
link_static_flag=$lt_[]_LT_AC_TAGVAR(lt_prog_compiler_static, $1)

# Compiler flag to turn off builtin functions.
no_builtin_flag=$lt_[]_LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)

# Compiler flag to allow reflexive dlopens.
export_dynamic_flag_spec=$lt_[]_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)

# Compiler flag to generate shared objects directly from archives.
whole_archive_flag_spec=$lt_[]_LT_AC_TAGVAR(whole_archive_flag_spec, $1)

# Compiler flag to generate thread-safe objects.
thread_safe_flag_spec=$lt_[]_LT_AC_TAGVAR(thread_safe_flag_spec, $1)

# Library versioning type.
version_type=$version_type

# Format of library name prefix.
libname_spec=$lt_libname_spec

# List of archive names.  First name is the real one, the rest are links.
# The last name is the one that the linker finds with -lNAME.
library_names_spec=$lt_library_names_spec

# The coded name of the library, if different from the real name.
soname_spec=$lt_soname_spec

# Commands used to build and install an old-style archive.
RANLIB=$lt_RANLIB
old_archive_cmds=$lt_[]_LT_AC_TAGVAR(old_archive_cmds, $1)
old_postinstall_cmds=$lt_old_postinstall_cmds
old_postuninstall_cmds=$lt_old_postuninstall_cmds

# Create an old-style archive from a shared archive.
old_archive_from_new_cmds=$lt_[]_LT_AC_TAGVAR(old_archive_from_new_cmds, $1)

# Create a temporary old-style archive to link instead of a shared archive.
old_archive_from_expsyms_cmds=$lt_[]_LT_AC_TAGVAR(old_archive_from_expsyms_cmds, $1)

# Commands used to build and install a shared archive.
archive_cmds=$lt_[]_LT_AC_TAGVAR(archive_cmds, $1)
archive_expsym_cmds=$lt_[]_LT_AC_TAGVAR(archive_expsym_cmds, $1)
postinstall_cmds=$lt_postinstall_cmds
postuninstall_cmds=$lt_postuninstall_cmds

# Commands used to build a loadable module (assumed same as above if empty)
module_cmds=$lt_[]_LT_AC_TAGVAR(module_cmds, $1)
module_expsym_cmds=$lt_[]_LT_AC_TAGVAR(module_expsym_cmds, $1)

# Commands to strip libraries.
old_striplib=$lt_old_striplib
striplib=$lt_striplib

# Dependencies to place before the objects being linked to create a
# shared library.
predep_objects=$lt_[]_LT_AC_TAGVAR(predep_objects, $1)

# Dependencies to place after the objects being linked to create a
# shared library.
postdep_objects=$lt_[]_LT_AC_TAGVAR(postdep_objects, $1)

# Dependencies to place before the objects being linked to create a
# shared library.
predeps=$lt_[]_LT_AC_TAGVAR(predeps, $1)

# Dependencies to place after the objects being linked to create a
# shared library.
postdeps=$lt_[]_LT_AC_TAGVAR(postdeps, $1)

# The library search path used internally by the compiler when linking
# a shared library.
compiler_lib_search_path=$lt_[]_LT_AC_TAGVAR(compiler_lib_search_path, $1)

# Method to check whether dependent libraries are shared objects.
deplibs_check_method=$lt_deplibs_check_method

# Command to use when deplibs_check_method == file_magic.
file_magic_cmd=$lt_file_magic_cmd

# Flag that allows shared libraries with undefined symbols to be built.
allow_undefined_flag=$lt_[]_LT_AC_TAGVAR(allow_undefined_flag, $1)

# Flag that forces no undefined symbols.
no_undefined_flag=$lt_[]_LT_AC_TAGVAR(no_undefined_flag, $1)

# Commands used to finish a libtool library installation in a directory.
finish_cmds=$lt_finish_cmds

# Same as above, but a single script fragment to be evaled but not shown.
finish_eval=$lt_finish_eval

# Take the output of nm and produce a listing of raw symbols and C names.
global_symbol_pipe=$lt_lt_cv_sys_global_symbol_pipe

# Transform the output of nm in a proper C declaration
global_symbol_to_cdecl=$lt_lt_cv_sys_global_symbol_to_cdecl

# Transform the output of nm in a C name address pair
global_symbol_to_c_name_address=$lt_lt_cv_sys_global_symbol_to_c_name_address

# This is the shared library runtime path variable.
runpath_var=$runpath_var

# This is the shared library path variable.
shlibpath_var=$shlibpath_var

# Is shlibpath searched before the hard-coded library search path?
shlibpath_overrides_runpath=$shlibpath_overrides_runpath

# How to hardcode a shared library path into an executable.
hardcode_action=$_LT_AC_TAGVAR(hardcode_action, $1)

# Whether we should hardcode library paths into libraries.
hardcode_into_libs=$hardcode_into_libs

# Flag to hardcode \$libdir into a binary during linking.
# This must work even if \$libdir does not exist.
hardcode_libdir_flag_spec=$lt_[]_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)

# If ld is used when linking, flag to hardcode \$libdir into
# a binary during linking. This must work even if \$libdir does
# not exist.
hardcode_libdir_flag_spec_ld=$lt_[]_LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)

# Whether we need a single -rpath flag with a separated argument.
hardcode_libdir_separator=$lt_[]_LT_AC_TAGVAR(hardcode_libdir_separator, $1)

# Set to yes if using DIR/libNAME${shared_ext} during linking hardcodes DIR into the
# resulting binary.
hardcode_direct=$_LT_AC_TAGVAR(hardcode_direct, $1)

# Set to yes if using the -LDIR flag during linking hardcodes DIR into the
# resulting binary.
hardcode_minus_L=$_LT_AC_TAGVAR(hardcode_minus_L, $1)

# Set to yes if using SHLIBPATH_VAR=DIR during linking hardcodes DIR into
# the resulting binary.
hardcode_shlibpath_var=$_LT_AC_TAGVAR(hardcode_shlibpath_var, $1)

# Set to yes if building a shared library automatically hardcodes DIR into the library
# and all subsequent libraries and executables linked against it.
hardcode_automatic=$_LT_AC_TAGVAR(hardcode_automatic, $1)

# Variables whose values should be saved in libtool wrapper scripts and
# restored at relink time.
variables_saved_for_relink="$variables_saved_for_relink"

# Whether libtool must link a program against all its dependency libraries.
link_all_deplibs=$_LT_AC_TAGVAR(link_all_deplibs, $1)

# Compile-time system search path for libraries
sys_lib_search_path_spec=$lt_sys_lib_search_path_spec

# Run-time system search path for libraries
sys_lib_dlsearch_path_spec=$lt_sys_lib_dlsearch_path_spec

# Fix the shell variable \$srcfile for the compiler.
fix_srcfile_path="$_LT_AC_TAGVAR(fix_srcfile_path, $1)"

# Set to yes if exported symbols are required.
always_export_symbols=$_LT_AC_TAGVAR(always_export_symbols, $1)

# The commands to list exported symbols.
export_symbols_cmds=$lt_[]_LT_AC_TAGVAR(export_symbols_cmds, $1)

# The commands to extract the exported symbol list from a shared archive.
extract_expsyms_cmds=$lt_extract_expsyms_cmds

# Symbols that should not be listed in the preloaded symbols.
exclude_expsyms=$lt_[]_LT_AC_TAGVAR(exclude_expsyms, $1)

# Symbols that must always be exported.
include_expsyms=$lt_[]_LT_AC_TAGVAR(include_expsyms, $1)

ifelse([$1],[],
[# ### END LIBTOOL CONFIG],
[# ### END LIBTOOL TAG CONFIG: $tagname])

__EOF__

ifelse([$1],[], [
  case $host_os in
  aix3*)
    cat <<\EOF >> "$cfgfile"

# AIX sometimes has problems with the GCC collect2 program.  For some
# reason, if we set the COLLECT_NAMES environment variable, the problems
# vanish in a puff of smoke.
if test "X${COLLECT_NAMES+set}" != Xset; then
  COLLECT_NAMES=
  export COLLECT_NAMES
fi
EOF
    ;;
  esac

  # We use sed instead of cat because bash on DJGPP gets confused if
  # if finds mixed CR/LF and LF-only lines.  Since sed operates in
  # text mode, it properly converts lines to CR/LF.  This bash problem
  # is reportedly fixed, but why not run on old versions too?
  sed '$q' "$ltmain" >> "$cfgfile" || (rm -f "$cfgfile"; exit 1)

  mv -f "$cfgfile" "$ofile" || \
    (rm -f "$ofile" && cp "$cfgfile" "$ofile" && rm -f "$cfgfile")
  chmod +x "$ofile"
])
else
  # If there is no Makefile yet, we rely on a make rule to execute
  # `config.status --recheck' to rerun these tests and create the
  # libtool script then.
  ltmain_in=`echo $ltmain | sed -e 's/\.sh$/.in/'`
  if test -f "$ltmain_in"; then
    test -f Makefile && make "$ltmain"
  fi
fi
])# AC_LIBTOOL_CONFIG


# AC_LIBTOOL_PROG_COMPILER_NO_RTTI([TAGNAME])
# -------------------------------------------
AC_DEFUN([AC_LIBTOOL_PROG_COMPILER_NO_RTTI],
[AC_REQUIRE([_LT_AC_SYS_COMPILER])dnl

_LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)=

if test "$GCC" = yes; then
  _LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)=' -fno-builtin'

  AC_LIBTOOL_COMPILER_OPTION([if $compiler supports -fno-rtti -fno-exceptions],
    lt_cv_prog_compiler_rtti_exceptions,
    [-fno-rtti -fno-exceptions], [],
    [_LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)="$_LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1) -fno-rtti -fno-exceptions"])
fi
])# AC_LIBTOOL_PROG_COMPILER_NO_RTTI


# AC_LIBTOOL_SYS_GLOBAL_SYMBOL_PIPE
# ---------------------------------
AC_DEFUN([AC_LIBTOOL_SYS_GLOBAL_SYMBOL_PIPE],
[AC_REQUIRE([AC_CANONICAL_HOST])
AC_REQUIRE([AC_PROG_NM])
AC_REQUIRE([AC_OBJEXT])
# Check for command to grab the raw symbol name followed by C symbol from nm.
AC_MSG_CHECKING([command to parse $NM output from $compiler object])
AC_CACHE_VAL([lt_cv_sys_global_symbol_pipe],
[
# These are sane defaults that work on at least a few old systems.
# [They come from Ultrix.  What could be older than Ultrix?!! ;)]

# Character class describing NM global symbol codes.
symcode='[[BCDEGRST]]'

# Regexp to match symbols that can be accessed directly from C.
sympat='\([[_A-Za-z]][[_A-Za-z0-9]]*\)'

# Transform the above into a raw symbol and a C symbol.
symxfrm='\1 \2\3 \3'

# Transform an extracted symbol line into a proper C declaration
lt_cv_sys_global_symbol_to_cdecl="sed -n -e 's/^. .* \(.*\)$/extern int \1;/p'"

# Transform an extracted symbol line into symbol name and symbol address
lt_cv_sys_global_symbol_to_c_name_address="sed -n -e 's/^: \([[^ ]]*\) $/  {\\\"\1\\\", (lt_ptr) 0},/p' -e 's/^$symcode \([[^ ]]*\) \([[^ ]]*\)$/  {\"\2\", (lt_ptr) \&\2},/p'"

# Define system-specific variables.
case $host_os in
aix*)
  symcode='[[BCDT]]'
  ;;
cygwin* | mingw* | pw32*)
  symcode='[[ABCDGISTW]]'
  ;;
hpux*) # Its linker distinguishes data from code symbols
  if test "$host_cpu" = ia64; then
    symcode='[[ABCDEGRST]]'
  fi
  lt_cv_sys_global_symbol_to_cdecl="sed -n -e 's/^T .* \(.*\)$/extern int \1();/p' -e 's/^$symcode* .* \(.*\)$/extern char \1;/p'"
  lt_cv_sys_global_symbol_to_c_name_address="sed -n -e 's/^: \([[^ ]]*\) $/  {\\\"\1\\\", (lt_ptr) 0},/p' -e 's/^$symcode* \([[^ ]]*\) \([[^ ]]*\)$/  {\"\2\", (lt_ptr) \&\2},/p'"
  ;;
irix* | nonstopux*)
  symcode='[[BCDEGRST]]'
  ;;
osf*)
  symcode='[[BCDEGQRST]]'
  ;;
solaris* | sysv5*)
  symcode='[[BDRT]]'
  ;;
sysv4)
  symcode='[[DFNSTU]]'
  ;;
esac

# Handle CRLF in mingw tool chain
opt_cr=
case $build_os in
mingw*)
  opt_cr=`echo 'x\{0,1\}' | tr x '\015'` # option cr in regexp
  ;;
esac

# If we're using GNU nm, then use its standard symbol codes.
case `$NM -V 2>&1` in
*GNU* | *'with BFD'*)
  symcode='[[ABCDGIRSTW]]' ;;
esac

# Try without a prefix undercore, then with it.
for ac_symprfx in "" "_"; do

  # Write the raw and C identifiers.
  lt_cv_sys_global_symbol_pipe="sed -n -e 's/^.*[[ 	]]\($symcode$symcode*\)[[ 	]][[ 	]]*\($ac_symprfx\)$sympat$opt_cr$/$symxfrm/p'"

  # Check to see that the pipe works correctly.
  pipe_works=no

  rm -f conftest*
  cat > conftest.$ac_ext <<EOF
#ifdef __cplusplus
extern "C" {
#endif
char nm_test_var;
void nm_test_func(){}
#ifdef __cplusplus
}
#endif
int main(){nm_test_var='a';nm_test_func();return(0);}
EOF

  if AC_TRY_EVAL(ac_compile); then
    # Now try to grab the symbols.
    nlist=conftest.nm
    if AC_TRY_EVAL(NM conftest.$ac_objext \| $lt_cv_sys_global_symbol_pipe \> $nlist) && test -s "$nlist"; then
      # Try sorting and uniquifying the output.
      if sort "$nlist" | uniq > "$nlist"T; then
	mv -f "$nlist"T "$nlist"
      else
	rm -f "$nlist"T
      fi

      # Make sure that we snagged all the symbols we need.
      if grep ' nm_test_var$' "$nlist" >/dev/null; then
	if grep ' nm_test_func$' "$nlist" >/dev/null; then
	  cat <<EOF > conftest.$ac_ext
#ifdef __cplusplus
extern "C" {
#endif

EOF
	  # Now generate the symbol file.
	  eval "$lt_cv_sys_global_symbol_to_cdecl"' < "$nlist" | grep -v main >> conftest.$ac_ext'

	  cat <<EOF >> conftest.$ac_ext
#if defined (__STDC__) && __STDC__
# define lt_ptr_t void *
#else
# define lt_ptr_t char *
# define const
#endif

/* The mapping between symbol names and symbols. */
const struct {
  const char *name;
  lt_ptr_t address;
}
lt_preloaded_symbols[[]] =
{
EOF
	  $SED "s/^$symcode$symcode* \(.*\) \(.*\)$/  {\"\2\", (lt_ptr_t) \&\2},/" < "$nlist" | grep -v main >> conftest.$ac_ext
	  cat <<\EOF >> conftest.$ac_ext
  {0, (lt_ptr_t) 0}
};

#ifdef __cplusplus
}
#endif
EOF
	  # Now try linking the two files.
	  mv conftest.$ac_objext conftstm.$ac_objext
	  lt_save_LIBS="$LIBS"
	  lt_save_CFLAGS="$CFLAGS"
	  LIBS="conftstm.$ac_objext"
	  CFLAGS="$CFLAGS$_LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)"
	  if AC_TRY_EVAL(ac_link) && test -s conftest${ac_exeext}; then
	    pipe_works=yes
	  fi
	  LIBS="$lt_save_LIBS"
	  CFLAGS="$lt_save_CFLAGS"
	else
	  echo "cannot find nm_test_func in $nlist" >&AS_MESSAGE_LOG_FD
	fi
      else
	echo "cannot find nm_test_var in $nlist" >&AS_MESSAGE_LOG_FD
      fi
    else
      echo "cannot run $lt_cv_sys_global_symbol_pipe" >&AS_MESSAGE_LOG_FD
    fi
  else
    echo "$progname: failed program was:" >&AS_MESSAGE_LOG_FD
    cat conftest.$ac_ext >&5
  fi
  rm -f conftest* conftst*

  # Do not use the global_symbol_pipe unless it works.
  if test "$pipe_works" = yes; then
    break
  else
    lt_cv_sys_global_symbol_pipe=
  fi
done
])
if test -z "$lt_cv_sys_global_symbol_pipe"; then
  lt_cv_sys_global_symbol_to_cdecl=
fi
if test -z "$lt_cv_sys_global_symbol_pipe$lt_cv_sys_global_symbol_to_cdecl"; then
  AC_MSG_RESULT(failed)
else
  AC_MSG_RESULT(ok)
fi
]) # AC_LIBTOOL_SYS_GLOBAL_SYMBOL_PIPE


# AC_LIBTOOL_PROG_COMPILER_PIC([TAGNAME])
# ---------------------------------------
AC_DEFUN([AC_LIBTOOL_PROG_COMPILER_PIC],
[_LT_AC_TAGVAR(lt_prog_compiler_wl, $1)=
_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=
_LT_AC_TAGVAR(lt_prog_compiler_static, $1)=

AC_MSG_CHECKING([for $compiler option to produce PIC])
 ifelse([$1],[CXX],[
  # C++ specific cases for pic, static, wl, etc.
  if test "$GXX" = yes; then
    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-static'

    case $host_os in
    aix*)
      # All AIX code is PIC.
      if test "$host_cpu" = ia64; then
	# AIX 5 now supports IA64 processor
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      fi
      ;;
    amigaos*)
      # FIXME: we need at least 68020 code to build shared libraries, but
      # adding the `-m68020' flag to GCC prevents building anything better,
      # like `-m68040'.
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-m68020 -resident32 -malways-restore-a4'
      ;;
    beos* | cygwin* | irix5* | irix6* | nonstopux* | osf3* | osf4* | osf5*)
      # PIC is the default for these OSes.
      ;;
    mingw* | os2* | pw32*)
      # This hack is so that the source file can tell whether it is being
      # built for inclusion in a dll (and should export symbols for example).
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-DDLL_EXPORT'
      ;;
    darwin* | rhapsody*)
      # PIC is the default on this platform
      # Common symbols not allowed in MH_DYLIB files
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fno-common'
      ;;
    *djgpp*)
      # DJGPP does not support shared libraries at all
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=
      ;;
    sysv4*MP*)
      if test -d /usr/nec; then
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=-Kconform_pic
      fi
      ;;
    hpux*)
      # PIC is the default for IA64 HP-UX and 64-bit HP-UX, but
      # not for PA HP-UX.
      case "$host_cpu" in
      hppa*64*|ia64*)
	;;
      *)
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fPIC'
	;;
      esac
      ;;
    *)
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fPIC'
      ;;
    esac
  else
    case $host_os in
      aix4* | aix5*)
	# All AIX code is PIC.
	if test "$host_cpu" = ia64; then
	  # AIX 5 now supports IA64 processor
	  _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
	else
	  _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-bnso -bI:/lib/syscalls.exp'
	fi
	;;
      chorus*)
	case $cc_basename in
	cxch68)
	  # Green Hills C++ Compiler
	  # _LT_AC_TAGVAR(lt_prog_compiler_static, $1)="--no_auto_instantiation -u __main -u __premain -u _abort -r $COOL_DIR/lib/libOrb.a $MVME_DIR/lib/CC/libC.a $MVME_DIR/lib/classix/libcx.s.a"
	  ;;
	esac
	;;
      dgux*)
	case $cc_basename in
	  ec++)
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
	    ;;
	  ghcx)
	    # Green Hills C++ Compiler
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-pic'
	    ;;
	  *)
	    ;;
	esac
	;;
      freebsd* | kfreebsd*-gnu)
	# FreeBSD uses GNU C++
	;;
      hpux9* | hpux10* | hpux11*)
	case $cc_basename in
	  CC)
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)="${ac_cv_prog_cc_wl}-a ${ac_cv_prog_cc_wl}archive"
	    if test "$host_cpu" != ia64; then
	      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='+Z'
	    fi
	    ;;
	  aCC)
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)="${ac_cv_prog_cc_wl}-a ${ac_cv_prog_cc_wl}archive"
	    case "$host_cpu" in
	    hppa*64*|ia64*)
	      # +Z the default
	      ;;
	    *)
	      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='+Z'
	      ;;
	    esac
	    ;;
	  *)
	    ;;
	esac
	;;
      irix5* | irix6* | nonstopux*)
	case $cc_basename in
	  CC)
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-non_shared'
	    # CC pic flag -KPIC is the default.
	    ;;
	  *)
	    ;;
	esac
	;;
      linux*)
	case $cc_basename in
	  KCC)
	    # KAI C++ Compiler
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='--backend -Wl,'
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fPIC'
	    ;;
	  icpc)
	    # Intel C++
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-static'
	    ;;
	  cxx)
	    # Compaq C++
	    # Make sure the PIC flag is empty.  It appears that all Alpha
	    # Linux and Compaq Tru64 Unix objects are PIC.
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-non_shared'
	    ;;
	  *)
	    ;;
	esac
	;;
      lynxos*)
	;;
      m88k*)
	;;
      mvs*)
	case $cc_basename in
	  cxx)
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-W c,exportall'
	    ;;
	  *)
	    ;;
	esac
	;;
      netbsd* | netbsdelf*-gnu | knetbsd*-gnu)
	;;
      osf3* | osf4* | osf5*)
	case $cc_basename in
	  KCC)
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='--backend -Wl,'
	    ;;
	  RCC)
	    # Rational C++ 2.4.1
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-pic'
	    ;;
	  cxx)
	    # Digital/Compaq C++
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	    # Make sure the PIC flag is empty.  It appears that all Alpha
	    # Linux and Compaq Tru64 Unix objects are PIC.
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-non_shared'
	    ;;
	  *)
	    ;;
	esac
	;;
      psos*)
	;;
      sco*)
	case $cc_basename in
	  CC)
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fPIC'
	    ;;
	  *)
	    ;;
	esac
	;;
      solaris*)
	case $cc_basename in
	  CC)
	    # Sun C++ 4.2, 5.x and Centerline C++
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Qoption ld '
	    ;;
	  gcx)
	    # Green Hills C++ Compiler
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-PIC'
	    ;;
	  *)
	    ;;
	esac
	;;
      sunos4*)
	case $cc_basename in
	  CC)
	    # Sun C++ 4.x
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-pic'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
	    ;;
	  lcc)
	    # Lucid
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-pic'
	    ;;
	  *)
	    ;;
	esac
	;;
      tandem*)
	case $cc_basename in
	  NCC)
	    # NonStop-UX NCC 3.20
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
	    ;;
	  *)
	    ;;
	esac
	;;
      unixware*)
	;;
      vxworks*)
	;;
      *)
	_LT_AC_TAGVAR(lt_prog_compiler_can_build_shared, $1)=no
	;;
    esac
  fi
],
[
  if test "$GCC" = yes; then
    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-static'

    case $host_os in
      aix*)
      # All AIX code is PIC.
      if test "$host_cpu" = ia64; then
	# AIX 5 now supports IA64 processor
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      fi
      ;;

    amigaos*)
      # FIXME: we need at least 68020 code to build shared libraries, but
      # adding the `-m68020' flag to GCC prevents building anything better,
      # like `-m68040'.
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-m68020 -resident32 -malways-restore-a4'
      ;;

    beos* | cygwin* | irix5* | irix6* | nonstopux* | osf3* | osf4* | osf5*)
      # PIC is the default for these OSes.
      ;;

    mingw* | pw32* | os2*)
      # This hack is so that the source file can tell whether it is being
      # built for inclusion in a dll (and should export symbols for example).
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-DDLL_EXPORT'
      ;;

    darwin* | rhapsody*)
      # PIC is the default on this platform
      # Common symbols not allowed in MH_DYLIB files
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fno-common'
      ;;

    msdosdjgpp*)
      # Just because we use GCC doesn't mean we suddenly get shared libraries
      # on systems that don't support them.
      _LT_AC_TAGVAR(lt_prog_compiler_can_build_shared, $1)=no
      enable_shared=no
      ;;

    sysv4*MP*)
      if test -d /usr/nec; then
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=-Kconform_pic
      fi
      ;;

    hpux*)
      # PIC is the default for IA64 HP-UX and 64-bit HP-UX, but
      # not for PA HP-UX.
      case "$host_cpu" in
      hppa*64*|ia64*)
	# +Z the default
	;;
      *)
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fPIC'
	;;
      esac
      ;;

    *)
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fPIC'
      ;;
    esac
  else
    # PORTME Check for flag to pass linker flags through the system compiler.
    case $host_os in
    aix*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
      if test "$host_cpu" = ia64; then
	# AIX 5 now supports IA64 processor
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      else
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-bnso -bI:/lib/syscalls.exp'
      fi
      ;;

    mingw* | pw32* | os2*)
      # This hack is so that the source file can tell whether it is being
      # built for inclusion in a dll (and should export symbols for example).
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-DDLL_EXPORT'
      ;;

    hpux9* | hpux10* | hpux11*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
      # PIC is the default for IA64 HP-UX and 64-bit HP-UX, but
      # not for PA HP-UX.
      case "$host_cpu" in
      hppa*64*|ia64*)
	# +Z the default
	;;
      *)
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='+Z'
	;;
      esac
      # Is there a better lt_prog_compiler_static that works with the bundled CC?
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='${wl}-a ${wl}archive'
      ;;

    irix5* | irix6* | nonstopux*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
      # PIC (with -KPIC) is the default.
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-non_shared'
      ;;

    newsos6)
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      ;;

    linux*)
      case $CC in
      icc* | ecc*)
	_LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-static'
        ;;
      ccc*)
        _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
        # All Alpha code is PIC.
        _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-non_shared'
        ;;
      esac
      ;;

    osf3* | osf4* | osf5*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
      # All OSF/1 code is PIC.
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-non_shared'
      ;;

    sco3.2v5*)
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-Kpic'
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-dn'
      ;;

    solaris*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      ;;

    sunos4*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Qoption ld '
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-PIC'
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      ;;

    sysv4 | sysv4.2uw2* | sysv4.3* | sysv5*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      ;;

    sysv4*MP*)
      if test -d /usr/nec ;then
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-Kconform_pic'
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      fi
      ;;

    uts4*)
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-pic'
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      ;;

    *)
      _LT_AC_TAGVAR(lt_prog_compiler_can_build_shared, $1)=no
      ;;
    esac
  fi
])
AC_MSG_RESULT([$_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)])

#
# Check to make sure the PIC flag actually works.
#
if test -n "$_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)"; then
  AC_LIBTOOL_COMPILER_OPTION([if $compiler PIC flag $_LT_AC_TAGVAR(lt_prog_compiler_pic, $1) works],
    _LT_AC_TAGVAR(lt_prog_compiler_pic_works, $1),
    [$_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)ifelse([$1],[],[ -DPIC],[ifelse([$1],[CXX],[ -DPIC],[])])], [],
    [case $_LT_AC_TAGVAR(lt_prog_compiler_pic, $1) in
     "" | " "*) ;;
     *) _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=" $_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)" ;;
     esac],
    [_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=
     _LT_AC_TAGVAR(lt_prog_compiler_can_build_shared, $1)=no])
fi
case "$host_os" in
  # For platforms which do not support PIC, -DPIC is meaningless:
  *djgpp*)
    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=
    ;;
  *)
    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)="$_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)ifelse([$1],[],[ -DPIC],[ifelse([$1],[CXX],[ -DPIC],[])])"
    ;;
esac
])


# AC_LIBTOOL_PROG_LD_SHLIBS([TAGNAME])
# ------------------------------------
# See if the linker supports building shared libraries.
AC_DEFUN([AC_LIBTOOL_PROG_LD_SHLIBS],
[AC_MSG_CHECKING([whether the $compiler linker ($LD) supports shared libraries])
ifelse([$1],[CXX],[
  _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM $libobjs $convenience | $global_symbol_pipe | $SED '\''s/.* //'\'' | sort | uniq > $export_symbols'
  case $host_os in
  aix4* | aix5*)
    # If we're using GNU nm, then we don't want the "-C" option.
    # -C means demangle to AIX nm, but means don't demangle with GNU nm
    if $NM -V 2>&1 | grep 'GNU' > /dev/null; then
      _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM -Bpg $libobjs $convenience | awk '\''{ if (((\[$]2 == "T") || (\[$]2 == "D") || (\[$]2 == "B")) && ([substr](\[$]3,1,1) != ".")) { print \[$]3 } }'\'' | sort -u > $export_symbols'
    else
      _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM -BCpg $libobjs $convenience | awk '\''{ if (((\[$]2 == "T") || (\[$]2 == "D") || (\[$]2 == "B")) && ([substr](\[$]3,1,1) != ".")) { print \[$]3 } }'\'' | sort -u > $export_symbols'
    fi
    ;;
  pw32*)
    _LT_AC_TAGVAR(export_symbols_cmds, $1)="$ltdll_cmds"
  ;;
  cygwin* | mingw*)
    _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM $libobjs $convenience | $global_symbol_pipe | $SED -e '\''/^[[BCDGS]] /s/.* \([[^ ]]*\)/\1 DATA/'\'' | $SED -e '\''/^[[AITW]] /s/.* //'\'' | sort | uniq > $export_symbols'
  ;;
  linux*)
    _LT_AC_TAGVAR(link_all_deplibs, $1)=no
  ;;
  *)
    _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM $libobjs $convenience | $global_symbol_pipe | $SED '\''s/.* //'\'' | sort | uniq > $export_symbols'
  ;;
  esac
],[
  runpath_var=
  _LT_AC_TAGVAR(allow_undefined_flag, $1)=
  _LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)=no
  _LT_AC_TAGVAR(archive_cmds, $1)=
  _LT_AC_TAGVAR(archive_expsym_cmds, $1)=
  _LT_AC_TAGVAR(old_archive_From_new_cmds, $1)=
  _LT_AC_TAGVAR(old_archive_from_expsyms_cmds, $1)=
  _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)=
  _LT_AC_TAGVAR(whole_archive_flag_spec, $1)=
  _LT_AC_TAGVAR(thread_safe_flag_spec, $1)=
  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)=
  _LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)=
  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=
  _LT_AC_TAGVAR(hardcode_direct, $1)=no
  _LT_AC_TAGVAR(hardcode_minus_L, $1)=no
  _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=unsupported
  _LT_AC_TAGVAR(link_all_deplibs, $1)=unknown
  _LT_AC_TAGVAR(hardcode_automatic, $1)=no
  _LT_AC_TAGVAR(module_cmds, $1)=
  _LT_AC_TAGVAR(module_expsym_cmds, $1)=
  _LT_AC_TAGVAR(always_export_symbols, $1)=no
  _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM $libobjs $convenience | $global_symbol_pipe | $SED '\''s/.* //'\'' | sort | uniq > $export_symbols'
  # include_expsyms should be a list of space-separated symbols to be *always*
  # included in the symbol list
  _LT_AC_TAGVAR(include_expsyms, $1)=
  # exclude_expsyms can be an extended regexp of symbols to exclude
  # it will be wrapped by ` (' and `)$', so one must not match beginning or
  # end of line.  Example: `a|bc|.*d.*' will exclude the symbols `a' and `bc',
  # as well as any symbol that contains `d'.
  _LT_AC_TAGVAR(exclude_expsyms, $1)="_GLOBAL_OFFSET_TABLE_"
  # Although _GLOBAL_OFFSET_TABLE_ is a valid symbol C name, most a.out
  # platforms (ab)use it in PIC code, but their linkers get confused if
  # the symbol is explicitly referenced.  Since portable code cannot
  # rely on this symbol name, it's probably fine to never include it in
  # preloaded symbol tables.
  extract_expsyms_cmds=

  case $host_os in
  cygwin* | mingw* | pw32*)
    # FIXME: the MSVC++ port hasn't been tested in a loooong time
    # When not using gcc, we currently assume that we are using
    # Microsoft Visual C++.
    if test "$GCC" != yes; then
      with_gnu_ld=no
    fi
    ;;
  openbsd*)
    with_gnu_ld=no
    ;;
  esac

  _LT_AC_TAGVAR(ld_shlibs, $1)=yes
  if test "$with_gnu_ld" = yes; then
    # If archive_cmds runs LD, not CC, wlarc should be empty
    wlarc='${wl}'

    # See if GNU ld supports shared libraries.
    case $host_os in
    aix3* | aix4* | aix5*)
      # On AIX/PPC, the GNU linker is very broken
      if test "$host_cpu" != ia64; then
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	cat <<EOF 1>&2

*** Warning: the GNU linker, at least up to release 2.9.1, is reported
*** to be unable to reliably create shared libraries on AIX.
*** Therefore, libtool is disabling shared libraries support.  If you
*** really care for shared libraries, you may want to modify your PATH
*** so that a non-GNU linker is found, and then restart.

EOF
      fi
      ;;

    amigaos*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$rm $output_objdir/a2ixlibrary.data~$echo "#define NAME $libname" > $output_objdir/a2ixlibrary.data~$echo "#define LIBRARY_ID 1" >> $output_objdir/a2ixlibrary.data~$echo "#define VERSION $major" >> $output_objdir/a2ixlibrary.data~$echo "#define REVISION $revision" >> $output_objdir/a2ixlibrary.data~$AR $AR_FLAGS $lib $libobjs~$RANLIB $lib~(cd $output_objdir && a2ixlibrary -32)'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes

      # Samuel A. Falvo II <kc5tja@dolphin.openprojects.net> reports
      # that the semantics of dynamic libraries on AmigaOS, at least up
      # to version 4, is to share data among multiple programs linked
      # with the same dynamic library.  Since this doesn't match the
      # behavior of shared libraries on other platforms, we can't use
      # them.
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
      ;;

    beos*)
      if $LD --help 2>&1 | grep ': supported targets:.* elf' > /dev/null; then
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=unsupported
	# Joseph Beckenbach <jrb3@best.com> says some releases of gcc
	# support --undefined.  This deserves some investigation.  FIXME
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -nostart $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
      else
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
      fi
      ;;

    cygwin* | mingw* | pw32*)
      # _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1) is actually meaningless,
      # as there is no search path for DLLs.
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(allow_undefined_flag, $1)=unsupported
      _LT_AC_TAGVAR(always_export_symbols, $1)=no
      _LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)=yes
      _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM $libobjs $convenience | $global_symbol_pipe | $SED -e '\''/^[[BCDGS]] /s/.* \([[^ ]]*\)/\1 DATA/'\'' | $SED -e '\''/^[[AITW]] /s/.* //'\'' | sort | uniq > $export_symbols'

      if $LD --help 2>&1 | grep 'auto-import' > /dev/null; then
        _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags -o $output_objdir/$soname ${wl}--image-base=0x10000000 ${wl}--out-implib,$lib'
	# If the export-symbols file already is a .def file (1st line
	# is EXPORTS), use it as is; otherwise, prepend...
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='if test "x`$SED 1q $export_symbols`" = xEXPORTS; then
	  cp $export_symbols $output_objdir/$soname.def;
	else
	  echo EXPORTS > $output_objdir/$soname.def;
	  cat $export_symbols >> $output_objdir/$soname.def;
	fi~
	$CC -shared $output_objdir/$soname.def $libobjs $deplibs $compiler_flags -o $output_objdir/$soname ${wl}--image-base=0x10000000  ${wl}--out-implib,$lib'
      else
	ld_shlibs=no
      fi
      ;;

    netbsd* | netbsdelf*-gnu | knetbsd*-gnu)
      if echo __ELF__ | $CC -E - | grep __ELF__ >/dev/null; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -Bshareable $libobjs $deplibs $linker_flags -o $lib'
	wlarc=
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'
      fi
      ;;

    solaris* | sysv5*)
      if $LD -v 2>&1 | grep 'BFD 2\.8' > /dev/null; then
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	cat <<EOF 1>&2

*** Warning: The releases 2.8.* of the GNU linker cannot reliably
*** create shared libraries on Solaris systems.  Therefore, libtool
*** is disabling shared libraries support.  We urge you to upgrade GNU
*** binutils to release 2.9.1 or newer.  Another option is to modify
*** your PATH or compiler configuration so that the native linker is
*** used, and then restart.

EOF
      elif $LD --help 2>&1 | grep ': supported targets:.* elf' > /dev/null; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'
      else
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
      fi
      ;;

    sunos4*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -assert pure-text -Bshareable -o $lib $libobjs $deplibs $linker_flags'
      wlarc=
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

  linux*)
    if $LD --help 2>&1 | grep ': supported targets:.* elf' > /dev/null; then
        tmp_archive_cmds='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
	_LT_AC_TAGVAR(archive_cmds, $1)="$tmp_archive_cmds"
      supports_anon_versioning=no
      case `$LD -v 2>/dev/null` in
        *\ [01].* | *\ 2.[[0-9]].* | *\ 2.10.*) ;; # catch versions < 2.11
        *\ 2.11.93.0.2\ *) supports_anon_versioning=yes ;; # RH7.3 ...
        *\ 2.11.92.0.12\ *) supports_anon_versioning=yes ;; # Mandrake 8.2 ...
        *\ 2.11.*) ;; # other 2.11 versions
        *) supports_anon_versioning=yes ;;
      esac
      if test $supports_anon_versioning = yes; then
        _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $output_objdir/$libname.ver~
cat $export_symbols | sed -e "s/\(.*\)/\1;/" >> $output_objdir/$libname.ver~
$echo "local: *; };" >> $output_objdir/$libname.ver~
        $CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname ${wl}-version-script ${wl}$output_objdir/$libname.ver -o $lib'
      else
        _LT_AC_TAGVAR(archive_expsym_cmds, $1)="$tmp_archive_cmds"
      fi
      _LT_AC_TAGVAR(link_all_deplibs, $1)=no
    else
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
    fi
    ;;

    *)
      if $LD --help 2>&1 | grep ': supported targets:.* elf' > /dev/null; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'
      else
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
      fi
      ;;
    esac

    if test "$_LT_AC_TAGVAR(ld_shlibs, $1)" = yes; then
      runpath_var=LD_RUN_PATH
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}--rpath ${wl}$libdir'
      _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}--export-dynamic'
      # ancient GNU ld didn't support --whole-archive et. al.
      if $LD --help 2>&1 | grep 'no-whole-archive' > /dev/null; then
 	_LT_AC_TAGVAR(whole_archive_flag_spec, $1)="$wlarc"'--whole-archive$convenience '"$wlarc"'--no-whole-archive'
      else
  	_LT_AC_TAGVAR(whole_archive_flag_spec, $1)=
      fi
    fi
  else
    # PORTME fill in a description of your system's linker (not GNU ld)
    case $host_os in
    aix3*)
      _LT_AC_TAGVAR(allow_undefined_flag, $1)=unsupported
      _LT_AC_TAGVAR(always_export_symbols, $1)=yes
      _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$LD -o $output_objdir/$soname $libobjs $deplibs $linker_flags -bE:$export_symbols -T512 -H512 -bM:SRE~$AR $AR_FLAGS $lib $output_objdir/$soname'
      # Note: this linker hardcodes the directories in LIBPATH if there
      # are no directories specified by -L.
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
      if test "$GCC" = yes && test -z "$link_static_flag"; then
	# Neither direct hardcoding nor static linking is supported with a
	# broken collect2.
	_LT_AC_TAGVAR(hardcode_direct, $1)=unsupported
      fi
      ;;

    aix4* | aix5*)
      if test "$host_cpu" = ia64; then
	# On IA64, the linker does run time linking by default, so we don't
	# have to do anything special.
	aix_use_runtimelinking=no
	exp_sym_flag='-Bexport'
	no_entry_flag=""
      else
	# If we're using GNU nm, then we don't want the "-C" option.
	# -C means demangle to AIX nm, but means don't demangle with GNU nm
	if $NM -V 2>&1 | grep 'GNU' > /dev/null; then
	  _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM -Bpg $libobjs $convenience | awk '\''{ if (((\[$]2 == "T") || (\[$]2 == "D") || (\[$]2 == "B")) && ([substr](\[$]3,1,1) != ".")) { print \[$]3 } }'\'' | sort -u > $export_symbols'
	else
	  _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM -BCpg $libobjs $convenience | awk '\''{ if (((\[$]2 == "T") || (\[$]2 == "D") || (\[$]2 == "B")) && ([substr](\[$]3,1,1) != ".")) { print \[$]3 } }'\'' | sort -u > $export_symbols'
	fi
	aix_use_runtimelinking=no

	# Test if we are trying to use run time linking or normal
	# AIX style linking. If -brtl is somewhere in LDFLAGS, we
	# need to do runtime linking.
	case $host_os in aix4.[[23]]|aix4.[[23]].*|aix5*)
	  for ld_flag in $LDFLAGS; do
  	  if (test $ld_flag = "-brtl" || test $ld_flag = "-Wl,-brtl"); then
  	    aix_use_runtimelinking=yes
  	    break
  	  fi
	  done
	esac

	exp_sym_flag='-bexport'
	no_entry_flag='-bnoentry'
      fi

      # When large executables or shared objects are built, AIX ld can
      # have problems creating the table of contents.  If linking a library
      # or program results in "error TOC overflow" add -mminimal-toc to
      # CXXFLAGS/CFLAGS for g++/gcc.  In the cases where that is not
      # enough to fix the problem, add -Wl,-bbigtoc to LDFLAGS.

      _LT_AC_TAGVAR(archive_cmds, $1)=''
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=':'
      _LT_AC_TAGVAR(link_all_deplibs, $1)=yes

      if test "$GCC" = yes; then
	case $host_os in aix4.[012]|aix4.[012].*)
	# We only want to do this on AIX 4.2 and lower, the check
	# below for broken collect2 doesn't work under 4.3+
	  collect2name=`${CC} -print-prog-name=collect2`
	  if test -f "$collect2name" && \
  	   strings "$collect2name" | grep resolve_lib_name >/dev/null
	  then
  	  # We have reworked collect2
  	  _LT_AC_TAGVAR(hardcode_direct, $1)=yes
	  else
  	  # We have old collect2
  	  _LT_AC_TAGVAR(hardcode_direct, $1)=unsupported
  	  # It fails to find uninstalled libraries when the uninstalled
  	  # path is not listed in the libpath.  Setting hardcode_minus_L
  	  # to unsupported forces relinking
  	  _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
  	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
  	  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=
	  fi
	esac
	shared_flag='-shared'
      else
	# not using gcc
	if test "$host_cpu" = ia64; then
  	# VisualAge C++, Version 5.5 for AIX 5L for IA-64, Beta 3 Release
  	# chokes on -Wl,-G. The following line is correct:
	  shared_flag='-G'
	else
  	if test "$aix_use_runtimelinking" = yes; then
	    shared_flag='${wl}-G'
	  else
	    shared_flag='${wl}-bM:SRE'
  	fi
	fi
      fi

      # It seems that -bexpall does not export symbols beginning with
      # underscore (_), so it is better to generate a list of symbols to export.
      _LT_AC_TAGVAR(always_export_symbols, $1)=yes
      if test "$aix_use_runtimelinking" = yes; then
	# Warning - without using the other runtime loading flags (-brtl),
	# -berok will link without error, but may produce a broken library.
	_LT_AC_TAGVAR(allow_undefined_flag, $1)='-berok'
       # Determine the default libpath from the value encoded in an empty executable.
       _LT_AC_SYS_LIBPATH_AIX
       _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-blibpath:$libdir:'"$aix_libpath"
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)="\$CC"' -o $output_objdir/$soname $libobjs $deplibs $compiler_flags `if test "x${allow_undefined_flag}" != "x"; then echo "${wl}${allow_undefined_flag}"; else :; fi` '"\${wl}$no_entry_flag \${wl}$exp_sym_flag:\$export_symbols $shared_flag"
       else
	if test "$host_cpu" = ia64; then
	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-R $libdir:/usr/lib:/lib'
	  _LT_AC_TAGVAR(allow_undefined_flag, $1)="-z nodefs"
	  _LT_AC_TAGVAR(archive_expsym_cmds, $1)="\$CC $shared_flag"' -o $output_objdir/$soname $libobjs $deplibs $compiler_flags ${wl}${allow_undefined_flag} '"\${wl}$no_entry_flag \${wl}$exp_sym_flag:\$export_symbols"
	else
	 # Determine the default libpath from the value encoded in an empty executable.
	 _LT_AC_SYS_LIBPATH_AIX
	 _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-blibpath:$libdir:'"$aix_libpath"
	  # Warning - without using the other run time loading flags,
	  # -berok will link without error, but may produce a broken library.
	  _LT_AC_TAGVAR(no_undefined_flag, $1)=' ${wl}-bernotok'
	  _LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-berok'
	  # -bexpall does not export symbols beginning with underscore (_)
	  _LT_AC_TAGVAR(always_export_symbols, $1)=yes
	  # Exported symbols can be pulled into shared objects from archives
	  _LT_AC_TAGVAR(whole_archive_flag_spec, $1)=' '
	  _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=yes
	  # This is similar to how AIX traditionally builds it's shared libraries.
	  _LT_AC_TAGVAR(archive_expsym_cmds, $1)="\$CC $shared_flag"' -o $output_objdir/$soname $libobjs $deplibs $compiler_flags ${wl}-bE:$export_symbols ${wl}-bnoentry${allow_undefined_flag}~$AR $AR_FLAGS $output_objdir/$libname$release.a $output_objdir/$soname'
	fi
      fi
      ;;

    amigaos*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$rm $output_objdir/a2ixlibrary.data~$echo "#define NAME $libname" > $output_objdir/a2ixlibrary.data~$echo "#define LIBRARY_ID 1" >> $output_objdir/a2ixlibrary.data~$echo "#define VERSION $major" >> $output_objdir/a2ixlibrary.data~$echo "#define REVISION $revision" >> $output_objdir/a2ixlibrary.data~$AR $AR_FLAGS $lib $libobjs~$RANLIB $lib~(cd $output_objdir && a2ixlibrary -32)'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
      # see comment about different semantics on the GNU ld section
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
      ;;

    bsdi4*)
      _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)=-rdynamic
      ;;

    cygwin* | mingw* | pw32*)
      # When not using gcc, we currently assume that we are using
      # Microsoft Visual C++.
      # hardcode_libdir_flag_spec is actually meaningless, as there is
      # no search path for DLLs.
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)=' '
      _LT_AC_TAGVAR(allow_undefined_flag, $1)=unsupported
      # Tell ltmain to make .lib files, not .a files.
      libext=lib
      # Tell ltmain to make .dll files, not .so files.
      shrext_cmds=".dll"
      # FIXME: Setting linknames here is a bad hack.
      _LT_AC_TAGVAR(archive_cmds, $1)='$CC -o $lib $libobjs $compiler_flags `echo "$deplibs" | $SED -e '\''s/ -lc$//'\''` -link -dll~linknames='
      # The linker will automatically build a .lib file if we build a DLL.
      _LT_AC_TAGVAR(old_archive_From_new_cmds, $1)='true'
      # FIXME: Should let the user specify the lib program.
      _LT_AC_TAGVAR(old_archive_cmds, $1)='lib /OUT:$oldlib$oldobjs$old_deplibs'
      fix_srcfile_path='`cygpath -w "$srcfile"`'
      _LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)=yes
      ;;

    darwin* | rhapsody*)
    if test "$GXX" = yes ; then
      _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
      case "$host_os" in
      rhapsody* | darwin1.[[012]])
	_LT_AC_TAGVAR(allow_undefined_flag, $1)='-undefined suppress'
	;;
      *) # Darwin 1.3 on
      if test -z ${MACOSX_DEPLOYMENT_TARGET} ; then
      	_LT_AC_TAGVAR(allow_undefined_flag, $1)='-flat_namespace -undefined suppress'
      else
        case ${MACOSX_DEPLOYMENT_TARGET} in
          10.[[012]])
            _LT_AC_TAGVAR(allow_undefined_flag, $1)='-flat_namespace -undefined suppress'
            ;;
          10.*)
            _LT_AC_TAGVAR(allow_undefined_flag, $1)='-undefined dynamic_lookup'
            ;;
        esac
      fi
	;;
      esac
    	lt_int_apple_cc_single_mod=no
    	output_verbose_link_cmd='echo'
    	if $CC -dumpspecs 2>&1 | grep 'single_module' >/dev/null ; then
    	  lt_int_apple_cc_single_mod=yes
    	fi
    	if test "X$lt_int_apple_cc_single_mod" = Xyes ; then
    	  _LT_AC_TAGVAR(archive_cmds, $1)='$CC -dynamiclib -single_module $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags -install_name $rpath/$soname $verstring'
    	else
        _LT_AC_TAGVAR(archive_cmds, $1)='$CC -r ${wl}-bind_at_load -keep_private_externs -nostdlib -o ${lib}-master.o $libobjs~$CC -dynamiclib $allow_undefined_flag -o $lib ${lib}-master.o $deplibs $compiler_flags -install_name $rpath/$soname $verstring'
      fi
      _LT_AC_TAGVAR(module_cmds, $1)='$CC ${wl}-bind_at_load $allow_undefined_flag -o $lib -bundle $libobjs $deplibs$compiler_flags'
      # Don't fix this by using the ld -exported_symbols_list flag, it doesn't exist in older darwin ld's
        if test "X$lt_int_apple_cc_single_mod" = Xyes ; then
          _LT_AC_TAGVAR(archive_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC -dynamiclib -single_module $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags -install_name $rpath/$soname $verstring~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
        else
          _LT_AC_TAGVAR(archive_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC -r ${wl}-bind_at_load -keep_private_externs -nostdlib -o ${lib}-master.o $libobjs~$CC -dynamiclib $allow_undefined_flag -o $lib ${lib}-master.o $deplibs $compiler_flags -install_name $rpath/$soname $verstring~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
        fi
          _LT_AC_TAGVAR(module_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC $allow_undefined_flag  -o $lib -bundle $libobjs $deplibs$compiler_flags~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
      _LT_AC_TAGVAR(hardcode_direct, $1)=no
      _LT_AC_TAGVAR(hardcode_automatic, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=unsupported
      _LT_AC_TAGVAR(whole_archive_flag_spec, $1)='-all_load $convenience'
      _LT_AC_TAGVAR(link_all_deplibs, $1)=yes
    else
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
    fi
      ;;

    dgux*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    freebsd1*)
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
      ;;

    # FreeBSD 2.2.[012] allows us to include c++rt0.o to get C++ constructor
    # support.  Future versions do this automatically, but an explicit c++rt0.o
    # does not break anything, and helps significantly (at the cost of a little
    # extra space).
    freebsd2.2*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -Bshareable -o $lib $libobjs $deplibs $linker_flags /usr/lib/c++rt0.o'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    # Unfortunately, older versions of FreeBSD 2 do not have this feature.
    freebsd2*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -Bshareable -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    # FreeBSD 3 and greater uses gcc -shared to do shared libraries.
    freebsd* | kfreebsd*-gnu)
      _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -o $lib $libobjs $deplibs $compiler_flags'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    hpux9*)
      if test "$GCC" = yes; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$rm $output_objdir/$soname~$CC -shared -fPIC ${wl}+b ${wl}$install_libdir -o $output_objdir/$soname $libobjs $deplibs $compiler_flags~test $output_objdir/$soname = $lib || mv $output_objdir/$soname $lib'
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$rm $output_objdir/$soname~$LD -b +b $install_libdir -o $output_objdir/$soname $libobjs $deplibs $linker_flags~test $output_objdir/$soname = $lib || mv $output_objdir/$soname $lib'
      fi
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}+b ${wl}$libdir'
      _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes

      # hardcode_minus_L: Not really in the search PATH,
      # but as the default location of the library.
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
      _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'
      ;;

    hpux10* | hpux11*)
      if test "$GCC" = yes -a "$with_gnu_ld" = no; then
	case "$host_cpu" in
	hppa*64*|ia64*)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared ${wl}+h ${wl}$soname -o $lib $libobjs $deplibs $compiler_flags'
	  ;;
	*)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -fPIC ${wl}+h ${wl}$soname ${wl}+b ${wl}$install_libdir -o $lib $libobjs $deplibs $compiler_flags'
	  ;;
	esac
      else
	case "$host_cpu" in
	hppa*64*|ia64*)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$LD -b +h $soname -o $lib $libobjs $deplibs $linker_flags'
	  ;;
	*)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$LD -b +h $soname +b $install_libdir -o $lib $libobjs $deplibs $linker_flags'
	  ;;
	esac
      fi
      if test "$with_gnu_ld" = no; then
	case "$host_cpu" in
	hppa*64*)
	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}+b ${wl}$libdir'
	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)='+b $libdir'
	  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
	  _LT_AC_TAGVAR(hardcode_direct, $1)=no
	  _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
	  ;;
	ia64*)
	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
	  _LT_AC_TAGVAR(hardcode_direct, $1)=no
	  _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no

	  # hardcode_minus_L: Not really in the search PATH,
	  # but as the default location of the library.
	  _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
	  ;;
	*)
	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}+b ${wl}$libdir'
	  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
	  _LT_AC_TAGVAR(hardcode_direct, $1)=yes
	  _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'

	  # hardcode_minus_L: Not really in the search PATH,
	  # but as the default location of the library.
	  _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
	  ;;
	esac
      fi
      ;;

    irix5* | irix6* | nonstopux*)
      if test "$GCC" = yes; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${output_objdir}/so_locations -o $lib'
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -shared $libobjs $deplibs $linker_flags -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${output_objdir}/so_locations -o $lib'
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)='-rpath $libdir'
      fi
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
      _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
      _LT_AC_TAGVAR(link_all_deplibs, $1)=yes
      ;;

    netbsd* | netbsdelf*-gnu | knetbsd*-gnu)
      if echo __ELF__ | $CC -E - | grep __ELF__ >/dev/null; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -Bshareable -o $lib $libobjs $deplibs $linker_flags'  # a.out
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -shared -o $lib $libobjs $deplibs $linker_flags'      # ELF
      fi
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    newsos6)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
      _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    openbsd*)
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      if test -z "`echo __ELF__ | $CC -E - | grep __ELF__`" || test "$host_os-$host_cpu" = "openbsd2.8-powerpc"; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $pic_flag -o $lib $libobjs $deplibs $compiler_flags'
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
	_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'
      else
       case $host_os in
	 openbsd[[01]].* | openbsd2.[[0-7]] | openbsd2.[[0-7]].*)
	   _LT_AC_TAGVAR(archive_cmds, $1)='$LD -Bshareable -o $lib $libobjs $deplibs $linker_flags'
	   _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
	   ;;
	 *)
	   _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $pic_flag -o $lib $libobjs $deplibs $compiler_flags'
	   _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
	   ;;
       esac
      fi
      ;;

    os2*)
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
      _LT_AC_TAGVAR(allow_undefined_flag, $1)=unsupported
      _LT_AC_TAGVAR(archive_cmds, $1)='$echo "LIBRARY $libname INITINSTANCE" > $output_objdir/$libname.def~$echo "DESCRIPTION \"$libname\"" >> $output_objdir/$libname.def~$echo DATA >> $output_objdir/$libname.def~$echo " SINGLE NONSHARED" >> $output_objdir/$libname.def~$echo EXPORTS >> $output_objdir/$libname.def~emxexp $libobjs >> $output_objdir/$libname.def~$CC -Zdll -Zcrtdll -o $lib $libobjs $deplibs $compiler_flags $output_objdir/$libname.def'
      _LT_AC_TAGVAR(old_archive_From_new_cmds, $1)='emximp -o $output_objdir/$libname.a $output_objdir/$libname.def'
      ;;

    osf3*)
      if test "$GCC" = yes; then
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-expect_unresolved ${wl}\*'
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared${allow_undefined_flag} $libobjs $deplibs $compiler_flags ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${output_objdir}/so_locations -o $lib'
      else
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' -expect_unresolved \*'
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -shared${allow_undefined_flag} $libobjs $deplibs $linker_flags -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${output_objdir}/so_locations -o $lib'
      fi
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
      _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
      ;;

    osf4* | osf5*)	# as osf3* with the addition of -msym flag
      if test "$GCC" = yes; then
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-expect_unresolved ${wl}\*'
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared${allow_undefined_flag} $libobjs $deplibs $compiler_flags ${wl}-msym ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${output_objdir}/so_locations -o $lib'
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
      else
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' -expect_unresolved \*'
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -shared${allow_undefined_flag} $libobjs $deplibs $linker_flags -msym -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${output_objdir}/so_locations -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='for i in `cat $export_symbols`; do printf "%s %s\\n" -exported_symbol "\$i" >> $lib.exp; done; echo "-hidden">> $lib.exp~
	$LD -shared${allow_undefined_flag} -input $lib.exp $linker_flags $libobjs $deplibs -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${objdir}/so_locations -o $lib~$rm $lib.exp'

	# Both c and cxx compiler support -rpath directly
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-rpath $libdir'
      fi
      _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
      ;;

    sco3.2v5*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-Bexport'
      runpath_var=LD_RUN_PATH
      hardcode_runpath_var=yes
      ;;

    solaris*)
      _LT_AC_TAGVAR(no_undefined_flag, $1)=' -z text'
      if test "$GCC" = yes; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared ${wl}-h ${wl}$soname -o $lib $libobjs $deplibs $compiler_flags'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $lib.exp~cat $export_symbols | $SED -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
	  $CC -shared ${wl}-M ${wl}$lib.exp ${wl}-h ${wl}$soname -o $lib $libobjs $deplibs $compiler_flags~$rm $lib.exp'
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -G${allow_undefined_flag} -h $soname -o $lib $libobjs $deplibs $linker_flags'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $lib.exp~cat $export_symbols | $SED -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
  	$LD -G${allow_undefined_flag} -M $lib.exp -h $soname -o $lib $libobjs $deplibs $linker_flags~$rm $lib.exp'
      fi
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      case $host_os in
      solaris2.[[0-5]] | solaris2.[[0-5]].*) ;;
      *) # Supported since Solaris 2.6 (maybe 2.5.1?)
	_LT_AC_TAGVAR(whole_archive_flag_spec, $1)='-z allextract$convenience -z defaultextract' ;;
      esac
      _LT_AC_TAGVAR(link_all_deplibs, $1)=yes
      ;;

    sunos4*)
      if test "x$host_vendor" = xsequent; then
	# Use $CC to link under sequent, because it throws in some extra .o
	# files that make .init and .fini sections work.
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -G ${wl}-h $soname -o $lib $libobjs $deplibs $compiler_flags'
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -assert pure-text -Bstatic -o $lib $libobjs $deplibs $linker_flags'
      fi
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    sysv4)
      case $host_vendor in
	sni)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
	  _LT_AC_TAGVAR(hardcode_direct, $1)=yes # is this really true???
	;;
	siemens)
	  ## LD is ld it makes a PLAMLIB
	  ## CC just makes a GrossModule.
	  _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -o $lib $libobjs $deplibs $linker_flags'
	  _LT_AC_TAGVAR(reload_cmds, $1)='$CC -r -o $output$reload_objs'
	  _LT_AC_TAGVAR(hardcode_direct, $1)=no
        ;;
	motorola)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
	  _LT_AC_TAGVAR(hardcode_direct, $1)=no #Motorola manual says yes, but my tests say they lie
	;;
      esac
      runpath_var='LD_RUN_PATH'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    sysv4.3*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='-Bexport'
      ;;

    sysv4*MP*)
      if test -d /usr/nec; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
	_LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
	runpath_var=LD_RUN_PATH
	hardcode_runpath_var=yes
	_LT_AC_TAGVAR(ld_shlibs, $1)=yes
      fi
      ;;

    sysv4.2uw2*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=no
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      hardcode_runpath_var=yes
      runpath_var=LD_RUN_PATH
      ;;

   sysv5OpenUNIX8* | sysv5UnixWare7* |  sysv5uw[[78]]* | unixware7*)
      _LT_AC_TAGVAR(no_undefined_flag, $1)='${wl}-z ${wl}text'
      if test "$GCC" = yes; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared ${wl}-h ${wl}$soname -o $lib $libobjs $deplibs $compiler_flags'
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -G ${wl}-h ${wl}$soname -o $lib $libobjs $deplibs $compiler_flags'
      fi
      runpath_var='LD_RUN_PATH'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    sysv5*)
      _LT_AC_TAGVAR(no_undefined_flag, $1)=' -z text'
      # $CC -shared without GNU ld will not create a library from C++
      # object files and a static libstdc++, better avoid it by now
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G${allow_undefined_flag} -h $soname -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $lib.exp~cat $export_symbols | $SED -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
  		$LD -G${allow_undefined_flag} -M $lib.exp -h $soname -o $lib $libobjs $deplibs $linker_flags~$rm $lib.exp'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)=
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      runpath_var='LD_RUN_PATH'
      ;;

    uts4*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    *)
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
      ;;
    esac
  fi
])
AC_MSG_RESULT([$_LT_AC_TAGVAR(ld_shlibs, $1)])
test "$_LT_AC_TAGVAR(ld_shlibs, $1)" = no && can_build_shared=no

variables_saved_for_relink="PATH $shlibpath_var $runpath_var"
if test "$GCC" = yes; then
  variables_saved_for_relink="$variables_saved_for_relink GCC_EXEC_PREFIX COMPILER_PATH LIBRARY_PATH"
fi

#
# Do we need to explicitly link libc?
#
case "x$_LT_AC_TAGVAR(archive_cmds_need_lc, $1)" in
x|xyes)
  # Assume -lc should be added
  _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=yes

  if test "$enable_shared" = yes && test "$GCC" = yes; then
    case $_LT_AC_TAGVAR(archive_cmds, $1) in
    *'~'*)
      # FIXME: we may have to deal with multi-command sequences.
      ;;
    '$CC '*)
      # Test whether the compiler implicitly links with -lc since on some
      # systems, -lgcc has to come before -lc. If gcc already passes -lc
      # to ld, don't add -lc before -lgcc.
      AC_MSG_CHECKING([whether -lc should be explicitly linked in])
      $rm conftest*
      printf "$lt_simple_compile_test_code" > conftest.$ac_ext

      if AC_TRY_EVAL(ac_compile) 2>conftest.err; then
        soname=conftest
        lib=conftest
        libobjs=conftest.$ac_objext
        deplibs=
        wl=$_LT_AC_TAGVAR(lt_prog_compiler_wl, $1)
        compiler_flags=-v
        linker_flags=-v
        verstring=
        output_objdir=.
        libname=conftest
        lt_save_allow_undefined_flag=$_LT_AC_TAGVAR(allow_undefined_flag, $1)
        _LT_AC_TAGVAR(allow_undefined_flag, $1)=
        if AC_TRY_EVAL(_LT_AC_TAGVAR(archive_cmds, $1) 2\>\&1 \| grep \" -lc \" \>/dev/null 2\>\&1)
        then
	  _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
        else
	  _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=yes
        fi
        _LT_AC_TAGVAR(allow_undefined_flag, $1)=$lt_save_allow_undefined_flag
      else
        cat conftest.err 1>&5
      fi
      $rm conftest*
      AC_MSG_RESULT([$_LT_AC_TAGVAR(archive_cmds_need_lc, $1)])
      ;;
    esac
  fi
  ;;
esac
])# AC_LIBTOOL_PROG_LD_SHLIBS


# _LT_AC_FILE_LTDLL_C
# -------------------
# Be careful that the start marker always follows a newline.
AC_DEFUN([_LT_AC_FILE_LTDLL_C], [
# /* ltdll.c starts here */
# #define WIN32_LEAN_AND_MEAN
# #include <windows.h>
# #undef WIN32_LEAN_AND_MEAN
# #include <stdio.h>
#
# #ifndef __CYGWIN__
# #  ifdef __CYGWIN32__
# #    define __CYGWIN__ __CYGWIN32__
# #  endif
# #endif
#
# #ifdef __cplusplus
# extern "C" {
# #endif
# BOOL APIENTRY DllMain (HINSTANCE hInst, DWORD reason, LPVOID reserved);
# #ifdef __cplusplus
# }
# #endif
#
# #ifdef __CYGWIN__
# #include <cygwin/cygwin_dll.h>
# DECLARE_CYGWIN_DLL( DllMain );
# #endif
# HINSTANCE __hDllInstance_base;
#
# BOOL APIENTRY
# DllMain (HINSTANCE hInst, DWORD reason, LPVOID reserved)
# {
#   __hDllInstance_base = hInst;
#   return TRUE;
# }
# /* ltdll.c ends here */
])# _LT_AC_FILE_LTDLL_C


# _LT_AC_TAGVAR(VARNAME, [TAGNAME])
# ---------------------------------
AC_DEFUN([_LT_AC_TAGVAR], [ifelse([$2], [], [$1], [$1_$2])])


# old names
AC_DEFUN([AM_PROG_LIBTOOL],   [AC_PROG_LIBTOOL])
AC_DEFUN([AM_ENABLE_SHARED],  [AC_ENABLE_SHARED($@)])
AC_DEFUN([AM_ENABLE_STATIC],  [AC_ENABLE_STATIC($@)])
AC_DEFUN([AM_DISABLE_SHARED], [AC_DISABLE_SHARED($@)])
AC_DEFUN([AM_DISABLE_STATIC], [AC_DISABLE_STATIC($@)])
AC_DEFUN([AM_PROG_LD],        [AC_PROG_LD])
AC_DEFUN([AM_PROG_NM],        [AC_PROG_NM])

# This is just to silence aclocal about the macro not being used
ifelse([AC_DISABLE_FAST_INSTALL])

AC_DEFUN([LT_AC_PROG_GCJ],
[AC_CHECK_TOOL(GCJ, gcj, no)
  test "x${GCJFLAGS+set}" = xset || GCJFLAGS="-g -O2"
  AC_SUBST(GCJFLAGS)
])

AC_DEFUN([LT_AC_PROG_RC],
[AC_CHECK_TOOL(RC, windres, no)
])

# NOTE: This macro has been submitted for inclusion into   #
#  GNU Autoconf as AC_PROG_SED.  When it is available in   #
#  a released version of Autoconf we should remove this    #
#  macro and use it instead.                               #
# LT_AC_PROG_SED
# --------------
# Check for a fully-functional sed program, that truncates
# as few characters as possible.  Prefer GNU sed if found.
AC_DEFUN([LT_AC_PROG_SED],
[AC_MSG_CHECKING([for a sed that does not truncate output])
AC_CACHE_VAL(lt_cv_path_SED,
[# Loop through the user's path and test for sed and gsed.
# Then use that list of sed's as ones to test for truncation.
as_save_IFS=$IFS; IFS=$PATH_SEPARATOR
for as_dir in $PATH
do
  IFS=$as_save_IFS
  test -z "$as_dir" && as_dir=.
  for lt_ac_prog in sed gsed; do
    for ac_exec_ext in '' $ac_executable_extensions; do
      if $as_executable_p "$as_dir/$lt_ac_prog$ac_exec_ext"; then
        lt_ac_sed_list="$lt_ac_sed_list $as_dir/$lt_ac_prog$ac_exec_ext"
      fi
    done
  done
done
lt_ac_max=0
lt_ac_count=0
# Add /usr/xpg4/bin/sed as it is typically found on Solaris
# along with /bin/sed that truncates output.
for lt_ac_sed in $lt_ac_sed_list /usr/xpg4/bin/sed; do
  test ! -f $lt_ac_sed && break
  cat /dev/null > conftest.in
  lt_ac_count=0
  echo $ECHO_N "0123456789$ECHO_C" >conftest.in
  # Check for GNU sed and select it if it is found.
  if "$lt_ac_sed" --version 2>&1 < /dev/null | grep 'GNU' > /dev/null; then
    lt_cv_path_SED=$lt_ac_sed
    break
  fi
  while true; do
    cat conftest.in conftest.in >conftest.tmp
    mv conftest.tmp conftest.in
    cp conftest.in conftest.nl
    echo >>conftest.nl
    $lt_ac_sed -e 's/a$//' < conftest.nl >conftest.out || break
    cmp -s conftest.out conftest.nl || break
    # 10000 chars as input seems more than enough
    test $lt_ac_count -gt 10 && break
    lt_ac_count=`expr $lt_ac_count + 1`
    if test $lt_ac_count -gt $lt_ac_max; then
      lt_ac_max=$lt_ac_count
      lt_cv_path_SED=$lt_ac_sed
    fi
  done
done
SED=$lt_cv_path_SED
])
AC_MSG_RESULT([$SED])
])

# Do all the work for Automake.                            -*- Autoconf -*-

# This macro actually does too much some checks are only needed if
# your package does certain things.  But this isn't really a big deal.

# Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003
# Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

# serial 10

AC_PREREQ([2.54])

# Autoconf 2.50 wants to disallow AM_ names.  We explicitly allow
# the ones we care about.
m4_pattern_allow([^AM_[A-Z]+FLAGS$])dnl

# AM_INIT_AUTOMAKE(PACKAGE, VERSION, [NO-DEFINE])
# AM_INIT_AUTOMAKE([OPTIONS])
# -----------------------------------------------
# The call with PACKAGE and VERSION arguments is the old style
# call (pre autoconf-2.50), which is being phased out.  PACKAGE
# and VERSION should now be passed to AC_INIT and removed from
# the call to AM_INIT_AUTOMAKE.
# We support both call styles for the transition.  After
# the next Automake release, Autoconf can make the AC_INIT
# arguments mandatory, and then we can depend on a new Autoconf
# release and drop the old call support.
AC_DEFUN([AM_INIT_AUTOMAKE],
[AC_REQUIRE([AM_SET_CURRENT_AUTOMAKE_VERSION])dnl
 AC_REQUIRE([AC_PROG_INSTALL])dnl
# test to see if srcdir already configured
if test "`cd $srcdir && pwd`" != "`pwd`" &&
   test -f $srcdir/config.status; then
  AC_MSG_ERROR([source directory already configured; run "make distclean" there first])
fi

# test whether we have cygpath
if test -z "$CYGPATH_W"; then
  if (cygpath --version) >/dev/null 2>/dev/null; then
    CYGPATH_W='cygpath -w'
  else
    CYGPATH_W=echo
  fi
fi
AC_SUBST([CYGPATH_W])

# Define the identity of the package.
dnl Distinguish between old-style and new-style calls.
m4_ifval([$2],
[m4_ifval([$3], [_AM_SET_OPTION([no-define])])dnl
 AC_SUBST([PACKAGE], [$1])dnl
 AC_SUBST([VERSION], [$2])],
[_AM_SET_OPTIONS([$1])dnl
 AC_SUBST([PACKAGE], ['AC_PACKAGE_TARNAME'])dnl
 AC_SUBST([VERSION], ['AC_PACKAGE_VERSION'])])dnl

_AM_IF_OPTION([no-define],,
[AC_DEFINE_UNQUOTED(PACKAGE, "$PACKAGE", [Name of package])
 AC_DEFINE_UNQUOTED(VERSION, "$VERSION", [Version number of package])])dnl

# Some tools Automake needs.
AC_REQUIRE([AM_SANITY_CHECK])dnl
AC_REQUIRE([AC_ARG_PROGRAM])dnl
AM_MISSING_PROG(ACLOCAL, aclocal-${am__api_version})
AM_MISSING_PROG(AUTOCONF, autoconf)
AM_MISSING_PROG(AUTOMAKE, automake-${am__api_version})
AM_MISSING_PROG(AUTOHEADER, autoheader)
AM_MISSING_PROG(MAKEINFO, makeinfo)
AM_MISSING_PROG(AMTAR, tar)
AM_PROG_INSTALL_SH
AM_PROG_INSTALL_STRIP
# We need awk for the "check" target.  The system "awk" is bad on
# some platforms.
AC_REQUIRE([AC_PROG_AWK])dnl
AC_REQUIRE([AC_PROG_MAKE_SET])dnl
AC_REQUIRE([AM_SET_LEADING_DOT])dnl

_AM_IF_OPTION([no-dependencies],,
[AC_PROVIDE_IFELSE([AC_PROG_CC],
                  [_AM_DEPENDENCIES(CC)],
                  [define([AC_PROG_CC],
                          defn([AC_PROG_CC])[_AM_DEPENDENCIES(CC)])])dnl
AC_PROVIDE_IFELSE([AC_PROG_CXX],
                  [_AM_DEPENDENCIES(CXX)],
                  [define([AC_PROG_CXX],
                          defn([AC_PROG_CXX])[_AM_DEPENDENCIES(CXX)])])dnl
])
])


# When config.status generates a header, we must update the stamp-h file.
# This file resides in the same directory as the config header
# that is generated.  The stamp files are numbered to have different names.

# Autoconf calls _AC_AM_CONFIG_HEADER_HOOK (when defined) in the
# loop where config.status creates the headers, so we can generate
# our stamp files there.
AC_DEFUN([_AC_AM_CONFIG_HEADER_HOOK],
[# Compute $1's index in $config_headers.
_am_stamp_count=1
for _am_header in $config_headers :; do
  case $_am_header in
    $1 | $1:* )
      break ;;
    * )
      _am_stamp_count=`expr $_am_stamp_count + 1` ;;
  esac
done
echo "timestamp for $1" >`AS_DIRNAME([$1])`/stamp-h[]$_am_stamp_count])

# Copyright 2002  Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA

# AM_AUTOMAKE_VERSION(VERSION)
# ----------------------------
# Automake X.Y traces this macro to ensure aclocal.m4 has been
# generated from the m4 files accompanying Automake X.Y.
AC_DEFUN([AM_AUTOMAKE_VERSION],[am__api_version="1.7"])

# AM_SET_CURRENT_AUTOMAKE_VERSION
# -------------------------------
# Call AM_AUTOMAKE_VERSION so it can be traced.
# This function is AC_REQUIREd by AC_INIT_AUTOMAKE.
AC_DEFUN([AM_SET_CURRENT_AUTOMAKE_VERSION],
	 [AM_AUTOMAKE_VERSION([1.7.9])])

# Helper functions for option handling.                    -*- Autoconf -*-

# Copyright 2001, 2002  Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

# serial 2

# _AM_MANGLE_OPTION(NAME)
# -----------------------
AC_DEFUN([_AM_MANGLE_OPTION],
[[_AM_OPTION_]m4_bpatsubst($1, [[^a-zA-Z0-9_]], [_])])

# _AM_SET_OPTION(NAME)
# ------------------------------
# Set option NAME.  Presently that only means defining a flag for this option.
AC_DEFUN([_AM_SET_OPTION],
[m4_define(_AM_MANGLE_OPTION([$1]), 1)])

# _AM_SET_OPTIONS(OPTIONS)
# ----------------------------------
# OPTIONS is a space-separated list of Automake options.
AC_DEFUN([_AM_SET_OPTIONS],
[AC_FOREACH([_AM_Option], [$1], [_AM_SET_OPTION(_AM_Option)])])

# _AM_IF_OPTION(OPTION, IF-SET, [IF-NOT-SET])
# -------------------------------------------
# Execute IF-SET if OPTION is set, IF-NOT-SET otherwise.
AC_DEFUN([_AM_IF_OPTION],
[m4_ifset(_AM_MANGLE_OPTION([$1]), [$2], [$3])])

#
# Check to make sure that the build environment is sane.
#

# Copyright 1996, 1997, 2000, 2001 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

# serial 3

# AM_SANITY_CHECK
# ---------------
AC_DEFUN([AM_SANITY_CHECK],
[AC_MSG_CHECKING([whether build environment is sane])
# Just in case
sleep 1
echo timestamp > conftest.file
# Do `set' in a subshell so we don't clobber the current shell's
# arguments.  Must try -L first in case configure is actually a
# symlink; some systems play weird games with the mod time of symlinks
# (eg FreeBSD returns the mod time of the symlink's containing
# directory).
if (
   set X `ls -Lt $srcdir/configure conftest.file 2> /dev/null`
   if test "$[*]" = "X"; then
      # -L didn't work.
      set X `ls -t $srcdir/configure conftest.file`
   fi
   rm -f conftest.file
   if test "$[*]" != "X $srcdir/configure conftest.file" \
      && test "$[*]" != "X conftest.file $srcdir/configure"; then

      # If neither matched, then we have a broken ls.  This can happen
      # if, for instance, CONFIG_SHELL is bash and it inherits a
      # broken ls alias from the environment.  This has actually
      # happened.  Such a system could not be considered "sane".
      AC_MSG_ERROR([ls -t appears to fail.  Make sure there is not a broken
alias in your environment])
   fi

   test "$[2]" = conftest.file
   )
then
   # Ok.
   :
else
   AC_MSG_ERROR([newly created file is older than distributed files!
Check your system clock])
fi
AC_MSG_RESULT(yes)])

#  -*- Autoconf -*-


# Copyright 1997, 1999, 2000, 2001 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

# serial 3

# AM_MISSING_PROG(NAME, PROGRAM)
# ------------------------------
AC_DEFUN([AM_MISSING_PROG],
[AC_REQUIRE([AM_MISSING_HAS_RUN])
$1=${$1-"${am_missing_run}$2"}
AC_SUBST($1)])


# AM_MISSING_HAS_RUN
# ------------------
# Define MISSING if not defined so far and test if it supports --run.
# If it does, set am_missing_run to use it, otherwise, to nothing.
AC_DEFUN([AM_MISSING_HAS_RUN],
[AC_REQUIRE([AM_AUX_DIR_EXPAND])dnl
test x"${MISSING+set}" = xset || MISSING="\${SHELL} $am_aux_dir/missing"
# Use eval to expand $SHELL
if eval "$MISSING --run true"; then
  am_missing_run="$MISSING --run "
else
  am_missing_run=
  AC_MSG_WARN([`missing' script is too old or missing])
fi
])

# AM_AUX_DIR_EXPAND

# Copyright 2001 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

# For projects using AC_CONFIG_AUX_DIR([foo]), Autoconf sets
# $ac_aux_dir to `$srcdir/foo'.  In other projects, it is set to
# `$srcdir', `$srcdir/..', or `$srcdir/../..'.
#
# Of course, Automake must honor this variable whenever it calls a
# tool from the auxiliary directory.  The problem is that $srcdir (and
# therefore $ac_aux_dir as well) can be either absolute or relative,
# depending on how configure is run.  This is pretty annoying, since
# it makes $ac_aux_dir quite unusable in subdirectories: in the top
# source directory, any form will work fine, but in subdirectories a
# relative path needs to be adjusted first.
#
# $ac_aux_dir/missing
#    fails when called from a subdirectory if $ac_aux_dir is relative
# $top_srcdir/$ac_aux_dir/missing
#    fails if $ac_aux_dir is absolute,
#    fails when called from a subdirectory in a VPATH build with
#          a relative $ac_aux_dir
#
# The reason of the latter failure is that $top_srcdir and $ac_aux_dir
# are both prefixed by $srcdir.  In an in-source build this is usually
# harmless because $srcdir is `.', but things will broke when you
# start a VPATH build or use an absolute $srcdir.
#
# So we could use something similar to $top_srcdir/$ac_aux_dir/missing,
# iff we strip the leading $srcdir from $ac_aux_dir.  That would be:
#   am_aux_dir='\$(top_srcdir)/'`expr "$ac_aux_dir" : "$srcdir//*\(.*\)"`
# and then we would define $MISSING as
#   MISSING="\${SHELL} $am_aux_dir/missing"
# This will work as long as MISSING is not called from configure, because
# unfortunately $(top_srcdir) has no meaning in configure.
# However there are other variables, like CC, which are often used in
# configure, and could therefore not use this "fixed" $ac_aux_dir.
#
# Another solution, used here, is to always expand $ac_aux_dir to an
# absolute PATH.  The drawback is that using absolute paths prevent a
# configured tree to be moved without reconfiguration.

# Rely on autoconf to set up CDPATH properly.
AC_PREREQ([2.50])

AC_DEFUN([AM_AUX_DIR_EXPAND], [
# expand $ac_aux_dir to an absolute path
am_aux_dir=`cd $ac_aux_dir && pwd`
])

# AM_PROG_INSTALL_SH
# ------------------
# Define $install_sh.

# Copyright 2001 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

AC_DEFUN([AM_PROG_INSTALL_SH],
[AC_REQUIRE([AM_AUX_DIR_EXPAND])dnl
install_sh=${install_sh-"$am_aux_dir/install-sh"}
AC_SUBST(install_sh)])

# AM_PROG_INSTALL_STRIP

# Copyright 2001 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

# One issue with vendor `install' (even GNU) is that you can't
# specify the program used to strip binaries.  This is especially
# annoying in cross-compiling environments, where the build's strip
# is unlikely to handle the host's binaries.
# Fortunately install-sh will honor a STRIPPROG variable, so we
# always use install-sh in `make install-strip', and initialize
# STRIPPROG with the value of the STRIP variable (set by the user).
AC_DEFUN([AM_PROG_INSTALL_STRIP],
[AC_REQUIRE([AM_PROG_INSTALL_SH])dnl
# Installed binaries are usually stripped using `strip' when the user
# run `make install-strip'.  However `strip' might not be the right
# tool to use in cross-compilation environments, therefore Automake
# will honor the `STRIP' environment variable to overrule this program.
dnl Don't test for $cross_compiling = yes, because it might be `maybe'.
if test "$cross_compiling" != no; then
  AC_CHECK_TOOL([STRIP], [strip], :)
fi
INSTALL_STRIP_PROGRAM="\${SHELL} \$(install_sh) -c -s"
AC_SUBST([INSTALL_STRIP_PROGRAM])])

#                                                          -*- Autoconf -*-
# Copyright (C) 2003  Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

# serial 1

# Check whether the underlying file-system supports filenames
# with a leading dot.  For instance MS-DOS doesn't.
AC_DEFUN([AM_SET_LEADING_DOT],
[rm -rf .tst 2>/dev/null
mkdir .tst 2>/dev/null
if test -d .tst; then
  am__leading_dot=.
else
  am__leading_dot=_
fi
rmdir .tst 2>/dev/null
AC_SUBST([am__leading_dot])])

# serial 5						-*- Autoconf -*-

# Copyright (C) 1999, 2000, 2001, 2002, 2003  Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.


# There are a few dirty hacks below to avoid letting `AC_PROG_CC' be
# written in clear, in which case automake, when reading aclocal.m4,
# will think it sees a *use*, and therefore will trigger all it's
# C support machinery.  Also note that it means that autoscan, seeing
# CC etc. in the Makefile, will ask for an AC_PROG_CC use...



# _AM_DEPENDENCIES(NAME)
# ----------------------
# See how the compiler implements dependency checking.
# NAME is "CC", "CXX", "GCJ", or "OBJC".
# We try a few techniques and use that to set a single cache variable.
#
# We don't AC_REQUIRE the corresponding AC_PROG_CC since the latter was
# modified to invoke _AM_DEPENDENCIES(CC); we would have a circular
# dependency, and given that the user is not expected to run this macro,
# just rely on AC_PROG_CC.
AC_DEFUN([_AM_DEPENDENCIES],
[AC_REQUIRE([AM_SET_DEPDIR])dnl
AC_REQUIRE([AM_OUTPUT_DEPENDENCY_COMMANDS])dnl
AC_REQUIRE([AM_MAKE_INCLUDE])dnl
AC_REQUIRE([AM_DEP_TRACK])dnl

ifelse([$1], CC,   [depcc="$CC"   am_compiler_list=],
       [$1], CXX,  [depcc="$CXX"  am_compiler_list=],
       [$1], OBJC, [depcc="$OBJC" am_compiler_list='gcc3 gcc'],
       [$1], GCJ,  [depcc="$GCJ"  am_compiler_list='gcc3 gcc'],
                   [depcc="$$1"   am_compiler_list=])

AC_CACHE_CHECK([dependency style of $depcc],
               [am_cv_$1_dependencies_compiler_type],
[if test -z "$AMDEP_TRUE" && test -f "$am_depcomp"; then
  # We make a subdir and do the tests there.  Otherwise we can end up
  # making bogus files that we don't know about and never remove.  For
  # instance it was reported that on HP-UX the gcc test will end up
  # making a dummy file named `D' -- because `-MD' means `put the output
  # in D'.
  mkdir conftest.dir
  # Copy depcomp to subdir because otherwise we won't find it if we're
  # using a relative directory.
  cp "$am_depcomp" conftest.dir
  cd conftest.dir
  # We will build objects and dependencies in a subdirectory because
  # it helps to detect inapplicable dependency modes.  For instance
  # both Tru64's cc and ICC support -MD to output dependencies as a
  # side effect of compilation, but ICC will put the dependencies in
  # the current directory while Tru64 will put them in the object
  # directory.
  mkdir sub

  am_cv_$1_dependencies_compiler_type=none
  if test "$am_compiler_list" = ""; then
     am_compiler_list=`sed -n ['s/^#*\([a-zA-Z0-9]*\))$/\1/p'] < ./depcomp`
  fi
  for depmode in $am_compiler_list; do
    # Setup a source with many dependencies, because some compilers
    # like to wrap large dependency lists on column 80 (with \), and
    # we should not choose a depcomp mode which is confused by this.
    #
    # We need to recreate these files for each test, as the compiler may
    # overwrite some of them when testing with obscure command lines.
    # This happens at least with the AIX C compiler.
    : > sub/conftest.c
    for i in 1 2 3 4 5 6; do
      echo '#include "conftst'$i'.h"' >> sub/conftest.c
      : > sub/conftst$i.h
    done
    echo "${am__include} ${am__quote}sub/conftest.Po${am__quote}" > confmf

    case $depmode in
    nosideeffect)
      # after this tag, mechanisms are not by side-effect, so they'll
      # only be used when explicitly requested
      if test "x$enable_dependency_tracking" = xyes; then
	continue
      else
	break
      fi
      ;;
    none) break ;;
    esac
    # We check with `-c' and `-o' for the sake of the "dashmstdout"
    # mode.  It turns out that the SunPro C++ compiler does not properly
    # handle `-M -o', and we need to detect this.
    if depmode=$depmode \
       source=sub/conftest.c object=sub/conftest.${OBJEXT-o} \
       depfile=sub/conftest.Po tmpdepfile=sub/conftest.TPo \
       $SHELL ./depcomp $depcc -c -o sub/conftest.${OBJEXT-o} sub/conftest.c \
         >/dev/null 2>conftest.err &&
       grep sub/conftst6.h sub/conftest.Po > /dev/null 2>&1 &&
       grep sub/conftest.${OBJEXT-o} sub/conftest.Po > /dev/null 2>&1 &&
       ${MAKE-make} -s -f confmf > /dev/null 2>&1; then
      # icc doesn't choke on unknown options, it will just issue warnings
      # (even with -Werror).  So we grep stderr for any message
      # that says an option was ignored.
      if grep 'ignoring option' conftest.err >/dev/null 2>&1; then :; else
        am_cv_$1_dependencies_compiler_type=$depmode
        break
      fi
    fi
  done

  cd ..
  rm -rf conftest.dir
else
  am_cv_$1_dependencies_compiler_type=none
fi
])
AC_SUBST([$1DEPMODE], [depmode=$am_cv_$1_dependencies_compiler_type])
AM_CONDITIONAL([am__fastdep$1], [
  test "x$enable_dependency_tracking" != xno \
  && test "$am_cv_$1_dependencies_compiler_type" = gcc3])
])


# AM_SET_DEPDIR
# -------------
# Choose a directory name for dependency files.
# This macro is AC_REQUIREd in _AM_DEPENDENCIES
AC_DEFUN([AM_SET_DEPDIR],
[AC_REQUIRE([AM_SET_LEADING_DOT])dnl
AC_SUBST([DEPDIR], ["${am__leading_dot}deps"])dnl
])


# AM_DEP_TRACK
# ------------
AC_DEFUN([AM_DEP_TRACK],
[AC_ARG_ENABLE(dependency-tracking,
[  --disable-dependency-tracking Speeds up one-time builds
  --enable-dependency-tracking  Do not reject slow dependency extractors])
if test "x$enable_dependency_tracking" != xno; then
  am_depcomp="$ac_aux_dir/depcomp"
  AMDEPBACKSLASH='\'
fi
AM_CONDITIONAL([AMDEP], [test "x$enable_dependency_tracking" != xno])
AC_SUBST([AMDEPBACKSLASH])
])

# Generate code to set up dependency tracking.   -*- Autoconf -*-

# Copyright 1999, 2000, 2001, 2002 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

#serial 2

# _AM_OUTPUT_DEPENDENCY_COMMANDS
# ------------------------------
AC_DEFUN([_AM_OUTPUT_DEPENDENCY_COMMANDS],
[for mf in $CONFIG_FILES; do
  # Strip MF so we end up with the name of the file.
  mf=`echo "$mf" | sed -e 's/:.*$//'`
  # Check whether this is an Automake generated Makefile or not.
  # We used to match only the files named `Makefile.in', but
  # some people rename them; so instead we look at the file content.
  # Grep'ing the first line is not enough: some people post-process
  # each Makefile.in and add a new line on top of each file to say so.
  # So let's grep whole file.
  if grep '^#.*generated by automake' $mf > /dev/null 2>&1; then
    dirpart=`AS_DIRNAME("$mf")`
  else
    continue
  fi
  grep '^DEP_FILES *= *[[^ @%:@]]' < "$mf" > /dev/null || continue
  # Extract the definition of DEP_FILES from the Makefile without
  # running `make'.
  DEPDIR=`sed -n -e '/^DEPDIR = / s///p' < "$mf"`
  test -z "$DEPDIR" && continue
  # When using ansi2knr, U may be empty or an underscore; expand it
  U=`sed -n -e '/^U = / s///p' < "$mf"`
  test -d "$dirpart/$DEPDIR" || mkdir "$dirpart/$DEPDIR"
  # We invoke sed twice because it is the simplest approach to
  # changing $(DEPDIR) to its actual value in the expansion.
  for file in `sed -n -e '
    /^DEP_FILES = .*\\\\$/ {
      s/^DEP_FILES = //
      :loop
	s/\\\\$//
	p
	n
	/\\\\$/ b loop
      p
    }
    /^DEP_FILES = / s/^DEP_FILES = //p' < "$mf" | \
       sed -e 's/\$(DEPDIR)/'"$DEPDIR"'/g' -e 's/\$U/'"$U"'/g'`; do
    # Make sure the directory exists.
    test -f "$dirpart/$file" && continue
    fdir=`AS_DIRNAME(["$file"])`
    AS_MKDIR_P([$dirpart/$fdir])
    # echo "creating $dirpart/$file"
    echo '# dummy' > "$dirpart/$file"
  done
done
])# _AM_OUTPUT_DEPENDENCY_COMMANDS


# AM_OUTPUT_DEPENDENCY_COMMANDS
# -----------------------------
# This macro should only be invoked once -- use via AC_REQUIRE.
#
# This code is only required when automatic dependency tracking
# is enabled.  FIXME.  This creates each `.P' file that we will
# need in order to bootstrap the dependency handling code.
AC_DEFUN([AM_OUTPUT_DEPENDENCY_COMMANDS],
[AC_CONFIG_COMMANDS([depfiles],
     [test x"$AMDEP_TRUE" != x"" || _AM_OUTPUT_DEPENDENCY_COMMANDS],
     [AMDEP_TRUE="$AMDEP_TRUE" ac_aux_dir="$ac_aux_dir"])
])

# Check to see how 'make' treats includes.	-*- Autoconf -*-

# Copyright (C) 2001, 2002, 2003 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

# serial 2

# AM_MAKE_INCLUDE()
# -----------------
# Check to see how make treats includes.
AC_DEFUN([AM_MAKE_INCLUDE],
[am_make=${MAKE-make}
cat > confinc << 'END'
am__doit:
	@echo done
.PHONY: am__doit
END
# If we don't find an include directive, just comment out the code.
AC_MSG_CHECKING([for style of include used by $am_make])
am__include="#"
am__quote=
_am_result=none
# First try GNU make style include.
echo "include confinc" > confmf
# We grep out `Entering directory' and `Leaving directory'
# messages which can occur if `w' ends up in MAKEFLAGS.
# In particular we don't look at `^make:' because GNU make might
# be invoked under some other name (usually "gmake"), in which
# case it prints its new name instead of `make'.
if test "`$am_make -s -f confmf 2> /dev/null | grep -v 'ing directory'`" = "done"; then
   am__include=include
   am__quote=
   _am_result=GNU
fi
# Now try BSD make style include.
if test "$am__include" = "#"; then
   echo '.include "confinc"' > confmf
   if test "`$am_make -s -f confmf 2> /dev/null`" = "done"; then
      am__include=.include
      am__quote="\""
      _am_result=BSD
   fi
fi
AC_SUBST([am__include])
AC_SUBST([am__quote])
AC_MSG_RESULT([$_am_result])
rm -f confinc confmf
])

# AM_CONDITIONAL                                              -*- Autoconf -*-

# Copyright 1997, 2000, 2001 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

# serial 5

AC_PREREQ(2.52)

# AM_CONDITIONAL(NAME, SHELL-CONDITION)
# -------------------------------------
# Define a conditional.
AC_DEFUN([AM_CONDITIONAL],
[ifelse([$1], [TRUE],  [AC_FATAL([$0: invalid condition: $1])],
        [$1], [FALSE], [AC_FATAL([$0: invalid condition: $1])])dnl
AC_SUBST([$1_TRUE])
AC_SUBST([$1_FALSE])
if $2; then
  $1_TRUE=
  $1_FALSE='#'
else
  $1_TRUE='#'
  $1_FALSE=
fi
AC_CONFIG_COMMANDS_PRE(
[if test -z "${$1_TRUE}" && test -z "${$1_FALSE}"; then
  AC_MSG_ERROR([conditional "$1" was never defined.
Usually this means the macro was only invoked conditionally.])
fi])])


# Copyright 1998, 1999, 2000, 2001, 2002 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

# serial 3

AC_PREREQ(2.50)

# AM_PROG_LEX
# -----------
# Autoconf leaves LEX=: if lex or flex can't be found.  Change that to a
# "missing" invocation, for better error output.
AC_DEFUN([AM_PROG_LEX],
[AC_REQUIRE([AM_MISSING_HAS_RUN])dnl
AC_REQUIRE([AC_PROG_LEX])dnl
if test "$LEX" = :; then
  LEX=${am_missing_run}flex
fi])

# Add --enable-maintainer-mode option to configure.
# From Jim Meyering

# Copyright 1996, 1998, 2000, 2001, 2002  Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

# serial 2

AC_DEFUN([AM_MAINTAINER_MODE],
[AC_MSG_CHECKING([whether to enable maintainer-specific portions of Makefiles])
  dnl maintainer-mode is disabled by default
  AC_ARG_ENABLE(maintainer-mode,
[  --enable-maintainer-mode enable make rules and dependencies not useful
                          (and sometimes confusing) to the casual installer],
      USE_MAINTAINER_MODE=$enableval,
      USE_MAINTAINER_MODE=no)
  AC_MSG_RESULT([$USE_MAINTAINER_MODE])
  AM_CONDITIONAL(MAINTAINER_MODE, [test $USE_MAINTAINER_MODE = yes])
  MAINT=$MAINTAINER_MODE_TRUE
  AC_SUBST(MAINT)dnl
]
)

AU_DEFUN([jm_MAINTAINER_MODE], [AM_MAINTAINER_MODE])

# isc-posix.m4 serial 2 (gettext-0.11.2)
dnl Copyright (C) 1995-2002 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# This file is not needed with autoconf-2.53 and newer.  Remove it in 2005.

# This test replaces the one in autoconf.
# Currently this macro should have the same name as the autoconf macro
# because gettext's gettext.m4 (distributed in the automake package)
# still uses it.  Otherwise, the use in gettext.m4 makes autoheader
# give these diagnostics:
#   configure.in:556: AC_TRY_COMPILE was called before AC_ISC_POSIX
#   configure.in:556: AC_TRY_RUN was called before AC_ISC_POSIX

undefine([AC_ISC_POSIX])

AC_DEFUN([AC_ISC_POSIX],
  [
    dnl This test replaces the obsolescent AC_ISC_POSIX kludge.
    AC_CHECK_LIB(cposix, strerror, [LIBS="$LIBS -lcposix"])
  ]
)

# gettext.m4 serial 37 (gettext-0.14.4)
dnl Copyright (C) 1995-2005 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl
dnl This file can can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1995-2000.
dnl   Bruno Haible <haible@clisp.cons.org>, 2000-2003.

dnl Macro to add for using GNU gettext.

dnl Usage: AM_GNU_GETTEXT([INTLSYMBOL], [NEEDSYMBOL], [INTLDIR]).
dnl INTLSYMBOL can be one of 'external', 'no-libtool', 'use-libtool'. The
dnl    default (if it is not specified or empty) is 'no-libtool'.
dnl    INTLSYMBOL should be 'external' for packages with no intl directory,
dnl    and 'no-libtool' or 'use-libtool' for packages with an intl directory.
dnl    If INTLSYMBOL is 'use-libtool', then a libtool library
dnl    $(top_builddir)/intl/libintl.la will be created (shared and/or static,
dnl    depending on --{enable,disable}-{shared,static} and on the presence of
dnl    AM-DISABLE-SHARED). If INTLSYMBOL is 'no-libtool', a static library
dnl    $(top_builddir)/intl/libintl.a will be created.
dnl If NEEDSYMBOL is specified and is 'need-ngettext', then GNU gettext
dnl    implementations (in libc or libintl) without the ngettext() function
dnl    will be ignored.  If NEEDSYMBOL is specified and is
dnl    'need-formatstring-macros', then GNU gettext implementations that don't
dnl    support the ISO C 99 <inttypes.h> formatstring macros will be ignored.
dnl INTLDIR is used to find the intl libraries.  If empty,
dnl    the value `$(top_builddir)/intl/' is used.
dnl
dnl The result of the configuration is one of three cases:
dnl 1) GNU gettext, as included in the intl subdirectory, will be compiled
dnl    and used.
dnl    Catalog format: GNU --> install in $(datadir)
dnl    Catalog extension: .mo after installation, .gmo in source tree
dnl 2) GNU gettext has been found in the system's C library.
dnl    Catalog format: GNU --> install in $(datadir)
dnl    Catalog extension: .mo after installation, .gmo in source tree
dnl 3) No internationalization, always use English msgid.
dnl    Catalog format: none
dnl    Catalog extension: none
dnl If INTLSYMBOL is 'external', only cases 2 and 3 can occur.
dnl The use of .gmo is historical (it was needed to avoid overwriting the
dnl GNU format catalogs when building on a platform with an X/Open gettext),
dnl but we keep it in order not to force irrelevant filename changes on the
dnl maintainers.
dnl
AC_DEFUN([AM_GNU_GETTEXT],
[
  dnl Argument checking.
  ifelse([$1], [], , [ifelse([$1], [external], , [ifelse([$1], [no-libtool], , [ifelse([$1], [use-libtool], ,
    [errprint([ERROR: invalid first argument to AM_GNU_GETTEXT
])])])])])
  ifelse([$2], [], , [ifelse([$2], [need-ngettext], , [ifelse([$2], [need-formatstring-macros], ,
    [errprint([ERROR: invalid second argument to AM_GNU_GETTEXT
])])])])
  define([gt_included_intl], ifelse([$1], [external], [no], [yes]))
  define([gt_libtool_suffix_prefix], ifelse([$1], [use-libtool], [l], []))

  AC_REQUIRE([AM_PO_SUBDIRS])dnl
  ifelse(gt_included_intl, yes, [
    AC_REQUIRE([AM_INTL_SUBDIR])dnl
  ])

  dnl Prerequisites of AC_LIB_LINKFLAGS_BODY.
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])

  dnl Sometimes libintl requires libiconv, so first search for libiconv.
  dnl Ideally we would do this search only after the
  dnl      if test "$USE_NLS" = "yes"; then
  dnl        if test "$gt_cv_func_gnugettext_libc" != "yes"; then
  dnl tests. But if configure.in invokes AM_ICONV after AM_GNU_GETTEXT
  dnl the configure script would need to contain the same shell code
  dnl again, outside any 'if'. There are two solutions:
  dnl - Invoke AM_ICONV_LINKFLAGS_BODY here, outside any 'if'.
  dnl - Control the expansions in more detail using AC_PROVIDE_IFELSE.
  dnl Since AC_PROVIDE_IFELSE is only in autoconf >= 2.52 and not
  dnl documented, we avoid it.
  ifelse(gt_included_intl, yes, , [
    AC_REQUIRE([AM_ICONV_LINKFLAGS_BODY])
  ])

  dnl Sometimes, on MacOS X, libintl requires linking with CoreFoundation.
  gt_INTL_MACOSX

  dnl Set USE_NLS.
  AM_NLS

  ifelse(gt_included_intl, yes, [
    BUILD_INCLUDED_LIBINTL=no
    USE_INCLUDED_LIBINTL=no
  ])
  LIBINTL=
  LTLIBINTL=
  POSUB=

  dnl If we use NLS figure out what method
  if test "$USE_NLS" = "yes"; then
    gt_use_preinstalled_gnugettext=no
    ifelse(gt_included_intl, yes, [
      AC_MSG_CHECKING([whether included gettext is requested])
      AC_ARG_WITH(included-gettext,
        [  --with-included-gettext use the GNU gettext library included here],
        nls_cv_force_use_gnu_gettext=$withval,
        nls_cv_force_use_gnu_gettext=no)
      AC_MSG_RESULT($nls_cv_force_use_gnu_gettext)

      nls_cv_use_gnu_gettext="$nls_cv_force_use_gnu_gettext"
      if test "$nls_cv_force_use_gnu_gettext" != "yes"; then
    ])
        dnl User does not insist on using GNU NLS library.  Figure out what
        dnl to use.  If GNU gettext is available we use this.  Else we have
        dnl to fall back to GNU NLS library.

        dnl Add a version number to the cache macros.
        define([gt_api_version], ifelse([$2], [need-formatstring-macros], 3, ifelse([$2], [need-ngettext], 2, 1)))
        define([gt_cv_func_gnugettext_libc], [gt_cv_func_gnugettext]gt_api_version[_libc])
        define([gt_cv_func_gnugettext_libintl], [gt_cv_func_gnugettext]gt_api_version[_libintl])

        AC_CACHE_CHECK([for GNU gettext in libc], gt_cv_func_gnugettext_libc,
         [AC_TRY_LINK([#include <libintl.h>
]ifelse([$2], [need-formatstring-macros],
[#ifndef __GNU_GETTEXT_SUPPORTED_REVISION
#define __GNU_GETTEXT_SUPPORTED_REVISION(major) ((major) == 0 ? 0 : -1)
#endif
changequote(,)dnl
typedef int array [2 * (__GNU_GETTEXT_SUPPORTED_REVISION(0) >= 1) - 1];
changequote([,])dnl
], [])[extern int _nl_msg_cat_cntr;
extern int *_nl_domain_bindings;],
            [bindtextdomain ("", "");
return * gettext ("")]ifelse([$2], [need-ngettext], [ + * ngettext ("", "", 0)], [])[ + _nl_msg_cat_cntr + *_nl_domain_bindings],
            gt_cv_func_gnugettext_libc=yes,
            gt_cv_func_gnugettext_libc=no)])

        if test "$gt_cv_func_gnugettext_libc" != "yes"; then
          dnl Sometimes libintl requires libiconv, so first search for libiconv.
          ifelse(gt_included_intl, yes, , [
            AM_ICONV_LINK
          ])
          dnl Search for libintl and define LIBINTL, LTLIBINTL and INCINTL
          dnl accordingly. Don't use AC_LIB_LINKFLAGS_BODY([intl],[iconv])
          dnl because that would add "-liconv" to LIBINTL and LTLIBINTL
          dnl even if libiconv doesn't exist.
          AC_LIB_LINKFLAGS_BODY([intl])
          AC_CACHE_CHECK([for GNU gettext in libintl],
            gt_cv_func_gnugettext_libintl,
           [gt_save_CPPFLAGS="$CPPFLAGS"
            CPPFLAGS="$CPPFLAGS $INCINTL"
            gt_save_LIBS="$LIBS"
            LIBS="$LIBS $LIBINTL"
            dnl Now see whether libintl exists and does not depend on libiconv.
            AC_TRY_LINK([#include <libintl.h>
]ifelse([$2], [need-formatstring-macros],
[#ifndef __GNU_GETTEXT_SUPPORTED_REVISION
#define __GNU_GETTEXT_SUPPORTED_REVISION(major) ((major) == 0 ? 0 : -1)
#endif
changequote(,)dnl
typedef int array [2 * (__GNU_GETTEXT_SUPPORTED_REVISION(0) >= 1) - 1];
changequote([,])dnl
], [])[extern int _nl_msg_cat_cntr;
extern
#ifdef __cplusplus
"C"
#endif
const char *_nl_expand_alias (const char *);],
              [bindtextdomain ("", "");
return * gettext ("")]ifelse([$2], [need-ngettext], [ + * ngettext ("", "", 0)], [])[ + _nl_msg_cat_cntr + *_nl_expand_alias ("")],
              gt_cv_func_gnugettext_libintl=yes,
              gt_cv_func_gnugettext_libintl=no)
            dnl Now see whether libintl exists and depends on libiconv.
            if test "$gt_cv_func_gnugettext_libintl" != yes && test -n "$LIBICONV"; then
              LIBS="$LIBS $LIBICONV"
              AC_TRY_LINK([#include <libintl.h>
]ifelse([$2], [need-formatstring-macros],
[#ifndef __GNU_GETTEXT_SUPPORTED_REVISION
#define __GNU_GETTEXT_SUPPORTED_REVISION(major) ((major) == 0 ? 0 : -1)
#endif
changequote(,)dnl
typedef int array [2 * (__GNU_GETTEXT_SUPPORTED_REVISION(0) >= 1) - 1];
changequote([,])dnl
], [])[extern int _nl_msg_cat_cntr;
extern
#ifdef __cplusplus
"C"
#endif
const char *_nl_expand_alias (const char *);],
                [bindtextdomain ("", "");
return * gettext ("")]ifelse([$2], [need-ngettext], [ + * ngettext ("", "", 0)], [])[ + _nl_msg_cat_cntr + *_nl_expand_alias ("")],
               [LIBINTL="$LIBINTL $LIBICONV"
                LTLIBINTL="$LTLIBINTL $LTLIBICONV"
                gt_cv_func_gnugettext_libintl=yes
               ])
            fi
            CPPFLAGS="$gt_save_CPPFLAGS"
            LIBS="$gt_save_LIBS"])
        fi

        dnl If an already present or preinstalled GNU gettext() is found,
        dnl use it.  But if this macro is used in GNU gettext, and GNU
        dnl gettext is already preinstalled in libintl, we update this
        dnl libintl.  (Cf. the install rule in intl/Makefile.in.)
        if test "$gt_cv_func_gnugettext_libc" = "yes" \
           || { test "$gt_cv_func_gnugettext_libintl" = "yes" \
                && test "$PACKAGE" != gettext-runtime \
                && test "$PACKAGE" != gettext-tools; }; then
          gt_use_preinstalled_gnugettext=yes
        else
          dnl Reset the values set by searching for libintl.
          LIBINTL=
          LTLIBINTL=
          INCINTL=
        fi

    ifelse(gt_included_intl, yes, [
        if test "$gt_use_preinstalled_gnugettext" != "yes"; then
          dnl GNU gettext is not found in the C library.
          dnl Fall back on included GNU gettext library.
          nls_cv_use_gnu_gettext=yes
        fi
      fi

      if test "$nls_cv_use_gnu_gettext" = "yes"; then
        dnl Mark actions used to generate GNU NLS library.
        BUILD_INCLUDED_LIBINTL=yes
        USE_INCLUDED_LIBINTL=yes
        LIBINTL="ifelse([$3],[],\${top_builddir}/intl,[$3])/libintl.[]gt_libtool_suffix_prefix[]a $LIBICONV"
        LTLIBINTL="ifelse([$3],[],\${top_builddir}/intl,[$3])/libintl.[]gt_libtool_suffix_prefix[]a $LTLIBICONV"
        LIBS=`echo " $LIBS " | sed -e 's/ -lintl / /' -e 's/^ //' -e 's/ $//'`
      fi

      CATOBJEXT=
      if test "$gt_use_preinstalled_gnugettext" = "yes" \
         || test "$nls_cv_use_gnu_gettext" = "yes"; then
        dnl Mark actions to use GNU gettext tools.
        CATOBJEXT=.gmo
      fi
    ])

    if test -n "$INTL_MACOSX_LIBS"; then
      if test "$gt_use_preinstalled_gnugettext" = "yes" \
         || test "$nls_cv_use_gnu_gettext" = "yes"; then
        dnl Some extra flags are needed during linking.
        LIBINTL="$LIBINTL $INTL_MACOSX_LIBS"
        LTLIBINTL="$LTLIBINTL $INTL_MACOSX_LIBS"
      fi
    fi

    if test "$gt_use_preinstalled_gnugettext" = "yes" \
       || test "$nls_cv_use_gnu_gettext" = "yes"; then
      AC_DEFINE(ENABLE_NLS, 1,
        [Define to 1 if translation of program messages to the user's native language
   is requested.])
    else
      USE_NLS=no
    fi
  fi

  AC_MSG_CHECKING([whether to use NLS])
  AC_MSG_RESULT([$USE_NLS])
  if test "$USE_NLS" = "yes"; then
    AC_MSG_CHECKING([where the gettext function comes from])
    if test "$gt_use_preinstalled_gnugettext" = "yes"; then
      if test "$gt_cv_func_gnugettext_libintl" = "yes"; then
        gt_source="external libintl"
      else
        gt_source="libc"
      fi
    else
      gt_source="included intl directory"
    fi
    AC_MSG_RESULT([$gt_source])
  fi

  if test "$USE_NLS" = "yes"; then

    if test "$gt_use_preinstalled_gnugettext" = "yes"; then
      if test "$gt_cv_func_gnugettext_libintl" = "yes"; then
        AC_MSG_CHECKING([how to link with libintl])
        AC_MSG_RESULT([$LIBINTL])
        AC_LIB_APPENDTOVAR([CPPFLAGS], [$INCINTL])
      fi

      dnl For backward compatibility. Some packages may be using this.
      AC_DEFINE(HAVE_GETTEXT, 1,
       [Define if the GNU gettext() function is already present or preinstalled.])
      AC_DEFINE(HAVE_DCGETTEXT, 1,
       [Define if the GNU dcgettext() function is already present or preinstalled.])
    fi

    dnl We need to process the po/ directory.
    POSUB=po
  fi

  ifelse(gt_included_intl, yes, [
    dnl If this is used in GNU gettext we have to set BUILD_INCLUDED_LIBINTL
    dnl to 'yes' because some of the testsuite requires it.
    if test "$PACKAGE" = gettext-runtime || test "$PACKAGE" = gettext-tools; then
      BUILD_INCLUDED_LIBINTL=yes
    fi

    dnl Make all variables we use known to autoconf.
    AC_SUBST(BUILD_INCLUDED_LIBINTL)
    AC_SUBST(USE_INCLUDED_LIBINTL)
    AC_SUBST(CATOBJEXT)

    dnl For backward compatibility. Some configure.ins may be using this.
    nls_cv_header_intl=
    nls_cv_header_libgt=

    dnl For backward compatibility. Some Makefiles may be using this.
    DATADIRNAME=share
    AC_SUBST(DATADIRNAME)

    dnl For backward compatibility. Some Makefiles may be using this.
    INSTOBJEXT=.mo
    AC_SUBST(INSTOBJEXT)

    dnl For backward compatibility. Some Makefiles may be using this.
    GENCAT=gencat
    AC_SUBST(GENCAT)

    dnl For backward compatibility. Some Makefiles may be using this.
    INTLOBJS=
    if test "$USE_INCLUDED_LIBINTL" = yes; then
      INTLOBJS="\$(GETTOBJS)"
    fi
    AC_SUBST(INTLOBJS)

    dnl Enable libtool support if the surrounding package wishes it.
    INTL_LIBTOOL_SUFFIX_PREFIX=gt_libtool_suffix_prefix
    AC_SUBST(INTL_LIBTOOL_SUFFIX_PREFIX)
  ])

  dnl For backward compatibility. Some Makefiles may be using this.
  INTLLIBS="$LIBINTL"
  AC_SUBST(INTLLIBS)

  dnl Make all documented variables known to autoconf.
  AC_SUBST(LIBINTL)
  AC_SUBST(LTLIBINTL)
  AC_SUBST(POSUB)
])


dnl Checks for all prerequisites of the intl subdirectory,
dnl except for INTL_LIBTOOL_SUFFIX_PREFIX (and possibly LIBTOOL), INTLOBJS,
dnl            USE_INCLUDED_LIBINTL, BUILD_INCLUDED_LIBINTL.
AC_DEFUN([AM_INTL_SUBDIR],
[
  AC_REQUIRE([AC_PROG_INSTALL])dnl
  AC_REQUIRE([AM_MKINSTALLDIRS])dnl
  AC_REQUIRE([AC_PROG_CC])dnl
  AC_REQUIRE([AC_CANONICAL_HOST])dnl
  AC_REQUIRE([gt_GLIBC2])dnl
  AC_REQUIRE([AC_PROG_RANLIB])dnl
  AC_REQUIRE([AC_ISC_POSIX])dnl
  AC_REQUIRE([AC_HEADER_STDC])dnl
  AC_REQUIRE([AC_C_CONST])dnl
  AC_REQUIRE([bh_C_SIGNED])dnl
  AC_REQUIRE([AC_C_INLINE])dnl
  AC_REQUIRE([AC_TYPE_OFF_T])dnl
  AC_REQUIRE([AC_TYPE_SIZE_T])dnl
  AC_REQUIRE([gl_AC_TYPE_LONG_LONG])dnl
  AC_REQUIRE([gt_TYPE_LONGDOUBLE])dnl
  AC_REQUIRE([gt_TYPE_WCHAR_T])dnl
  AC_REQUIRE([gt_TYPE_WINT_T])dnl
  AC_REQUIRE([gl_AC_HEADER_INTTYPES_H])
  AC_REQUIRE([gl_AC_HEADER_STDINT_H])
  AC_REQUIRE([gt_TYPE_INTMAX_T])
  AC_REQUIRE([gt_PRINTF_POSIX])
  AC_REQUIRE([AC_FUNC_ALLOCA])dnl
  AC_REQUIRE([AC_FUNC_MMAP])dnl
  AC_REQUIRE([gl_GLIBC21])dnl
  AC_REQUIRE([gt_INTDIV0])dnl
  AC_REQUIRE([gl_AC_TYPE_UINTMAX_T])dnl
  AC_REQUIRE([gt_HEADER_INTTYPES_H])dnl
  AC_REQUIRE([gt_INTTYPES_PRI])dnl
  AC_REQUIRE([gl_XSIZE])dnl
  AC_REQUIRE([gt_INTL_MACOSX])dnl

  AC_CHECK_TYPE([ptrdiff_t], ,
    [AC_DEFINE([ptrdiff_t], [long],
       [Define as the type of the result of subtracting two pointers, if the system doesn't define it.])
    ])
  AC_CHECK_HEADERS([argz.h limits.h locale.h nl_types.h malloc.h stddef.h \
stdlib.h string.h unistd.h sys/param.h])
  AC_CHECK_FUNCS([asprintf fwprintf getcwd getegid geteuid getgid getuid \
mempcpy munmap putenv setenv setlocale snprintf stpcpy strcasecmp strdup \
strtoul tsearch wcslen __argz_count __argz_stringify __argz_next \
__fsetlocking])

  dnl Use the _snprintf function only if it is declared (because on NetBSD it
  dnl is defined as a weak alias of snprintf; we prefer to use the latter).
  gt_CHECK_DECL(_snprintf, [#include <stdio.h>])
  gt_CHECK_DECL(_snwprintf, [#include <stdio.h>])

  dnl Use the *_unlocked functions only if they are declared.
  dnl (because some of them were defined without being declared in Solaris
  dnl 2.5.1 but were removed in Solaris 2.6, whereas we want binaries built
  dnl on Solaris 2.5.1 to run on Solaris 2.6).
  dnl Don't use AC_CHECK_DECLS because it isn't supported in autoconf-2.13.
  gt_CHECK_DECL(feof_unlocked, [#include <stdio.h>])
  gt_CHECK_DECL(fgets_unlocked, [#include <stdio.h>])
  gt_CHECK_DECL(getc_unlocked, [#include <stdio.h>])

  case $gt_cv_func_printf_posix in
    *yes) HAVE_POSIX_PRINTF=1 ;;
    *) HAVE_POSIX_PRINTF=0 ;;
  esac
  AC_SUBST([HAVE_POSIX_PRINTF])
  if test "$ac_cv_func_asprintf" = yes; then
    HAVE_ASPRINTF=1
  else
    HAVE_ASPRINTF=0
  fi
  AC_SUBST([HAVE_ASPRINTF])
  if test "$ac_cv_func_snprintf" = yes; then
    HAVE_SNPRINTF=1
  else
    HAVE_SNPRINTF=0
  fi
  AC_SUBST([HAVE_SNPRINTF])
  if test "$ac_cv_func_wprintf" = yes; then
    HAVE_WPRINTF=1
  else
    HAVE_WPRINTF=0
  fi
  AC_SUBST([HAVE_WPRINTF])

  AM_ICONV
  AM_LANGINFO_CODESET
  if test $ac_cv_header_locale_h = yes; then
    gt_LC_MESSAGES
  fi

  if test -n "$INTL_MACOSX_LIBS"; then
    CPPFLAGS="$CPPFLAGS -I/System/Library/Frameworks/CoreFoundation.framework/Headers"
  fi

  dnl intl/plural.c is generated from intl/plural.y. It requires bison,
  dnl because plural.y uses bison specific features. It requires at least
  dnl bison-1.26 because earlier versions generate a plural.c that doesn't
  dnl compile.
  dnl bison is only needed for the maintainer (who touches plural.y). But in
  dnl order to avoid separate Makefiles or --enable-maintainer-mode, we put
  dnl the rule in general Makefile. Now, some people carelessly touch the
  dnl files or have a broken "make" program, hence the plural.c rule will
  dnl sometimes fire. To avoid an error, defines BISON to ":" if it is not
  dnl present or too old.
  AC_CHECK_PROGS([INTLBISON], [bison])
  if test -z "$INTLBISON"; then
    ac_verc_fail=yes
  else
    dnl Found it, now check the version.
    AC_MSG_CHECKING([version of bison])
changequote(<<,>>)dnl
    ac_prog_version=`$INTLBISON --version 2>&1 | sed -n 's/^.*GNU Bison.* \([0-9]*\.[0-9.]*\).*$/\1/p'`
    case $ac_prog_version in
      '') ac_prog_version="v. ?.??, bad"; ac_verc_fail=yes;;
      1.2[6-9]* | 1.[3-9][0-9]* | [2-9].*)
changequote([,])dnl
         ac_prog_version="$ac_prog_version, ok"; ac_verc_fail=no;;
      *) ac_prog_version="$ac_prog_version, bad"; ac_verc_fail=yes;;
    esac
    AC_MSG_RESULT([$ac_prog_version])
  fi
  if test $ac_verc_fail = yes; then
    INTLBISON=:
  fi
])


dnl Checks for special options needed on MacOS X.
dnl Defines INTL_MACOSX_LIBS.
AC_DEFUN([gt_INTL_MACOSX],
[
  dnl Check for API introduced in MacOS X 10.2.
  AC_CACHE_CHECK([for CFPreferencesCopyAppValue],
    gt_cv_func_CFPreferencesCopyAppValue,
    [gt_save_CPPFLAGS="$CPPFLAGS"
     CPPFLAGS="$CPPFLAGS -I/System/Library/Frameworks/CoreFoundation.framework/Headers"
     gt_save_LIBS="$LIBS"
     LIBS="$LIBS -framework CoreFoundation"
     AC_TRY_LINK([#include <CFPreferences.h>],
       [CFPreferencesCopyAppValue(NULL, NULL)],
       [gt_cv_func_CFPreferencesCopyAppValue=yes],
       [gt_cv_func_CFPreferencesCopyAppValue=no])
     CPPFLAGS="$gt_save_CPPFLAGS"
     LIBS="$gt_save_LIBS"])
  if test $gt_cv_func_CFPreferencesCopyAppValue = yes; then
    AC_DEFINE([HAVE_CFPREFERENCESCOPYAPPVALUE], 1,
      [Define to 1 if you have the MacOS X function CFPreferencesCopyAppValue in the CoreFoundation framework.])
  fi
  dnl Check for API introduced in MacOS X 10.3.
  AC_CACHE_CHECK([for CFLocaleCopyCurrent], gt_cv_func_CFLocaleCopyCurrent,
    [gt_save_CPPFLAGS="$CPPFLAGS"
     CPPFLAGS="$CPPFLAGS -I/System/Library/Frameworks/CoreFoundation.framework/Headers"
     gt_save_LIBS="$LIBS"
     LIBS="$LIBS -framework CoreFoundation"
     AC_TRY_LINK([#include <CFLocale.h>], [CFLocaleCopyCurrent();],
       [gt_cv_func_CFLocaleCopyCurrent=yes],
       [gt_cv_func_CFLocaleCopyCurrent=no])
     CPPFLAGS="$gt_save_CPPFLAGS"
     LIBS="$gt_save_LIBS"])
  if test $gt_cv_func_CFLocaleCopyCurrent = yes; then
    AC_DEFINE([HAVE_CFLOCALECOPYCURRENT], 1,
      [Define to 1 if you have the MacOS X function CFLocaleCopyCurrent in the CoreFoundation framework.])
  fi
  INTL_MACOSX_LIBS=
  if test $gt_cv_func_CFPreferencesCopyAppValue = yes || test $gt_cv_func_CFLocaleCopyCurrent = yes; then
    INTL_MACOSX_LIBS="-Wl,-framework -Wl,CoreFoundation"
  fi
  AC_SUBST([INTL_MACOSX_LIBS])
])


dnl gt_CHECK_DECL(FUNC, INCLUDES)
dnl Check whether a function is declared.
AC_DEFUN([gt_CHECK_DECL],
[
  AC_CACHE_CHECK([whether $1 is declared], ac_cv_have_decl_$1,
    [AC_TRY_COMPILE([$2], [
#ifndef $1
  char *p = (char *) $1;
#endif
], ac_cv_have_decl_$1=yes, ac_cv_have_decl_$1=no)])
  if test $ac_cv_have_decl_$1 = yes; then
    gt_value=1
  else
    gt_value=0
  fi
  AC_DEFINE_UNQUOTED([HAVE_DECL_]translit($1, [a-z], [A-Z]), [$gt_value],
    [Define to 1 if you have the declaration of `$1', and to 0 if you don't.])
])


dnl Usage: AM_GNU_GETTEXT_VERSION([gettext-version])
AC_DEFUN([AM_GNU_GETTEXT_VERSION], [])

# po.m4 serial 7 (gettext-0.14.3)
dnl Copyright (C) 1995-2005 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl
dnl This file can can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1995-2000.
dnl   Bruno Haible <haible@clisp.cons.org>, 2000-2003.

AC_PREREQ(2.50)

dnl Checks for all prerequisites of the po subdirectory.
AC_DEFUN([AM_PO_SUBDIRS],
[
  AC_REQUIRE([AC_PROG_MAKE_SET])dnl
  AC_REQUIRE([AC_PROG_INSTALL])dnl
  AC_REQUIRE([AM_MKINSTALLDIRS])dnl
  AC_REQUIRE([AM_NLS])dnl

  dnl Perform the following tests also if --disable-nls has been given,
  dnl because they are needed for "make dist" to work.

  dnl Search for GNU msgfmt in the PATH.
  dnl The first test excludes Solaris msgfmt and early GNU msgfmt versions.
  dnl The second test excludes FreeBSD msgfmt.
  AM_PATH_PROG_WITH_TEST(MSGFMT, msgfmt,
    [$ac_dir/$ac_word --statistics /dev/null >&]AS_MESSAGE_LOG_FD[ 2>&1 &&
     (if $ac_dir/$ac_word --statistics /dev/null 2>&1 >/dev/null | grep usage >/dev/null; then exit 1; else exit 0; fi)],
    :)
  AC_PATH_PROG(GMSGFMT, gmsgfmt, $MSGFMT)

  dnl Search for GNU xgettext 0.12 or newer in the PATH.
  dnl The first test excludes Solaris xgettext and early GNU xgettext versions.
  dnl The second test excludes FreeBSD xgettext.
  AM_PATH_PROG_WITH_TEST(XGETTEXT, xgettext,
    [$ac_dir/$ac_word --omit-header --copyright-holder= --msgid-bugs-address= /dev/null >&]AS_MESSAGE_LOG_FD[ 2>&1 &&
     (if $ac_dir/$ac_word --omit-header --copyright-holder= --msgid-bugs-address= /dev/null 2>&1 >/dev/null | grep usage >/dev/null; then exit 1; else exit 0; fi)],
    :)
  dnl Remove leftover from FreeBSD xgettext call.
  rm -f messages.po

  dnl Search for GNU msgmerge 0.11 or newer in the PATH.
  AM_PATH_PROG_WITH_TEST(MSGMERGE, msgmerge,
    [$ac_dir/$ac_word --update -q /dev/null /dev/null >&]AS_MESSAGE_LOG_FD[ 2>&1], :)

  dnl This could go away some day; the PATH_PROG_WITH_TEST already does it.
  dnl Test whether we really found GNU msgfmt.
  if test "$GMSGFMT" != ":"; then
    dnl If it is no GNU msgfmt we define it as : so that the
    dnl Makefiles still can work.
    if $GMSGFMT --statistics /dev/null >/dev/null 2>&1 &&
       (if $GMSGFMT --statistics /dev/null 2>&1 >/dev/null | grep usage >/dev/null; then exit 1; else exit 0; fi); then
      : ;
    else
      GMSGFMT=`echo "$GMSGFMT" | sed -e 's,^.*/,,'`
      AC_MSG_RESULT(
        [found $GMSGFMT program is not GNU msgfmt; ignore it])
      GMSGFMT=":"
    fi
  fi

  dnl This could go away some day; the PATH_PROG_WITH_TEST already does it.
  dnl Test whether we really found GNU xgettext.
  if test "$XGETTEXT" != ":"; then
    dnl If it is no GNU xgettext we define it as : so that the
    dnl Makefiles still can work.
    if $XGETTEXT --omit-header --copyright-holder= --msgid-bugs-address= /dev/null >/dev/null 2>&1 &&
       (if $XGETTEXT --omit-header --copyright-holder= --msgid-bugs-address= /dev/null 2>&1 >/dev/null | grep usage >/dev/null; then exit 1; else exit 0; fi); then
      : ;
    else
      AC_MSG_RESULT(
        [found xgettext program is not GNU xgettext; ignore it])
      XGETTEXT=":"
    fi
    dnl Remove leftover from FreeBSD xgettext call.
    rm -f messages.po
  fi

  AC_OUTPUT_COMMANDS([
    for ac_file in $CONFIG_FILES; do
      # Support "outfile[:infile[:infile...]]"
      case "$ac_file" in
        *:*) ac_file=`echo "$ac_file"|sed 's%:.*%%'` ;;
      esac
      # PO directories have a Makefile.in generated from Makefile.in.in.
      case "$ac_file" in */Makefile.in)
        # Adjust a relative srcdir.
        ac_dir=`echo "$ac_file"|sed 's%/[^/][^/]*$%%'`
        ac_dir_suffix="/`echo "$ac_dir"|sed 's%^\./%%'`"
        ac_dots=`echo "$ac_dir_suffix"|sed 's%/[^/]*%../%g'`
        # In autoconf-2.13 it is called $ac_given_srcdir.
        # In autoconf-2.50 it is called $srcdir.
        test -n "$ac_given_srcdir" || ac_given_srcdir="$srcdir"
        case "$ac_given_srcdir" in
          .)  top_srcdir=`echo $ac_dots|sed 's%/$%%'` ;;
          /*) top_srcdir="$ac_given_srcdir" ;;
          *)  top_srcdir="$ac_dots$ac_given_srcdir" ;;
        esac
        # Treat a directory as a PO directory if and only if it has a
        # POTFILES.in file. This allows packages to have multiple PO
        # directories under different names or in different locations.
        if test -f "$ac_given_srcdir/$ac_dir/POTFILES.in"; then
          rm -f "$ac_dir/POTFILES"
          test -n "$as_me" && echo "$as_me: creating $ac_dir/POTFILES" || echo "creating $ac_dir/POTFILES"
          cat "$ac_given_srcdir/$ac_dir/POTFILES.in" | sed -e "/^#/d" -e "/^[ 	]*\$/d" -e "s,.*,     $top_srcdir/& \\\\," | sed -e "\$s/\(.*\) \\\\/\1/" > "$ac_dir/POTFILES"
          POMAKEFILEDEPS="POTFILES.in"
          # ALL_LINGUAS, POFILES, UPDATEPOFILES, DUMMYPOFILES, GMOFILES depend
          # on $ac_dir but don't depend on user-specified configuration
          # parameters.
          if test -f "$ac_given_srcdir/$ac_dir/LINGUAS"; then
            # The LINGUAS file contains the set of available languages.
            if test -n "$OBSOLETE_ALL_LINGUAS"; then
              test -n "$as_me" && echo "$as_me: setting ALL_LINGUAS in configure.in is obsolete" || echo "setting ALL_LINGUAS in configure.in is obsolete"
            fi
            ALL_LINGUAS_=`sed -e "/^#/d" -e "s/#.*//" "$ac_given_srcdir/$ac_dir/LINGUAS"`
            # Hide the ALL_LINGUAS assigment from automake.
            eval 'ALL_LINGUAS''=$ALL_LINGUAS_'
            POMAKEFILEDEPS="$POMAKEFILEDEPS LINGUAS"
          else
            # The set of available languages was given in configure.in.
            eval 'ALL_LINGUAS''=$OBSOLETE_ALL_LINGUAS'
          fi
          # Compute POFILES
          # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).po)
          # Compute UPDATEPOFILES
          # as      $(foreach lang, $(ALL_LINGUAS), $(lang).po-update)
          # Compute DUMMYPOFILES
          # as      $(foreach lang, $(ALL_LINGUAS), $(lang).nop)
          # Compute GMOFILES
          # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).gmo)
          case "$ac_given_srcdir" in
            .) srcdirpre= ;;
            *) srcdirpre='$(srcdir)/' ;;
          esac
          POFILES=
          UPDATEPOFILES=
          DUMMYPOFILES=
          GMOFILES=
          for lang in $ALL_LINGUAS; do
            POFILES="$POFILES $srcdirpre$lang.po"
            UPDATEPOFILES="$UPDATEPOFILES $lang.po-update"
            DUMMYPOFILES="$DUMMYPOFILES $lang.nop"
            GMOFILES="$GMOFILES $srcdirpre$lang.gmo"
          done
          # CATALOGS depends on both $ac_dir and the user's LINGUAS
          # environment variable.
          INST_LINGUAS=
          if test -n "$ALL_LINGUAS"; then
            for presentlang in $ALL_LINGUAS; do
              useit=no
              if test "%UNSET%" != "$LINGUAS"; then
                desiredlanguages="$LINGUAS"
              else
                desiredlanguages="$ALL_LINGUAS"
              fi
              for desiredlang in $desiredlanguages; do
                # Use the presentlang catalog if desiredlang is
                #   a. equal to presentlang, or
                #   b. a variant of presentlang (because in this case,
                #      presentlang can be used as a fallback for messages
                #      which are not translated in the desiredlang catalog).
                case "$desiredlang" in
                  "$presentlang"*) useit=yes;;
                esac
              done
              if test $useit = yes; then
                INST_LINGUAS="$INST_LINGUAS $presentlang"
              fi
            done
          fi
          CATALOGS=
          if test -n "$INST_LINGUAS"; then
            for lang in $INST_LINGUAS; do
              CATALOGS="$CATALOGS $lang.gmo"
            done
          fi
          test -n "$as_me" && echo "$as_me: creating $ac_dir/Makefile" || echo "creating $ac_dir/Makefile"
          sed -e "/^POTFILES =/r $ac_dir/POTFILES" -e "/^# Makevars/r $ac_given_srcdir/$ac_dir/Makevars" -e "s|@POFILES@|$POFILES|g" -e "s|@UPDATEPOFILES@|$UPDATEPOFILES|g" -e "s|@DUMMYPOFILES@|$DUMMYPOFILES|g" -e "s|@GMOFILES@|$GMOFILES|g" -e "s|@CATALOGS@|$CATALOGS|g" -e "s|@POMAKEFILEDEPS@|$POMAKEFILEDEPS|g" "$ac_dir/Makefile.in" > "$ac_dir/Makefile"
          for f in "$ac_given_srcdir/$ac_dir"/Rules-*; do
            if test -f "$f"; then
              case "$f" in
                *.orig | *.bak | *~) ;;
                *) cat "$f" >> "$ac_dir/Makefile" ;;
              esac
            fi
          done
        fi
        ;;
      esac
    done],
   [# Capture the value of obsolete ALL_LINGUAS because we need it to compute
    # POFILES, UPDATEPOFILES, DUMMYPOFILES, GMOFILES, CATALOGS. But hide it
    # from automake.
    eval 'OBSOLETE_ALL_LINGUAS''="$ALL_LINGUAS"'
    # Capture the value of LINGUAS because we need it to compute CATALOGS.
    LINGUAS="${LINGUAS-%UNSET%}"
   ])
])

dnl Postprocesses a Makefile in a directory containing PO files.
AC_DEFUN([AM_POSTPROCESS_PO_MAKEFILE],
[
  # When this code is run, in config.status, two variables have already been
  # set:
  # - OBSOLETE_ALL_LINGUAS is the value of LINGUAS set in configure.in,
  # - LINGUAS is the value of the environment variable LINGUAS at configure
  #   time.

changequote(,)dnl
  # Adjust a relative srcdir.
  ac_dir=`echo "$ac_file"|sed 's%/[^/][^/]*$%%'`
  ac_dir_suffix="/`echo "$ac_dir"|sed 's%^\./%%'`"
  ac_dots=`echo "$ac_dir_suffix"|sed 's%/[^/]*%../%g'`
  # In autoconf-2.13 it is called $ac_given_srcdir.
  # In autoconf-2.50 it is called $srcdir.
  test -n "$ac_given_srcdir" || ac_given_srcdir="$srcdir"
  case "$ac_given_srcdir" in
    .)  top_srcdir=`echo $ac_dots|sed 's%/$%%'` ;;
    /*) top_srcdir="$ac_given_srcdir" ;;
    *)  top_srcdir="$ac_dots$ac_given_srcdir" ;;
  esac

  # Find a way to echo strings without interpreting backslash.
  if test "X`(echo '\t') 2>/dev/null`" = 'X\t'; then
    gt_echo='echo'
  else
    if test "X`(printf '%s\n' '\t') 2>/dev/null`" = 'X\t'; then
      gt_echo='printf %s\n'
    else
      echo_func () {
        cat <<EOT
$*
EOT
      }
      gt_echo='echo_func'
    fi
  fi

  # A sed script that extracts the value of VARIABLE from a Makefile.
  sed_x_variable='
# Test if the hold space is empty.
x
s/P/P/
x
ta
# Yes it was empty. Look if we have the expected variable definition.
/^[	 ]*VARIABLE[	 ]*=/{
  # Seen the first line of the variable definition.
  s/^[	 ]*VARIABLE[	 ]*=//
  ba
}
bd
:a
# Here we are processing a line from the variable definition.
# Remove comment, more precisely replace it with a space.
s/#.*$/ /
# See if the line ends in a backslash.
tb
:b
s/\\$//
# Print the line, without the trailing backslash.
p
tc
# There was no trailing backslash. The end of the variable definition is
# reached. Clear the hold space.
s/^.*$//
x
bd
:c
# A trailing backslash means that the variable definition continues in the
# next line. Put a nonempty string into the hold space to indicate this.
s/^.*$/P/
x
:d
'
changequote([,])dnl

  # Set POTFILES to the value of the Makefile variable POTFILES.
  sed_x_POTFILES="`$gt_echo \"$sed_x_variable\" | sed -e '/^ *#/d' -e 's/VARIABLE/POTFILES/g'`"
  POTFILES=`sed -n -e "$sed_x_POTFILES" < "$ac_file"`
  # Compute POTFILES_DEPS as
  #   $(foreach file, $(POTFILES), $(top_srcdir)/$(file))
  POTFILES_DEPS=
  for file in $POTFILES; do
    POTFILES_DEPS="$POTFILES_DEPS "'$(top_srcdir)/'"$file"
  done
  POMAKEFILEDEPS=""

  if test -n "$OBSOLETE_ALL_LINGUAS"; then
    test -n "$as_me" && echo "$as_me: setting ALL_LINGUAS in configure.in is obsolete" || echo "setting ALL_LINGUAS in configure.in is obsolete"
  fi
  if test -f "$ac_given_srcdir/$ac_dir/LINGUAS"; then
    # The LINGUAS file contains the set of available languages.
    ALL_LINGUAS_=`sed -e "/^#/d" -e "s/#.*//" "$ac_given_srcdir/$ac_dir/LINGUAS"`
    POMAKEFILEDEPS="$POMAKEFILEDEPS LINGUAS"
  else
    # Set ALL_LINGUAS to the value of the Makefile variable LINGUAS.
    sed_x_LINGUAS="`$gt_echo \"$sed_x_variable\" | sed -e '/^ *#/d' -e 's/VARIABLE/LINGUAS/g'`"
    ALL_LINGUAS_=`sed -n -e "$sed_x_LINGUAS" < "$ac_file"`
  fi
  # Hide the ALL_LINGUAS assigment from automake.
  eval 'ALL_LINGUAS''=$ALL_LINGUAS_'
  # Compute POFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).po)
  # Compute UPDATEPOFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(lang).po-update)
  # Compute DUMMYPOFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(lang).nop)
  # Compute GMOFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).gmo)
  # Compute PROPERTIESFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(top_srcdir)/$(DOMAIN)_$(lang).properties)
  # Compute CLASSFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(top_srcdir)/$(DOMAIN)_$(lang).class)
  # Compute QMFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).qm)
  # Compute MSGFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(frob $(lang)).msg)
  # Compute RESOURCESDLLFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(frob $(lang))/$(DOMAIN).resources.dll)
  case "$ac_given_srcdir" in
    .) srcdirpre= ;;
    *) srcdirpre='$(srcdir)/' ;;
  esac
  POFILES=
  UPDATEPOFILES=
  DUMMYPOFILES=
  GMOFILES=
  PROPERTIESFILES=
  CLASSFILES=
  QMFILES=
  MSGFILES=
  RESOURCESDLLFILES=
  for lang in $ALL_LINGUAS; do
    POFILES="$POFILES $srcdirpre$lang.po"
    UPDATEPOFILES="$UPDATEPOFILES $lang.po-update"
    DUMMYPOFILES="$DUMMYPOFILES $lang.nop"
    GMOFILES="$GMOFILES $srcdirpre$lang.gmo"
    PROPERTIESFILES="$PROPERTIESFILES \$(top_srcdir)/\$(DOMAIN)_$lang.properties"
    CLASSFILES="$CLASSFILES \$(top_srcdir)/\$(DOMAIN)_$lang.class"
    QMFILES="$QMFILES $srcdirpre$lang.qm"
    frobbedlang=`echo $lang | sed -e 's/\..*$//' -e 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
    MSGFILES="$MSGFILES $srcdirpre$frobbedlang.msg"
    frobbedlang=`echo $lang | sed -e 's/_/-/g' -e 's/^sr-CS/sr-SP/' -e 's/@latin$/-Latn/' -e 's/@cyrillic$/-Cyrl/' -e 's/^sr-SP$/sr-SP-Latn/' -e 's/^uz-UZ$/uz-UZ-Latn/'`
    RESOURCESDLLFILES="$RESOURCESDLLFILES $srcdirpre$frobbedlang/\$(DOMAIN).resources.dll"
  done
  # CATALOGS depends on both $ac_dir and the user's LINGUAS
  # environment variable.
  INST_LINGUAS=
  if test -n "$ALL_LINGUAS"; then
    for presentlang in $ALL_LINGUAS; do
      useit=no
      if test "%UNSET%" != "$LINGUAS"; then
        desiredlanguages="$LINGUAS"
      else
        desiredlanguages="$ALL_LINGUAS"
      fi
      for desiredlang in $desiredlanguages; do
        # Use the presentlang catalog if desiredlang is
        #   a. equal to presentlang, or
        #   b. a variant of presentlang (because in this case,
        #      presentlang can be used as a fallback for messages
        #      which are not translated in the desiredlang catalog).
        case "$desiredlang" in
          "$presentlang"*) useit=yes;;
        esac
      done
      if test $useit = yes; then
        INST_LINGUAS="$INST_LINGUAS $presentlang"
      fi
    done
  fi
  CATALOGS=
  JAVACATALOGS=
  QTCATALOGS=
  TCLCATALOGS=
  CSHARPCATALOGS=
  if test -n "$INST_LINGUAS"; then
    for lang in $INST_LINGUAS; do
      CATALOGS="$CATALOGS $lang.gmo"
      JAVACATALOGS="$JAVACATALOGS \$(DOMAIN)_$lang.properties"
      QTCATALOGS="$QTCATALOGS $lang.qm"
      frobbedlang=`echo $lang | sed -e 's/\..*$//' -e 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
      TCLCATALOGS="$TCLCATALOGS $frobbedlang.msg"
      frobbedlang=`echo $lang | sed -e 's/_/-/g' -e 's/^sr-CS/sr-SP/' -e 's/@latin$/-Latn/' -e 's/@cyrillic$/-Cyrl/' -e 's/^sr-SP$/sr-SP-Latn/' -e 's/^uz-UZ$/uz-UZ-Latn/'`
      CSHARPCATALOGS="$CSHARPCATALOGS $frobbedlang/\$(DOMAIN).resources.dll"
    done
  fi

  sed -e "s|@POTFILES_DEPS@|$POTFILES_DEPS|g" -e "s|@POFILES@|$POFILES|g" -e "s|@UPDATEPOFILES@|$UPDATEPOFILES|g" -e "s|@DUMMYPOFILES@|$DUMMYPOFILES|g" -e "s|@GMOFILES@|$GMOFILES|g" -e "s|@PROPERTIESFILES@|$PROPERTIESFILES|g" -e "s|@CLASSFILES@|$CLASSFILES|g" -e "s|@QMFILES@|$QMFILES|g" -e "s|@MSGFILES@|$MSGFILES|g" -e "s|@RESOURCESDLLFILES@|$RESOURCESDLLFILES|g" -e "s|@CATALOGS@|$CATALOGS|g" -e "s|@JAVACATALOGS@|$JAVACATALOGS|g" -e "s|@QTCATALOGS@|$QTCATALOGS|g" -e "s|@TCLCATALOGS@|$TCLCATALOGS|g" -e "s|@CSHARPCATALOGS@|$CSHARPCATALOGS|g" -e 's,^#distdir:,distdir:,' < "$ac_file" > "$ac_file.tmp"
  if grep -l '@TCLCATALOGS@' "$ac_file" > /dev/null; then
    # Add dependencies that cannot be formulated as a simple suffix rule.
    for lang in $ALL_LINGUAS; do
      frobbedlang=`echo $lang | sed -e 's/\..*$//' -e 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
      cat >> "$ac_file.tmp" <<EOF
$frobbedlang.msg: $lang.po
	@echo "\$(MSGFMT) -c --tcl -d \$(srcdir) -l $lang $srcdirpre$lang.po"; \
	\$(MSGFMT) -c --tcl -d "\$(srcdir)" -l $lang $srcdirpre$lang.po || { rm -f "\$(srcdir)/$frobbedlang.msg"; exit 1; }
EOF
    done
  fi
  if grep -l '@CSHARPCATALOGS@' "$ac_file" > /dev/null; then
    # Add dependencies that cannot be formulated as a simple suffix rule.
    for lang in $ALL_LINGUAS; do
      frobbedlang=`echo $lang | sed -e 's/_/-/g' -e 's/^sr-CS/sr-SP/' -e 's/@latin$/-Latn/' -e 's/@cyrillic$/-Cyrl/' -e 's/^sr-SP$/sr-SP-Latn/' -e 's/^uz-UZ$/uz-UZ-Latn/'`
      cat >> "$ac_file.tmp" <<EOF
$frobbedlang/\$(DOMAIN).resources.dll: $lang.po
	@echo "\$(MSGFMT) -c --csharp -d \$(srcdir) -l $lang $srcdirpre$lang.po -r \$(DOMAIN)"; \
	\$(MSGFMT) -c --csharp -d "\$(srcdir)" -l $lang $srcdirpre$lang.po -r "\$(DOMAIN)" || { rm -f "\$(srcdir)/$frobbedlang.msg"; exit 1; }
EOF
    done
  fi
  if test -n "$POMAKEFILEDEPS"; then
    cat >> "$ac_file.tmp" <<EOF
Makefile: $POMAKEFILEDEPS
EOF
  fi
  mv "$ac_file.tmp" "$ac_file"
])

# nls.m4 serial 2 (gettext-0.14.3)
dnl Copyright (C) 1995-2003, 2005 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl
dnl This file can can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1995-2000.
dnl   Bruno Haible <haible@clisp.cons.org>, 2000-2003.

AC_PREREQ(2.50)

AC_DEFUN([AM_NLS],
[
  AC_MSG_CHECKING([whether NLS is requested])
  dnl Default is enabled NLS
  AC_ARG_ENABLE(nls,
    [  --disable-nls           do not use Native Language Support],
    USE_NLS=$enableval, USE_NLS=yes)
  AC_MSG_RESULT($USE_NLS)
  AC_SUBST(USE_NLS)
])

AC_DEFUN([AM_MKINSTALLDIRS],
[
  dnl Tell automake >= 1.10 to complain if mkinstalldirs is missing.
  m4_ifdef([AC_REQUIRE_AUX_FILE], [AC_REQUIRE_AUX_FILE([mkinstalldirs])])
  dnl If the AC_CONFIG_AUX_DIR macro for autoconf is used we possibly
  dnl find the mkinstalldirs script in another subdir but $(top_srcdir).
  dnl Try to locate it.
  MKINSTALLDIRS=
  if test -n "$ac_aux_dir"; then
    case "$ac_aux_dir" in
      /*) MKINSTALLDIRS="$ac_aux_dir/mkinstalldirs" ;;
      *) MKINSTALLDIRS="\$(top_builddir)/$ac_aux_dir/mkinstalldirs" ;;
    esac
  fi
  if test -z "$MKINSTALLDIRS"; then
    MKINSTALLDIRS="\$(top_srcdir)/mkinstalldirs"
  fi
  AC_SUBST(MKINSTALLDIRS)
])

# progtest.m4 serial 4 (gettext-0.14.2)
dnl Copyright (C) 1996-2003, 2005 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl
dnl This file can can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1996.

AC_PREREQ(2.50)

# Search path for a program which passes the given test.

dnl AM_PATH_PROG_WITH_TEST(VARIABLE, PROG-TO-CHECK-FOR,
dnl   TEST-PERFORMED-ON-FOUND_PROGRAM [, VALUE-IF-NOT-FOUND [, PATH]])
AC_DEFUN([AM_PATH_PROG_WITH_TEST],
[
# Prepare PATH_SEPARATOR.
# The user is always right.
if test "${PATH_SEPARATOR+set}" != set; then
  echo "#! /bin/sh" >conf$$.sh
  echo  "exit 0"   >>conf$$.sh
  chmod +x conf$$.sh
  if (PATH="/nonexistent;."; conf$$.sh) >/dev/null 2>&1; then
    PATH_SEPARATOR=';'
  else
    PATH_SEPARATOR=:
  fi
  rm -f conf$$.sh
fi

# Find out how to test for executable files. Don't use a zero-byte file,
# as systems may use methods other than mode bits to determine executability.
cat >conf$$.file <<_ASEOF
#! /bin/sh
exit 0
_ASEOF
chmod +x conf$$.file
if test -x conf$$.file >/dev/null 2>&1; then
  ac_executable_p="test -x"
else
  ac_executable_p="test -f"
fi
rm -f conf$$.file

# Extract the first word of "$2", so it can be a program name with args.
set dummy $2; ac_word=[$]2
AC_MSG_CHECKING([for $ac_word])
AC_CACHE_VAL(ac_cv_path_$1,
[case "[$]$1" in
  [[\\/]]* | ?:[[\\/]]*)
    ac_cv_path_$1="[$]$1" # Let the user override the test with a path.
    ;;
  *)
    ac_save_IFS="$IFS"; IFS=$PATH_SEPARATOR
    for ac_dir in ifelse([$5], , $PATH, [$5]); do
      IFS="$ac_save_IFS"
      test -z "$ac_dir" && ac_dir=.
      for ac_exec_ext in '' $ac_executable_extensions; do
        if $ac_executable_p "$ac_dir/$ac_word$ac_exec_ext"; then
          echo "$as_me: trying $ac_dir/$ac_word..." >&AS_MESSAGE_LOG_FD
          if [$3]; then
            ac_cv_path_$1="$ac_dir/$ac_word$ac_exec_ext"
            break 2
          fi
        fi
      done
    done
    IFS="$ac_save_IFS"
dnl If no 4th arg is given, leave the cache variable unset,
dnl so AC_PATH_PROGS will keep looking.
ifelse([$4], , , [  test -z "[$]ac_cv_path_$1" && ac_cv_path_$1="$4"
])dnl
    ;;
esac])dnl
$1="$ac_cv_path_$1"
if test ifelse([$4], , [-n "[$]$1"], ["[$]$1" != "$4"]); then
  AC_MSG_RESULT([$]$1)
else
  AC_MSG_RESULT(no)
fi
AC_SUBST($1)dnl
])

# lib-prefix.m4 serial 4 (gettext-0.14.2)
dnl Copyright (C) 2001-2005 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

dnl AC_LIB_ARG_WITH is synonymous to AC_ARG_WITH in autoconf-2.13, and
dnl similar to AC_ARG_WITH in autoconf 2.52...2.57 except that is doesn't
dnl require excessive bracketing.
ifdef([AC_HELP_STRING],
[AC_DEFUN([AC_LIB_ARG_WITH], [AC_ARG_WITH([$1],[[$2]],[$3],[$4])])],
[AC_DEFUN([AC_][LIB_ARG_WITH], [AC_ARG_WITH([$1],[$2],[$3],[$4])])])

dnl AC_LIB_PREFIX adds to the CPPFLAGS and LDFLAGS the flags that are needed
dnl to access previously installed libraries. The basic assumption is that
dnl a user will want packages to use other packages he previously installed
dnl with the same --prefix option.
dnl This macro is not needed if only AC_LIB_LINKFLAGS is used to locate
dnl libraries, but is otherwise very convenient.
AC_DEFUN([AC_LIB_PREFIX],
[
  AC_BEFORE([$0], [AC_LIB_LINKFLAGS])
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  dnl By default, look in $includedir and $libdir.
  use_additional=yes
  AC_LIB_WITH_FINAL_PREFIX([
    eval additional_includedir=\"$includedir\"
    eval additional_libdir=\"$libdir\"
  ])
  AC_LIB_ARG_WITH([lib-prefix],
[  --with-lib-prefix[=DIR] search for libraries in DIR/include and DIR/lib
  --without-lib-prefix    don't search for libraries in includedir and libdir],
[
    if test "X$withval" = "Xno"; then
      use_additional=no
    else
      if test "X$withval" = "X"; then
        AC_LIB_WITH_FINAL_PREFIX([
          eval additional_includedir=\"$includedir\"
          eval additional_libdir=\"$libdir\"
        ])
      else
        additional_includedir="$withval/include"
        additional_libdir="$withval/lib"
      fi
    fi
])
  if test $use_additional = yes; then
    dnl Potentially add $additional_includedir to $CPPFLAGS.
    dnl But don't add it
    dnl   1. if it's the standard /usr/include,
    dnl   2. if it's already present in $CPPFLAGS,
    dnl   3. if it's /usr/local/include and we are using GCC on Linux,
    dnl   4. if it doesn't exist as a directory.
    if test "X$additional_includedir" != "X/usr/include"; then
      haveit=
      for x in $CPPFLAGS; do
        AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
        if test "X$x" = "X-I$additional_includedir"; then
          haveit=yes
          break
        fi
      done
      if test -z "$haveit"; then
        if test "X$additional_includedir" = "X/usr/local/include"; then
          if test -n "$GCC"; then
            case $host_os in
              linux* | gnu* | k*bsd*-gnu) haveit=yes;;
            esac
          fi
        fi
        if test -z "$haveit"; then
          if test -d "$additional_includedir"; then
            dnl Really add $additional_includedir to $CPPFLAGS.
            CPPFLAGS="${CPPFLAGS}${CPPFLAGS:+ }-I$additional_includedir"
          fi
        fi
      fi
    fi
    dnl Potentially add $additional_libdir to $LDFLAGS.
    dnl But don't add it
    dnl   1. if it's the standard /usr/lib,
    dnl   2. if it's already present in $LDFLAGS,
    dnl   3. if it's /usr/local/lib and we are using GCC on Linux,
    dnl   4. if it doesn't exist as a directory.
    if test "X$additional_libdir" != "X/usr/lib"; then
      haveit=
      for x in $LDFLAGS; do
        AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
        if test "X$x" = "X-L$additional_libdir"; then
          haveit=yes
          break
        fi
      done
      if test -z "$haveit"; then
        if test "X$additional_libdir" = "X/usr/local/lib"; then
          if test -n "$GCC"; then
            case $host_os in
              linux*) haveit=yes;;
            esac
          fi
        fi
        if test -z "$haveit"; then
          if test -d "$additional_libdir"; then
            dnl Really add $additional_libdir to $LDFLAGS.
            LDFLAGS="${LDFLAGS}${LDFLAGS:+ }-L$additional_libdir"
          fi
        fi
      fi
    fi
  fi
])

dnl AC_LIB_PREPARE_PREFIX creates variables acl_final_prefix,
dnl acl_final_exec_prefix, containing the values to which $prefix and
dnl $exec_prefix will expand at the end of the configure script.
AC_DEFUN([AC_LIB_PREPARE_PREFIX],
[
  dnl Unfortunately, prefix and exec_prefix get only finally determined
  dnl at the end of configure.
  if test "X$prefix" = "XNONE"; then
    acl_final_prefix="$ac_default_prefix"
  else
    acl_final_prefix="$prefix"
  fi
  if test "X$exec_prefix" = "XNONE"; then
    acl_final_exec_prefix='${prefix}'
  else
    acl_final_exec_prefix="$exec_prefix"
  fi
  acl_save_prefix="$prefix"
  prefix="$acl_final_prefix"
  eval acl_final_exec_prefix=\"$acl_final_exec_prefix\"
  prefix="$acl_save_prefix"
])

dnl AC_LIB_WITH_FINAL_PREFIX([statement]) evaluates statement, with the
dnl variables prefix and exec_prefix bound to the values they will have
dnl at the end of the configure script.
AC_DEFUN([AC_LIB_WITH_FINAL_PREFIX],
[
  acl_save_prefix="$prefix"
  prefix="$acl_final_prefix"
  acl_save_exec_prefix="$exec_prefix"
  exec_prefix="$acl_final_exec_prefix"
  $1
  exec_prefix="$acl_save_exec_prefix"
  prefix="$acl_save_prefix"
])

# lib-link.m4 serial 6 (gettext-0.14.3)
dnl Copyright (C) 2001-2005 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_PREREQ(2.50)

dnl AC_LIB_LINKFLAGS(name [, dependencies]) searches for libname and
dnl the libraries corresponding to explicit and implicit dependencies.
dnl Sets and AC_SUBSTs the LIB${NAME} and LTLIB${NAME} variables and
dnl augments the CPPFLAGS variable.
AC_DEFUN([AC_LIB_LINKFLAGS],
[
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])
  define([Name],[translit([$1],[./-], [___])])
  define([NAME],[translit([$1],[abcdefghijklmnopqrstuvwxyz./-],
                               [ABCDEFGHIJKLMNOPQRSTUVWXYZ___])])
  AC_CACHE_CHECK([how to link with lib[]$1], [ac_cv_lib[]Name[]_libs], [
    AC_LIB_LINKFLAGS_BODY([$1], [$2])
    ac_cv_lib[]Name[]_libs="$LIB[]NAME"
    ac_cv_lib[]Name[]_ltlibs="$LTLIB[]NAME"
    ac_cv_lib[]Name[]_cppflags="$INC[]NAME"
  ])
  LIB[]NAME="$ac_cv_lib[]Name[]_libs"
  LTLIB[]NAME="$ac_cv_lib[]Name[]_ltlibs"
  INC[]NAME="$ac_cv_lib[]Name[]_cppflags"
  AC_LIB_APPENDTOVAR([CPPFLAGS], [$INC]NAME)
  AC_SUBST([LIB]NAME)
  AC_SUBST([LTLIB]NAME)
  dnl Also set HAVE_LIB[]NAME so that AC_LIB_HAVE_LINKFLAGS can reuse the
  dnl results of this search when this library appears as a dependency.
  HAVE_LIB[]NAME=yes
  undefine([Name])
  undefine([NAME])
])

dnl AC_LIB_HAVE_LINKFLAGS(name, dependencies, includes, testcode)
dnl searches for libname and the libraries corresponding to explicit and
dnl implicit dependencies, together with the specified include files and
dnl the ability to compile and link the specified testcode. If found, it
dnl sets and AC_SUBSTs HAVE_LIB${NAME}=yes and the LIB${NAME} and
dnl LTLIB${NAME} variables and augments the CPPFLAGS variable, and
dnl #defines HAVE_LIB${NAME} to 1. Otherwise, it sets and AC_SUBSTs
dnl HAVE_LIB${NAME}=no and LIB${NAME} and LTLIB${NAME} to empty.
AC_DEFUN([AC_LIB_HAVE_LINKFLAGS],
[
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])
  define([Name],[translit([$1],[./-], [___])])
  define([NAME],[translit([$1],[abcdefghijklmnopqrstuvwxyz./-],
                               [ABCDEFGHIJKLMNOPQRSTUVWXYZ___])])

  dnl Search for lib[]Name and define LIB[]NAME, LTLIB[]NAME and INC[]NAME
  dnl accordingly.
  AC_LIB_LINKFLAGS_BODY([$1], [$2])

  dnl Add $INC[]NAME to CPPFLAGS before performing the following checks,
  dnl because if the user has installed lib[]Name and not disabled its use
  dnl via --without-lib[]Name-prefix, he wants to use it.
  ac_save_CPPFLAGS="$CPPFLAGS"
  AC_LIB_APPENDTOVAR([CPPFLAGS], [$INC]NAME)

  AC_CACHE_CHECK([for lib[]$1], [ac_cv_lib[]Name], [
    ac_save_LIBS="$LIBS"
    LIBS="$LIBS $LIB[]NAME"
    AC_TRY_LINK([$3], [$4], [ac_cv_lib[]Name=yes], [ac_cv_lib[]Name=no])
    LIBS="$ac_save_LIBS"
  ])
  if test "$ac_cv_lib[]Name" = yes; then
    HAVE_LIB[]NAME=yes
    AC_DEFINE([HAVE_LIB]NAME, 1, [Define if you have the $1 library.])
    AC_MSG_CHECKING([how to link with lib[]$1])
    AC_MSG_RESULT([$LIB[]NAME])
  else
    HAVE_LIB[]NAME=no
    dnl If $LIB[]NAME didn't lead to a usable library, we don't need
    dnl $INC[]NAME either.
    CPPFLAGS="$ac_save_CPPFLAGS"
    LIB[]NAME=
    LTLIB[]NAME=
  fi
  AC_SUBST([HAVE_LIB]NAME)
  AC_SUBST([LIB]NAME)
  AC_SUBST([LTLIB]NAME)
  undefine([Name])
  undefine([NAME])
])

dnl Determine the platform dependent parameters needed to use rpath:
dnl libext, shlibext, hardcode_libdir_flag_spec, hardcode_libdir_separator,
dnl hardcode_direct, hardcode_minus_L.
AC_DEFUN([AC_LIB_RPATH],
[
  dnl Tell automake >= 1.10 to complain if config.rpath is missing.
  m4_ifdef([AC_REQUIRE_AUX_FILE], [AC_REQUIRE_AUX_FILE([config.rpath])])
  AC_REQUIRE([AC_PROG_CC])                dnl we use $CC, $GCC, $LDFLAGS
  AC_REQUIRE([AC_LIB_PROG_LD])            dnl we use $LD, $with_gnu_ld
  AC_REQUIRE([AC_CANONICAL_HOST])         dnl we use $host
  AC_REQUIRE([AC_CONFIG_AUX_DIR_DEFAULT]) dnl we use $ac_aux_dir
  AC_CACHE_CHECK([for shared library run path origin], acl_cv_rpath, [
    CC="$CC" GCC="$GCC" LDFLAGS="$LDFLAGS" LD="$LD" with_gnu_ld="$with_gnu_ld" \
    ${CONFIG_SHELL-/bin/sh} "$ac_aux_dir/config.rpath" "$host" > conftest.sh
    . ./conftest.sh
    rm -f ./conftest.sh
    acl_cv_rpath=done
  ])
  wl="$acl_cv_wl"
  libext="$acl_cv_libext"
  shlibext="$acl_cv_shlibext"
  hardcode_libdir_flag_spec="$acl_cv_hardcode_libdir_flag_spec"
  hardcode_libdir_separator="$acl_cv_hardcode_libdir_separator"
  hardcode_direct="$acl_cv_hardcode_direct"
  hardcode_minus_L="$acl_cv_hardcode_minus_L"
  dnl Determine whether the user wants rpath handling at all.
  AC_ARG_ENABLE(rpath,
    [  --disable-rpath         do not hardcode runtime library paths],
    :, enable_rpath=yes)
])

dnl AC_LIB_LINKFLAGS_BODY(name [, dependencies]) searches for libname and
dnl the libraries corresponding to explicit and implicit dependencies.
dnl Sets the LIB${NAME}, LTLIB${NAME} and INC${NAME} variables.
AC_DEFUN([AC_LIB_LINKFLAGS_BODY],
[
  define([NAME],[translit([$1],[abcdefghijklmnopqrstuvwxyz./-],
                               [ABCDEFGHIJKLMNOPQRSTUVWXYZ___])])
  dnl By default, look in $includedir and $libdir.
  use_additional=yes
  AC_LIB_WITH_FINAL_PREFIX([
    eval additional_includedir=\"$includedir\"
    eval additional_libdir=\"$libdir\"
  ])
  AC_LIB_ARG_WITH([lib$1-prefix],
[  --with-lib$1-prefix[=DIR]  search for lib$1 in DIR/include and DIR/lib
  --without-lib$1-prefix     don't search for lib$1 in includedir and libdir],
[
    if test "X$withval" = "Xno"; then
      use_additional=no
    else
      if test "X$withval" = "X"; then
        AC_LIB_WITH_FINAL_PREFIX([
          eval additional_includedir=\"$includedir\"
          eval additional_libdir=\"$libdir\"
        ])
      else
        additional_includedir="$withval/include"
        additional_libdir="$withval/lib"
      fi
    fi
])
  dnl Search the library and its dependencies in $additional_libdir and
  dnl $LDFLAGS. Using breadth-first-seach.
  LIB[]NAME=
  LTLIB[]NAME=
  INC[]NAME=
  rpathdirs=
  ltrpathdirs=
  names_already_handled=
  names_next_round='$1 $2'
  while test -n "$names_next_round"; do
    names_this_round="$names_next_round"
    names_next_round=
    for name in $names_this_round; do
      already_handled=
      for n in $names_already_handled; do
        if test "$n" = "$name"; then
          already_handled=yes
          break
        fi
      done
      if test -z "$already_handled"; then
        names_already_handled="$names_already_handled $name"
        dnl See if it was already located by an earlier AC_LIB_LINKFLAGS
        dnl or AC_LIB_HAVE_LINKFLAGS call.
        uppername=`echo "$name" | sed -e 'y|abcdefghijklmnopqrstuvwxyz./-|ABCDEFGHIJKLMNOPQRSTUVWXYZ___|'`
        eval value=\"\$HAVE_LIB$uppername\"
        if test -n "$value"; then
          if test "$value" = yes; then
            eval value=\"\$LIB$uppername\"
            test -z "$value" || LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$value"
            eval value=\"\$LTLIB$uppername\"
            test -z "$value" || LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }$value"
          else
            dnl An earlier call to AC_LIB_HAVE_LINKFLAGS has determined
            dnl that this library doesn't exist. So just drop it.
            :
          fi
        else
          dnl Search the library lib$name in $additional_libdir and $LDFLAGS
          dnl and the already constructed $LIBNAME/$LTLIBNAME.
          found_dir=
          found_la=
          found_so=
          found_a=
          if test $use_additional = yes; then
            if test -n "$shlibext" && test -f "$additional_libdir/lib$name.$shlibext"; then
              found_dir="$additional_libdir"
              found_so="$additional_libdir/lib$name.$shlibext"
              if test -f "$additional_libdir/lib$name.la"; then
                found_la="$additional_libdir/lib$name.la"
              fi
            else
              if test -f "$additional_libdir/lib$name.$libext"; then
                found_dir="$additional_libdir"
                found_a="$additional_libdir/lib$name.$libext"
                if test -f "$additional_libdir/lib$name.la"; then
                  found_la="$additional_libdir/lib$name.la"
                fi
              fi
            fi
          fi
          if test "X$found_dir" = "X"; then
            for x in $LDFLAGS $LTLIB[]NAME; do
              AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
              case "$x" in
                -L*)
                  dir=`echo "X$x" | sed -e 's/^X-L//'`
                  if test -n "$shlibext" && test -f "$dir/lib$name.$shlibext"; then
                    found_dir="$dir"
                    found_so="$dir/lib$name.$shlibext"
                    if test -f "$dir/lib$name.la"; then
                      found_la="$dir/lib$name.la"
                    fi
                  else
                    if test -f "$dir/lib$name.$libext"; then
                      found_dir="$dir"
                      found_a="$dir/lib$name.$libext"
                      if test -f "$dir/lib$name.la"; then
                        found_la="$dir/lib$name.la"
                      fi
                    fi
                  fi
                  ;;
              esac
              if test "X$found_dir" != "X"; then
                break
              fi
            done
          fi
          if test "X$found_dir" != "X"; then
            dnl Found the library.
            LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-L$found_dir -l$name"
            if test "X$found_so" != "X"; then
              dnl Linking with a shared library. We attempt to hardcode its
              dnl directory into the executable's runpath, unless it's the
              dnl standard /usr/lib.
              if test "$enable_rpath" = no || test "X$found_dir" = "X/usr/lib"; then
                dnl No hardcoding is needed.
                LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
              else
                dnl Use an explicit option to hardcode DIR into the resulting
                dnl binary.
                dnl Potentially add DIR to ltrpathdirs.
                dnl The ltrpathdirs will be appended to $LTLIBNAME at the end.
                haveit=
                for x in $ltrpathdirs; do
                  if test "X$x" = "X$found_dir"; then
                    haveit=yes
                    break
                  fi
                done
                if test -z "$haveit"; then
                  ltrpathdirs="$ltrpathdirs $found_dir"
                fi
                dnl The hardcoding into $LIBNAME is system dependent.
                if test "$hardcode_direct" = yes; then
                  dnl Using DIR/libNAME.so during linking hardcodes DIR into the
                  dnl resulting binary.
                  LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
                else
                  if test -n "$hardcode_libdir_flag_spec" && test "$hardcode_minus_L" = no; then
                    dnl Use an explicit option to hardcode DIR into the resulting
                    dnl binary.
                    LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
                    dnl Potentially add DIR to rpathdirs.
                    dnl The rpathdirs will be appended to $LIBNAME at the end.
                    haveit=
                    for x in $rpathdirs; do
                      if test "X$x" = "X$found_dir"; then
                        haveit=yes
                        break
                      fi
                    done
                    if test -z "$haveit"; then
                      rpathdirs="$rpathdirs $found_dir"
                    fi
                  else
                    dnl Rely on "-L$found_dir".
                    dnl But don't add it if it's already contained in the LDFLAGS
                    dnl or the already constructed $LIBNAME
                    haveit=
                    for x in $LDFLAGS $LIB[]NAME; do
                      AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                      if test "X$x" = "X-L$found_dir"; then
                        haveit=yes
                        break
                      fi
                    done
                    if test -z "$haveit"; then
                      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-L$found_dir"
                    fi
                    if test "$hardcode_minus_L" != no; then
                      dnl FIXME: Not sure whether we should use
                      dnl "-L$found_dir -l$name" or "-L$found_dir $found_so"
                      dnl here.
                      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
                    else
                      dnl We cannot use $hardcode_runpath_var and LD_RUN_PATH
                      dnl here, because this doesn't fit in flags passed to the
                      dnl compiler. So give up. No hardcoding. This affects only
                      dnl very old systems.
                      dnl FIXME: Not sure whether we should use
                      dnl "-L$found_dir -l$name" or "-L$found_dir $found_so"
                      dnl here.
                      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-l$name"
                    fi
                  fi
                fi
              fi
            else
              if test "X$found_a" != "X"; then
                dnl Linking with a static library.
                LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_a"
              else
                dnl We shouldn't come here, but anyway it's good to have a
                dnl fallback.
                LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-L$found_dir -l$name"
              fi
            fi
            dnl Assume the include files are nearby.
            additional_includedir=
            case "$found_dir" in
              */lib | */lib/)
                basedir=`echo "X$found_dir" | sed -e 's,^X,,' -e 's,/lib/*$,,'`
                additional_includedir="$basedir/include"
                ;;
            esac
            if test "X$additional_includedir" != "X"; then
              dnl Potentially add $additional_includedir to $INCNAME.
              dnl But don't add it
              dnl   1. if it's the standard /usr/include,
              dnl   2. if it's /usr/local/include and we are using GCC on Linux,
              dnl   3. if it's already present in $CPPFLAGS or the already
              dnl      constructed $INCNAME,
              dnl   4. if it doesn't exist as a directory.
              if test "X$additional_includedir" != "X/usr/include"; then
                haveit=
                if test "X$additional_includedir" = "X/usr/local/include"; then
                  if test -n "$GCC"; then
                    case $host_os in
                      linux* | gnu* | k*bsd*-gnu) haveit=yes;;
                    esac
                  fi
                fi
                if test -z "$haveit"; then
                  for x in $CPPFLAGS $INC[]NAME; do
                    AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                    if test "X$x" = "X-I$additional_includedir"; then
                      haveit=yes
                      break
                    fi
                  done
                  if test -z "$haveit"; then
                    if test -d "$additional_includedir"; then
                      dnl Really add $additional_includedir to $INCNAME.
                      INC[]NAME="${INC[]NAME}${INC[]NAME:+ }-I$additional_includedir"
                    fi
                  fi
                fi
              fi
            fi
            dnl Look for dependencies.
            if test -n "$found_la"; then
              dnl Read the .la file. It defines the variables
              dnl dlname, library_names, old_library, dependency_libs, current,
              dnl age, revision, installed, dlopen, dlpreopen, libdir.
              save_libdir="$libdir"
              case "$found_la" in
                */* | *\\*) . "$found_la" ;;
                *) . "./$found_la" ;;
              esac
              libdir="$save_libdir"
              dnl We use only dependency_libs.
              for dep in $dependency_libs; do
                case "$dep" in
                  -L*)
                    additional_libdir=`echo "X$dep" | sed -e 's/^X-L//'`
                    dnl Potentially add $additional_libdir to $LIBNAME and $LTLIBNAME.
                    dnl But don't add it
                    dnl   1. if it's the standard /usr/lib,
                    dnl   2. if it's /usr/local/lib and we are using GCC on Linux,
                    dnl   3. if it's already present in $LDFLAGS or the already
                    dnl      constructed $LIBNAME,
                    dnl   4. if it doesn't exist as a directory.
                    if test "X$additional_libdir" != "X/usr/lib"; then
                      haveit=
                      if test "X$additional_libdir" = "X/usr/local/lib"; then
                        if test -n "$GCC"; then
                          case $host_os in
                            linux* | gnu* | k*bsd*-gnu) haveit=yes;;
                          esac
                        fi
                      fi
                      if test -z "$haveit"; then
                        haveit=
                        for x in $LDFLAGS $LIB[]NAME; do
                          AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                          if test "X$x" = "X-L$additional_libdir"; then
                            haveit=yes
                            break
                          fi
                        done
                        if test -z "$haveit"; then
                          if test -d "$additional_libdir"; then
                            dnl Really add $additional_libdir to $LIBNAME.
                            LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-L$additional_libdir"
                          fi
                        fi
                        haveit=
                        for x in $LDFLAGS $LTLIB[]NAME; do
                          AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                          if test "X$x" = "X-L$additional_libdir"; then
                            haveit=yes
                            break
                          fi
                        done
                        if test -z "$haveit"; then
                          if test -d "$additional_libdir"; then
                            dnl Really add $additional_libdir to $LTLIBNAME.
                            LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-L$additional_libdir"
                          fi
                        fi
                      fi
                    fi
                    ;;
                  -R*)
                    dir=`echo "X$dep" | sed -e 's/^X-R//'`
                    if test "$enable_rpath" != no; then
                      dnl Potentially add DIR to rpathdirs.
                      dnl The rpathdirs will be appended to $LIBNAME at the end.
                      haveit=
                      for x in $rpathdirs; do
                        if test "X$x" = "X$dir"; then
                          haveit=yes
                          break
                        fi
                      done
                      if test -z "$haveit"; then
                        rpathdirs="$rpathdirs $dir"
                      fi
                      dnl Potentially add DIR to ltrpathdirs.
                      dnl The ltrpathdirs will be appended to $LTLIBNAME at the end.
                      haveit=
                      for x in $ltrpathdirs; do
                        if test "X$x" = "X$dir"; then
                          haveit=yes
                          break
                        fi
                      done
                      if test -z "$haveit"; then
                        ltrpathdirs="$ltrpathdirs $dir"
                      fi
                    fi
                    ;;
                  -l*)
                    dnl Handle this in the next round.
                    names_next_round="$names_next_round "`echo "X$dep" | sed -e 's/^X-l//'`
                    ;;
                  *.la)
                    dnl Handle this in the next round. Throw away the .la's
                    dnl directory; it is already contained in a preceding -L
                    dnl option.
                    names_next_round="$names_next_round "`echo "X$dep" | sed -e 's,^X.*/,,' -e 's,^lib,,' -e 's,\.la$,,'`
                    ;;
                  *)
                    dnl Most likely an immediate library name.
                    LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$dep"
                    LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }$dep"
                    ;;
                esac
              done
            fi
          else
            dnl Didn't find the library; assume it is in the system directories
            dnl known to the linker and runtime loader. (All the system
            dnl directories known to the linker should also be known to the
            dnl runtime loader, otherwise the system is severely misconfigured.)
            LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-l$name"
            LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-l$name"
          fi
        fi
      fi
    done
  done
  if test "X$rpathdirs" != "X"; then
    if test -n "$hardcode_libdir_separator"; then
      dnl Weird platform: only the last -rpath option counts, the user must
      dnl pass all path elements in one option. We can arrange that for a
      dnl single library, but not when more than one $LIBNAMEs are used.
      alldirs=
      for found_dir in $rpathdirs; do
        alldirs="${alldirs}${alldirs:+$hardcode_libdir_separator}$found_dir"
      done
      dnl Note: hardcode_libdir_flag_spec uses $libdir and $wl.
      acl_save_libdir="$libdir"
      libdir="$alldirs"
      eval flag=\"$hardcode_libdir_flag_spec\"
      libdir="$acl_save_libdir"
      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$flag"
    else
      dnl The -rpath options are cumulative.
      for found_dir in $rpathdirs; do
        acl_save_libdir="$libdir"
        libdir="$found_dir"
        eval flag=\"$hardcode_libdir_flag_spec\"
        libdir="$acl_save_libdir"
        LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$flag"
      done
    fi
  fi
  if test "X$ltrpathdirs" != "X"; then
    dnl When using libtool, the option that works for both libraries and
    dnl executables is -R. The -R options are cumulative.
    for found_dir in $ltrpathdirs; do
      LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-R$found_dir"
    done
  fi
])

dnl AC_LIB_APPENDTOVAR(VAR, CONTENTS) appends the elements of CONTENTS to VAR,
dnl unless already present in VAR.
dnl Works only for CPPFLAGS, not for LIB* variables because that sometimes
dnl contains two or three consecutive elements that belong together.
AC_DEFUN([AC_LIB_APPENDTOVAR],
[
  for element in [$2]; do
    haveit=
    for x in $[$1]; do
      AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
      if test "X$x" = "X$element"; then
        haveit=yes
        break
      fi
    done
    if test -z "$haveit"; then
      [$1]="${[$1]}${[$1]:+ }$element"
    fi
  done
])

# lib-ld.m4 serial 3 (gettext-0.13)
dnl Copyright (C) 1996-2003 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Subroutines of libtool.m4,
dnl with replacements s/AC_/AC_LIB/ and s/lt_cv/acl_cv/ to avoid collision
dnl with libtool.m4.

dnl From libtool-1.4. Sets the variable with_gnu_ld to yes or no.
AC_DEFUN([AC_LIB_PROG_LD_GNU],
[AC_CACHE_CHECK([if the linker ($LD) is GNU ld], acl_cv_prog_gnu_ld,
[# I'd rather use --version here, but apparently some GNU ld's only accept -v.
case `$LD -v 2>&1 </dev/null` in
*GNU* | *'with BFD'*)
  acl_cv_prog_gnu_ld=yes ;;
*)
  acl_cv_prog_gnu_ld=no ;;
esac])
with_gnu_ld=$acl_cv_prog_gnu_ld
])

dnl From libtool-1.4. Sets the variable LD.
AC_DEFUN([AC_LIB_PROG_LD],
[AC_ARG_WITH(gnu-ld,
[  --with-gnu-ld           assume the C compiler uses GNU ld [default=no]],
test "$withval" = no || with_gnu_ld=yes, with_gnu_ld=no)
AC_REQUIRE([AC_PROG_CC])dnl
AC_REQUIRE([AC_CANONICAL_HOST])dnl
# Prepare PATH_SEPARATOR.
# The user is always right.
if test "${PATH_SEPARATOR+set}" != set; then
  echo "#! /bin/sh" >conf$$.sh
  echo  "exit 0"   >>conf$$.sh
  chmod +x conf$$.sh
  if (PATH="/nonexistent;."; conf$$.sh) >/dev/null 2>&1; then
    PATH_SEPARATOR=';'
  else
    PATH_SEPARATOR=:
  fi
  rm -f conf$$.sh
fi
ac_prog=ld
if test "$GCC" = yes; then
  # Check if gcc -print-prog-name=ld gives a path.
  AC_MSG_CHECKING([for ld used by GCC])
  case $host in
  *-*-mingw*)
    # gcc leaves a trailing carriage return which upsets mingw
    ac_prog=`($CC -print-prog-name=ld) 2>&5 | tr -d '\015'` ;;
  *)
    ac_prog=`($CC -print-prog-name=ld) 2>&5` ;;
  esac
  case $ac_prog in
    # Accept absolute paths.
    [[\\/]* | [A-Za-z]:[\\/]*)]
      [re_direlt='/[^/][^/]*/\.\./']
      # Canonicalize the path of ld
      ac_prog=`echo $ac_prog| sed 's%\\\\%/%g'`
      while echo $ac_prog | grep "$re_direlt" > /dev/null 2>&1; do
	ac_prog=`echo $ac_prog| sed "s%$re_direlt%/%"`
      done
      test -z "$LD" && LD="$ac_prog"
      ;;
  "")
    # If it fails, then pretend we aren't using GCC.
    ac_prog=ld
    ;;
  *)
    # If it is relative, then search for the first ld in PATH.
    with_gnu_ld=unknown
    ;;
  esac
elif test "$with_gnu_ld" = yes; then
  AC_MSG_CHECKING([for GNU ld])
else
  AC_MSG_CHECKING([for non-GNU ld])
fi
AC_CACHE_VAL(acl_cv_path_LD,
[if test -z "$LD"; then
  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS="${IFS}${PATH_SEPARATOR-:}"
  for ac_dir in $PATH; do
    test -z "$ac_dir" && ac_dir=.
    if test -f "$ac_dir/$ac_prog" || test -f "$ac_dir/$ac_prog$ac_exeext"; then
      acl_cv_path_LD="$ac_dir/$ac_prog"
      # Check to see if the program is GNU ld.  I'd rather use --version,
      # but apparently some GNU ld's only accept -v.
      # Break only if it was the GNU/non-GNU ld that we prefer.
      case `"$acl_cv_path_LD" -v 2>&1 < /dev/null` in
      *GNU* | *'with BFD'*)
	test "$with_gnu_ld" != no && break ;;
      *)
	test "$with_gnu_ld" != yes && break ;;
      esac
    fi
  done
  IFS="$ac_save_ifs"
else
  acl_cv_path_LD="$LD" # Let the user override the test with a path.
fi])
LD="$acl_cv_path_LD"
if test -n "$LD"; then
  AC_MSG_RESULT($LD)
else
  AC_MSG_RESULT(no)
fi
test -z "$LD" && AC_MSG_ERROR([no acceptable ld found in \$PATH])
AC_LIB_PROG_LD_GNU
])

# iconv.m4 serial AM4 (gettext-0.11.3)
dnl Copyright (C) 2000-2002 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_DEFUN([AM_ICONV_LINKFLAGS_BODY],
[
  dnl Prerequisites of AC_LIB_LINKFLAGS_BODY.
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])

  dnl Search for libiconv and define LIBICONV, LTLIBICONV and INCICONV
  dnl accordingly.
  AC_LIB_LINKFLAGS_BODY([iconv])
])

AC_DEFUN([AM_ICONV_LINK],
[
  dnl Some systems have iconv in libc, some have it in libiconv (OSF/1 and
  dnl those with the standalone portable GNU libiconv installed).

  dnl Search for libiconv and define LIBICONV, LTLIBICONV and INCICONV
  dnl accordingly.
  AC_REQUIRE([AM_ICONV_LINKFLAGS_BODY])

  dnl Add $INCICONV to CPPFLAGS before performing the following checks,
  dnl because if the user has installed libiconv and not disabled its use
  dnl via --without-libiconv-prefix, he wants to use it. The first
  dnl AC_TRY_LINK will then fail, the second AC_TRY_LINK will succeed.
  am_save_CPPFLAGS="$CPPFLAGS"
  AC_LIB_APPENDTOVAR([CPPFLAGS], [$INCICONV])

  AC_CACHE_CHECK(for iconv, am_cv_func_iconv, [
    am_cv_func_iconv="no, consider installing GNU libiconv"
    am_cv_lib_iconv=no
    AC_TRY_LINK([#include <stdlib.h>
#include <iconv.h>],
      [iconv_t cd = iconv_open("","");
       iconv(cd,NULL,NULL,NULL,NULL);
       iconv_close(cd);],
      am_cv_func_iconv=yes)
    if test "$am_cv_func_iconv" != yes; then
      am_save_LIBS="$LIBS"
      LIBS="$LIBS $LIBICONV"
      AC_TRY_LINK([#include <stdlib.h>
#include <iconv.h>],
        [iconv_t cd = iconv_open("","");
         iconv(cd,NULL,NULL,NULL,NULL);
         iconv_close(cd);],
        am_cv_lib_iconv=yes
        am_cv_func_iconv=yes)
      LIBS="$am_save_LIBS"
    fi
  ])
  if test "$am_cv_func_iconv" = yes; then
    AC_DEFINE(HAVE_ICONV, 1, [Define if you have the iconv() function.])
  fi
  if test "$am_cv_lib_iconv" = yes; then
    AC_MSG_CHECKING([how to link with libiconv])
    AC_MSG_RESULT([$LIBICONV])
  else
    dnl If $LIBICONV didn't lead to a usable library, we don't need $INCICONV
    dnl either.
    CPPFLAGS="$am_save_CPPFLAGS"
    LIBICONV=
    LTLIBICONV=
  fi
  AC_SUBST(LIBICONV)
  AC_SUBST(LTLIBICONV)
])

AC_DEFUN([AM_ICONV],
[
  AM_ICONV_LINK
  if test "$am_cv_func_iconv" = yes; then
    AC_MSG_CHECKING([for iconv declaration])
    AC_CACHE_VAL(am_cv_proto_iconv, [
      AC_TRY_COMPILE([
#include <stdlib.h>
#include <iconv.h>
extern
#ifdef __cplusplus
"C"
#endif
#if defined(__STDC__) || defined(__cplusplus)
size_t iconv (iconv_t cd, char * *inbuf, size_t *inbytesleft, char * *outbuf, size_t *outbytesleft);
#else
size_t iconv();
#endif
], [], am_cv_proto_iconv_arg1="", am_cv_proto_iconv_arg1="const")
      am_cv_proto_iconv="extern size_t iconv (iconv_t cd, $am_cv_proto_iconv_arg1 char * *inbuf, size_t *inbytesleft, char * *outbuf, size_t *outbytesleft);"])
    am_cv_proto_iconv=`echo "[$]am_cv_proto_iconv" | tr -s ' ' | sed -e 's/( /(/'`
    AC_MSG_RESULT([$]{ac_t:-
         }[$]am_cv_proto_iconv)
    AC_DEFINE_UNQUOTED(ICONV_CONST, $am_cv_proto_iconv_arg1,
      [Define as const if the declaration of iconv() needs const.])
  fi
])

# glibc2.m4 serial 1
dnl Copyright (C) 2000-2002, 2004 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# Test for the GNU C Library, version 2.0 or newer.
# From Bruno Haible.

AC_DEFUN([gt_GLIBC2],
  [
    AC_CACHE_CHECK(whether we are using the GNU C Library 2 or newer,
      ac_cv_gnu_library_2,
      [AC_EGREP_CPP([Lucky GNU user],
	[
#include <features.h>
#ifdef __GNU_LIBRARY__
 #if (__GLIBC__ >= 2)
  Lucky GNU user
 #endif
#endif
	],
	ac_cv_gnu_library_2=yes,
	ac_cv_gnu_library_2=no)
      ]
    )
    AC_SUBST(GLIBC2)
    GLIBC2="$ac_cv_gnu_library_2"
  ]
)

# signed.m4 serial 1 (gettext-0.10.40)
dnl Copyright (C) 2001-2002 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_DEFUN([bh_C_SIGNED],
[
  AC_CACHE_CHECK([for signed], bh_cv_c_signed,
   [AC_TRY_COMPILE(, [signed char x;], bh_cv_c_signed=yes, bh_cv_c_signed=no)])
  if test $bh_cv_c_signed = no; then
    AC_DEFINE(signed, ,
              [Define to empty if the C compiler doesn't support this keyword.])
  fi
])

# longlong.m4 serial 5
dnl Copyright (C) 1999-2004 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert.

# Define HAVE_LONG_LONG if 'long long' works.

AC_DEFUN([gl_AC_TYPE_LONG_LONG],
[
  AC_CACHE_CHECK([for long long], ac_cv_type_long_long,
  [AC_TRY_LINK([long long ll = 1LL; int i = 63;],
    [long long llmax = (long long) -1;
     return ll << i | ll >> i | llmax / ll | llmax % ll;],
    ac_cv_type_long_long=yes,
    ac_cv_type_long_long=no)])
  if test $ac_cv_type_long_long = yes; then
    AC_DEFINE(HAVE_LONG_LONG, 1,
      [Define if you have the 'long long' type.])
  fi
])

# longdouble.m4 serial 1 (gettext-0.12)
dnl Copyright (C) 2002-2003 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.
dnl Test whether the compiler supports the 'long double' type.
dnl Prerequisite: AC_PROG_CC

AC_DEFUN([gt_TYPE_LONGDOUBLE],
[
  AC_CACHE_CHECK([for long double], gt_cv_c_long_double,
    [if test "$GCC" = yes; then
       gt_cv_c_long_double=yes
     else
       AC_TRY_COMPILE([
         /* The Stardent Vistra knows sizeof(long double), but does not support it.  */
         long double foo = 0.0;
         /* On Ultrix 4.3 cc, long double is 4 and double is 8.  */
         int array [2*(sizeof(long double) >= sizeof(double)) - 1];
         ], ,
         gt_cv_c_long_double=yes, gt_cv_c_long_double=no)
     fi])
  if test $gt_cv_c_long_double = yes; then
    AC_DEFINE(HAVE_LONG_DOUBLE, 1, [Define if you have the 'long double' type.])
  fi
])

# wchar_t.m4 serial 1 (gettext-0.12)
dnl Copyright (C) 2002-2003 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.
dnl Test whether <stddef.h> has the 'wchar_t' type.
dnl Prerequisite: AC_PROG_CC

AC_DEFUN([gt_TYPE_WCHAR_T],
[
  AC_CACHE_CHECK([for wchar_t], gt_cv_c_wchar_t,
    [AC_TRY_COMPILE([#include <stddef.h>
       wchar_t foo = (wchar_t)'\0';], ,
       gt_cv_c_wchar_t=yes, gt_cv_c_wchar_t=no)])
  if test $gt_cv_c_wchar_t = yes; then
    AC_DEFINE(HAVE_WCHAR_T, 1, [Define if you have the 'wchar_t' type.])
  fi
])

# wint_t.m4 serial 1 (gettext-0.12)
dnl Copyright (C) 2003 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.
dnl Test whether <wchar.h> has the 'wint_t' type.
dnl Prerequisite: AC_PROG_CC

AC_DEFUN([gt_TYPE_WINT_T],
[
  AC_CACHE_CHECK([for wint_t], gt_cv_c_wint_t,
    [AC_TRY_COMPILE([#include <wchar.h>
       wint_t foo = (wchar_t)'\0';], ,
       gt_cv_c_wint_t=yes, gt_cv_c_wint_t=no)])
  if test $gt_cv_c_wint_t = yes; then
    AC_DEFINE(HAVE_WINT_T, 1, [Define if you have the 'wint_t' type.])
  fi
])

# inttypes_h.m4 serial 6
dnl Copyright (C) 1997-2004 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert.

# Define HAVE_INTTYPES_H_WITH_UINTMAX if <inttypes.h> exists,
# doesn't clash with <sys/types.h>, and declares uintmax_t.

AC_DEFUN([gl_AC_HEADER_INTTYPES_H],
[
  AC_CACHE_CHECK([for inttypes.h], gl_cv_header_inttypes_h,
  [AC_TRY_COMPILE(
    [#include <sys/types.h>
#include <inttypes.h>],
    [uintmax_t i = (uintmax_t) -1;],
    gl_cv_header_inttypes_h=yes,
    gl_cv_header_inttypes_h=no)])
  if test $gl_cv_header_inttypes_h = yes; then
    AC_DEFINE_UNQUOTED(HAVE_INTTYPES_H_WITH_UINTMAX, 1,
      [Define if <inttypes.h> exists, doesn't clash with <sys/types.h>,
       and declares uintmax_t. ])
  fi
])

# stdint_h.m4 serial 5
dnl Copyright (C) 1997-2004 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert.

# Define HAVE_STDINT_H_WITH_UINTMAX if <stdint.h> exists,
# doesn't clash with <sys/types.h>, and declares uintmax_t.

AC_DEFUN([gl_AC_HEADER_STDINT_H],
[
  AC_CACHE_CHECK([for stdint.h], gl_cv_header_stdint_h,
  [AC_TRY_COMPILE(
    [#include <sys/types.h>
#include <stdint.h>],
    [uintmax_t i = (uintmax_t) -1;],
    gl_cv_header_stdint_h=yes,
    gl_cv_header_stdint_h=no)])
  if test $gl_cv_header_stdint_h = yes; then
    AC_DEFINE_UNQUOTED(HAVE_STDINT_H_WITH_UINTMAX, 1,
      [Define if <stdint.h> exists, doesn't clash with <sys/types.h>,
       and declares uintmax_t. ])
  fi
])

# intmax.m4 serial 2 (gettext-0.14.2)
dnl Copyright (C) 2002-2005 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.
dnl Test whether the system has the 'intmax_t' type, but don't attempt to
dnl find a replacement if it is lacking.

AC_DEFUN([gt_TYPE_INTMAX_T],
[
  AC_REQUIRE([gl_AC_HEADER_INTTYPES_H])
  AC_REQUIRE([gl_AC_HEADER_STDINT_H])
  AC_CACHE_CHECK(for intmax_t, gt_cv_c_intmax_t,
    [AC_TRY_COMPILE([
#include <stddef.h>
#include <stdlib.h>
#if HAVE_STDINT_H_WITH_UINTMAX
#include <stdint.h>
#endif
#if HAVE_INTTYPES_H_WITH_UINTMAX
#include <inttypes.h>
#endif
], [intmax_t x = -1;], gt_cv_c_intmax_t=yes, gt_cv_c_intmax_t=no)])
  if test $gt_cv_c_intmax_t = yes; then
    AC_DEFINE(HAVE_INTMAX_T, 1,
      [Define if you have the 'intmax_t' type in <stdint.h> or <inttypes.h>.])
  fi
])

# printf-posix.m4 serial 2 (gettext-0.13.1)
dnl Copyright (C) 2003 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.
dnl Test whether the printf() function supports POSIX/XSI format strings with
dnl positions.

AC_DEFUN([gt_PRINTF_POSIX],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_CACHE_CHECK([whether printf() supports POSIX/XSI format strings],
    gt_cv_func_printf_posix,
    [
      AC_TRY_RUN([
#include <stdio.h>
#include <string.h>
/* The string "%2$d %1$d", with dollar characters protected from the shell's
   dollar expansion (possibly an autoconf bug).  */
static char format[] = { '%', '2', '$', 'd', ' ', '%', '1', '$', 'd', '\0' };
static char buf[100];
int main ()
{
  sprintf (buf, format, 33, 55);
  return (strcmp (buf, "55 33") != 0);
}], gt_cv_func_printf_posix=yes, gt_cv_func_printf_posix=no,
      [
        AC_EGREP_CPP(notposix, [
#if defined __NetBSD__ || defined _MSC_VER || defined __MINGW32__ || defined __CYGWIN__
  notposix
#endif
        ], gt_cv_func_printf_posix="guessing no",
           gt_cv_func_printf_posix="guessing yes")
      ])
    ])
  case $gt_cv_func_printf_posix in
    *yes)
      AC_DEFINE(HAVE_POSIX_PRINTF, 1,
        [Define if your printf() function supports format strings with positions.])
      ;;
  esac
])

# glibc21.m4 serial 3
dnl Copyright (C) 2000-2002, 2004 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# Test for the GNU C Library, version 2.1 or newer.
# From Bruno Haible.

AC_DEFUN([gl_GLIBC21],
  [
    AC_CACHE_CHECK(whether we are using the GNU C Library 2.1 or newer,
      ac_cv_gnu_library_2_1,
      [AC_EGREP_CPP([Lucky GNU user],
	[
#include <features.h>
#ifdef __GNU_LIBRARY__
 #if (__GLIBC__ == 2 && __GLIBC_MINOR__ >= 1) || (__GLIBC__ > 2)
  Lucky GNU user
 #endif
#endif
	],
	ac_cv_gnu_library_2_1=yes,
	ac_cv_gnu_library_2_1=no)
      ]
    )
    AC_SUBST(GLIBC21)
    GLIBC21="$ac_cv_gnu_library_2_1"
  ]
)

# intdiv0.m4 serial 1 (gettext-0.11.3)
dnl Copyright (C) 2002 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_DEFUN([gt_INTDIV0],
[
  AC_REQUIRE([AC_PROG_CC])dnl
  AC_REQUIRE([AC_CANONICAL_HOST])dnl

  AC_CACHE_CHECK([whether integer division by zero raises SIGFPE],
    gt_cv_int_divbyzero_sigfpe,
    [
      AC_TRY_RUN([
#include <stdlib.h>
#include <signal.h>

static void
#ifdef __cplusplus
sigfpe_handler (int sig)
#else
sigfpe_handler (sig) int sig;
#endif
{
  /* Exit with code 0 if SIGFPE, with code 1 if any other signal.  */
  exit (sig != SIGFPE);
}

int x = 1;
int y = 0;
int z;
int nan;

int main ()
{
  signal (SIGFPE, sigfpe_handler);
/* IRIX and AIX (when "xlc -qcheck" is used) yield signal SIGTRAP.  */
#if (defined (__sgi) || defined (_AIX)) && defined (SIGTRAP)
  signal (SIGTRAP, sigfpe_handler);
#endif
/* Linux/SPARC yields signal SIGILL.  */
#if defined (__sparc__) && defined (__linux__)
  signal (SIGILL, sigfpe_handler);
#endif

  z = x / y;
  nan = y / y;
  exit (1);
}
], gt_cv_int_divbyzero_sigfpe=yes, gt_cv_int_divbyzero_sigfpe=no,
        [
          # Guess based on the CPU.
          case "$host_cpu" in
            alpha* | i[34567]86 | m68k | s390*)
              gt_cv_int_divbyzero_sigfpe="guessing yes";;
            *)
              gt_cv_int_divbyzero_sigfpe="guessing no";;
          esac
        ])
    ])
  case "$gt_cv_int_divbyzero_sigfpe" in
    *yes) value=1;;
    *) value=0;;
  esac
  AC_DEFINE_UNQUOTED(INTDIV0_RAISES_SIGFPE, $value,
    [Define if integer division by zero raises signal SIGFPE.])
])

# uintmax_t.m4 serial 9
dnl Copyright (C) 1997-2004 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert.

AC_PREREQ(2.13)

# Define uintmax_t to 'unsigned long' or 'unsigned long long'
# if it is not already defined in <stdint.h> or <inttypes.h>.

AC_DEFUN([gl_AC_TYPE_UINTMAX_T],
[
  AC_REQUIRE([gl_AC_HEADER_INTTYPES_H])
  AC_REQUIRE([gl_AC_HEADER_STDINT_H])
  if test $gl_cv_header_inttypes_h = no && test $gl_cv_header_stdint_h = no; then
    AC_REQUIRE([gl_AC_TYPE_UNSIGNED_LONG_LONG])
    test $ac_cv_type_unsigned_long_long = yes \
      && ac_type='unsigned long long' \
      || ac_type='unsigned long'
    AC_DEFINE_UNQUOTED(uintmax_t, $ac_type,
      [Define to unsigned long or unsigned long long
       if <stdint.h> and <inttypes.h> don't define.])
  else
    AC_DEFINE(HAVE_UINTMAX_T, 1,
      [Define if you have the 'uintmax_t' type in <stdint.h> or <inttypes.h>.])
  fi
])

# ulonglong.m4 serial 4
dnl Copyright (C) 1999-2004 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert.

# Define HAVE_UNSIGNED_LONG_LONG if 'unsigned long long' works.

AC_DEFUN([gl_AC_TYPE_UNSIGNED_LONG_LONG],
[
  AC_CACHE_CHECK([for unsigned long long], ac_cv_type_unsigned_long_long,
  [AC_TRY_LINK([unsigned long long ull = 1ULL; int i = 63;],
    [unsigned long long ullmax = (unsigned long long) -1;
     return ull << i | ull >> i | ullmax / ull | ullmax % ull;],
    ac_cv_type_unsigned_long_long=yes,
    ac_cv_type_unsigned_long_long=no)])
  if test $ac_cv_type_unsigned_long_long = yes; then
    AC_DEFINE(HAVE_UNSIGNED_LONG_LONG, 1,
      [Define if you have the 'unsigned long long' type.])
  fi
])

# inttypes.m4 serial 1 (gettext-0.11.4)
dnl Copyright (C) 1997-2002 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert.

# Define HAVE_INTTYPES_H if <inttypes.h> exists and doesn't clash with
# <sys/types.h>.

AC_DEFUN([gt_HEADER_INTTYPES_H],
[
  AC_CACHE_CHECK([for inttypes.h], gt_cv_header_inttypes_h,
  [
    AC_TRY_COMPILE(
      [#include <sys/types.h>
#include <inttypes.h>],
      [], gt_cv_header_inttypes_h=yes, gt_cv_header_inttypes_h=no)
  ])
  if test $gt_cv_header_inttypes_h = yes; then
    AC_DEFINE_UNQUOTED(HAVE_INTTYPES_H, 1,
      [Define if <inttypes.h> exists and doesn't clash with <sys/types.h>.])
  fi
])

# inttypes-pri.m4 serial 1 (gettext-0.11.4)
dnl Copyright (C) 1997-2002 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

# Define PRI_MACROS_BROKEN if <inttypes.h> exists and defines the PRI*
# macros to non-string values.  This is the case on AIX 4.3.3.

AC_DEFUN([gt_INTTYPES_PRI],
[
  AC_REQUIRE([gt_HEADER_INTTYPES_H])
  if test $gt_cv_header_inttypes_h = yes; then
    AC_CACHE_CHECK([whether the inttypes.h PRIxNN macros are broken],
      gt_cv_inttypes_pri_broken,
      [
        AC_TRY_COMPILE([#include <inttypes.h>
#ifdef PRId32
char *p = PRId32;
#endif
], [], gt_cv_inttypes_pri_broken=no, gt_cv_inttypes_pri_broken=yes)
      ])
  fi
  if test "$gt_cv_inttypes_pri_broken" = yes; then
    AC_DEFINE_UNQUOTED(PRI_MACROS_BROKEN, 1,
      [Define if <inttypes.h> exists and defines unusable PRI* macros.])
  fi
])

# xsize.m4 serial 3
dnl Copyright (C) 2003-2004 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_XSIZE],
[
  dnl Prerequisites of lib/xsize.h.
  AC_REQUIRE([gl_SIZE_MAX])
  AC_REQUIRE([AC_C_INLINE])
  AC_CHECK_HEADERS(stdint.h)
])

# size_max.m4 serial 2
dnl Copyright (C) 2003 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_DEFUN([gl_SIZE_MAX],
[
  AC_CHECK_HEADERS(stdint.h)
  dnl First test whether the system already has SIZE_MAX.
  AC_MSG_CHECKING([for SIZE_MAX])
  result=
  AC_EGREP_CPP([Found it], [
#include <limits.h>
#if HAVE_STDINT_H
#include <stdint.h>
#endif
#ifdef SIZE_MAX
Found it
#endif
], result=yes)
  if test -z "$result"; then
    dnl Define it ourselves. Here we assume that the type 'size_t' is not wider
    dnl than the type 'unsigned long'.
    dnl The _AC_COMPUTE_INT macro works up to LONG_MAX, since it uses 'expr',
    dnl which is guaranteed to work from LONG_MIN to LONG_MAX.
    _AC_COMPUTE_INT([~(size_t)0 / 10], res_hi,
      [#include <stddef.h>], result=?)
    _AC_COMPUTE_INT([~(size_t)0 % 10], res_lo,
      [#include <stddef.h>], result=?)
    _AC_COMPUTE_INT([sizeof (size_t) <= sizeof (unsigned int)], fits_in_uint,
      [#include <stddef.h>], result=?)
    if test "$fits_in_uint" = 1; then
      dnl Even though SIZE_MAX fits in an unsigned int, it must be of type
      dnl 'unsigned long' if the type 'size_t' is the same as 'unsigned long'.
      AC_TRY_COMPILE([#include <stddef.h>
        extern size_t foo;
        extern unsigned long foo;
        ], [], fits_in_uint=0)
    fi
    if test -z "$result"; then
      if test "$fits_in_uint" = 1; then
        result="$res_hi$res_lo"U
      else
        result="$res_hi$res_lo"UL
      fi
    else
      dnl Shouldn't happen, but who knows...
      result='~(size_t)0'
    fi
  fi
  AC_MSG_RESULT([$result])
  if test "$result" != yes; then
    AC_DEFINE_UNQUOTED([SIZE_MAX], [$result],
      [Define as the maximum value of type 'size_t', if the system doesn't define it.])
  fi
])

# codeset.m4 serial AM1 (gettext-0.10.40)
dnl Copyright (C) 2000-2002 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_DEFUN([AM_LANGINFO_CODESET],
[
  AC_CACHE_CHECK([for nl_langinfo and CODESET], am_cv_langinfo_codeset,
    [AC_TRY_LINK([#include <langinfo.h>],
      [char* cs = nl_langinfo(CODESET);],
      am_cv_langinfo_codeset=yes,
      am_cv_langinfo_codeset=no)
    ])
  if test $am_cv_langinfo_codeset = yes; then
    AC_DEFINE(HAVE_LANGINFO_CODESET, 1,
      [Define if you have <langinfo.h> and nl_langinfo(CODESET).])
  fi
])

# lcmessage.m4 serial 4 (gettext-0.14.2)
dnl Copyright (C) 1995-2002, 2004-2005 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl
dnl This file can can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1995.

# Check whether LC_MESSAGES is available in <locale.h>.

AC_DEFUN([gt_LC_MESSAGES],
[
  AC_CACHE_CHECK([for LC_MESSAGES], gt_cv_val_LC_MESSAGES,
    [AC_TRY_LINK([#include <locale.h>], [return LC_MESSAGES],
       gt_cv_val_LC_MESSAGES=yes, gt_cv_val_LC_MESSAGES=no)])
  if test $gt_cv_val_LC_MESSAGES = yes; then
    AC_DEFINE(HAVE_LC_MESSAGES, 1,
      [Define if your <locale.h> file defines LC_MESSAGES.])
  fi
])


dnl PKG_CHECK_MODULES(GSTUFF, gtk+-2.0 >= 1.3 glib = 1.3.4, action-if, action-not)
dnl defines GSTUFF_LIBS, GSTUFF_CFLAGS, see pkg-config man page
dnl also defines GSTUFF_PKG_ERRORS on error
AC_DEFUN([PKG_CHECK_MODULES], [
  succeeded=no

  if test -z "$PKG_CONFIG"; then
    AC_PATH_PROG(PKG_CONFIG, pkg-config, no)
  fi

  if test "$PKG_CONFIG" = "no" ; then
     echo "*** The pkg-config script could not be found. Make sure it is"
     echo "*** in your path, or set the PKG_CONFIG environment variable"
     echo "*** to the full path to pkg-config."
     echo "*** Or see http://www.freedesktop.org/software/pkgconfig to get pkg-config."
  else
     PKG_CONFIG_MIN_VERSION=0.9.0
     if $PKG_CONFIG --atleast-pkgconfig-version $PKG_CONFIG_MIN_VERSION; then
        AC_MSG_CHECKING(for $2)

        if $PKG_CONFIG --exists "$2" ; then
            AC_MSG_RESULT(yes)
            succeeded=yes

            AC_MSG_CHECKING($1_CFLAGS)
            $1_CFLAGS=`$PKG_CONFIG --cflags "$2"`
            AC_MSG_RESULT($$1_CFLAGS)

            AC_MSG_CHECKING($1_LIBS)
            $1_LIBS=`$PKG_CONFIG --libs "$2"`
            AC_MSG_RESULT($$1_LIBS)
        else
            $1_CFLAGS=""
            $1_LIBS=""
            ## If we have a custom action on failure, don't print errors, but 
            ## do set a variable so people can do so.
            $1_PKG_ERRORS=`$PKG_CONFIG --errors-to-stdout --print-errors "$2"`
            ifelse([$4], ,echo $$1_PKG_ERRORS,)
        fi

        AC_SUBST($1_CFLAGS)
        AC_SUBST($1_LIBS)
     else
        echo "*** Your version of pkg-config is too old. You need version $PKG_CONFIG_MIN_VERSION or newer."
        echo "*** See http://www.freedesktop.org/software/pkgconfig"
     fi
  fi

  if test $succeeded = yes; then
     ifelse([$3], , :, [$3])
  else
     ifelse([$4], , AC_MSG_ERROR([Library requirements ($2) not met; consider adjusting the PKG_CONFIG_PATH environment variable if your libraries are in a nonstandard prefix so pkg-config can find them.]), [$4])
  fi
])




dnl $Id$
dnl config.m4 for extension test4

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(test4, for test4 support,
dnl Make sure that the comment is aligned:
dnl [  --with-test4             Include test4 support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(test4, whether to enable test4 support,
dnl Make sure that the comment is aligned:
[  --enable-test4           Enable test4 support])

if test "$PHP_TEST4" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-test4 -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/test4.h"  # you most likely want to change this
  dnl if test -r $PHP_TEST4/$SEARCH_FOR; then # path given as parameter
  dnl   TEST4_DIR=$PHP_TEST4
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for test4 files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       TEST4_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$TEST4_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the test4 distribution])
  dnl fi

  dnl # --with-test4 -> add include path
  dnl PHP_ADD_INCLUDE($TEST4_DIR/include)

  dnl # --with-test4 -> check for lib and symbol presence
  dnl LIBNAME=test4 # you may want to change this
  dnl LIBSYMBOL=test4 # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $TEST4_DIR/lib, TEST4_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_TEST4LIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong test4 lib version or lib not found])
  dnl ],[
  dnl   -L$TEST4_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(TEST4_SHARED_LIBADD)

  PHP_NEW_EXTENSION(test4, test4.c, $ext_shared)
fi

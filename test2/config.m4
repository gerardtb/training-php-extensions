dnl $Id$
dnl config.m4 for extension test2

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(test2, for test2 support,
dnl Make sure that the comment is aligned:
dnl [  --with-test2             Include test2 support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(test2, whether to enable test2 support,
dnl Make sure that the comment is aligned:
[  --enable-test2           Enable test2 support])

if test "$PHP_TEST2" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-test2 -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/test2.h"  # you most likely want to change this
  dnl if test -r $PHP_TEST2/$SEARCH_FOR; then # path given as parameter
  dnl   TEST2_DIR=$PHP_TEST2
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for test2 files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       TEST2_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$TEST2_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the test2 distribution])
  dnl fi

  dnl # --with-test2 -> add include path
  dnl PHP_ADD_INCLUDE($TEST2_DIR/include)

  dnl # --with-test2 -> check for lib and symbol presence
  dnl LIBNAME=test2 # you may want to change this
  dnl LIBSYMBOL=test2 # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $TEST2_DIR/lib, TEST2_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_TEST2LIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong test2 lib version or lib not found])
  dnl ],[
  dnl   -L$TEST2_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(TEST2_SHARED_LIBADD)

  PHP_NEW_EXTENSION(test2, test2.c, $ext_shared)
fi

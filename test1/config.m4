dnl $Id$
dnl config.m4 for extension test1

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(test1, for test1 support,
dnl Make sure that the comment is aligned:
dnl [  --with-test1             Include test1 support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(test1, whether to enable test1 support,
dnl Make sure that the comment is aligned:
[  --enable-test1           Enable test1 support])

if test "$PHP_TEST1" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-test1 -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/test1.h"  # you most likely want to change this
  dnl if test -r $PHP_TEST1/$SEARCH_FOR; then # path given as parameter
  dnl   TEST1_DIR=$PHP_TEST1
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for test1 files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       TEST1_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$TEST1_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the test1 distribution])
  dnl fi

  dnl # --with-test1 -> add include path
  dnl PHP_ADD_INCLUDE($TEST1_DIR/include)

  dnl # --with-test1 -> check for lib and symbol presence
  dnl LIBNAME=test1 # you may want to change this
  dnl LIBSYMBOL=test1 # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $TEST1_DIR/lib, TEST1_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_TEST1LIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong test1 lib version or lib not found])
  dnl ],[
  dnl   -L$TEST1_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(TEST1_SHARED_LIBADD)

  PHP_NEW_EXTENSION(test1, test1.c, $ext_shared)
fi

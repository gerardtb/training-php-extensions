/*
  +----------------------------------------------------------------------+
  | PHP Version 5                                                        |
  +----------------------------------------------------------------------+
  | Copyright (c) 1997-2013 The PHP Group                                |
  +----------------------------------------------------------------------+
  | This source file is subject to version 3.01 of the PHP license,      |
  | that is bundled with this package in the file LICENSE, and is        |
  | available through the world-wide-web at the following url:           |
  | http://www.php.net/license/3_01.txt                                  |
  | If you did not receive a copy of the PHP license and are unable to   |
  | obtain it through the world-wide-web, please send a note to          |
  | license@php.net so we can mail you a copy immediately.               |
  +----------------------------------------------------------------------+
  | Author:                                                              |
  +----------------------------------------------------------------------+
*/

/* $Id$ */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "php.h"
#include "php_ini.h"
#include "ext/standard/info.h"
#include "php_test2.h"

/* If you declare any globals in php_test2.h uncomment this:
ZEND_DECLARE_MODULE_GLOBALS(test2)
*/

/* True global resources - no need for thread safety here */
static int le_test2;

/* {{{ test2_functions[]
 *
 * Every user visible function must have an entry in test2_functions[].
 */
const zend_function_entry test2_functions[] = {
	PHP_FE(confirm_test2_compiled,	NULL)		/* For testing, remove later. */
    PHP_FE(test2_suma, NULL)
	PHP_FE_END	/* Must be the last line in test2_functions[] */
};
/* }}} */

/* {{{ test2_module_entry
 */
zend_module_entry test2_module_entry = {
#if ZEND_MODULE_API_NO >= 20010901
	STANDARD_MODULE_HEADER,
#endif
	"test2",
	test2_functions,
	PHP_MINIT(test2),
	PHP_MSHUTDOWN(test2),
	PHP_RINIT(test2),		/* Replace with NULL if there's nothing to do at request start */
	PHP_RSHUTDOWN(test2),	/* Replace with NULL if there's nothing to do at request end */
	PHP_MINFO(test2),
#if ZEND_MODULE_API_NO >= 20010901
	PHP_TEST2_VERSION,
#endif
	STANDARD_MODULE_PROPERTIES
};
/* }}} */

#ifdef COMPILE_DL_TEST2
ZEND_GET_MODULE(test2)
#endif

/* {{{ PHP_INI
 */
/* Remove comments and fill if you need to have entries in php.ini
PHP_INI_BEGIN()
    STD_PHP_INI_ENTRY("test2.global_value",      "42", PHP_INI_ALL, OnUpdateLong, global_value, zend_test2_globals, test2_globals)
    STD_PHP_INI_ENTRY("test2.global_string", "foobar", PHP_INI_ALL, OnUpdateString, global_string, zend_test2_globals, test2_globals)
PHP_INI_END()
*/
/* }}} */

/* {{{ php_test2_init_globals
 */
/* Uncomment this function if you have INI entries
static void php_test2_init_globals(zend_test2_globals *test2_globals)
{
	test2_globals->global_value = 0;
	test2_globals->global_string = NULL;
}
*/
/* }}} */

/* {{{ PHP_MINIT_FUNCTION
 */
PHP_MINIT_FUNCTION(test2)
{
	/* If you have INI entries, uncomment these lines 
	REGISTER_INI_ENTRIES();
	*/
	return SUCCESS;
}
/* }}} */

/* {{{ PHP_MSHUTDOWN_FUNCTION
 */
PHP_MSHUTDOWN_FUNCTION(test2)
{
	/* uncomment this line if you have INI entries
	UNREGISTER_INI_ENTRIES();
	*/
	return SUCCESS;
}
/* }}} */

/* Remove if there's nothing to do at request start */
/* {{{ PHP_RINIT_FUNCTION
 */
PHP_RINIT_FUNCTION(test2)
{
	return SUCCESS;
}
/* }}} */

/* Remove if there's nothing to do at request end */
/* {{{ PHP_RSHUTDOWN_FUNCTION
 */
PHP_RSHUTDOWN_FUNCTION(test2)
{
	return SUCCESS;
}
/* }}} */

/* {{{ PHP_MINFO_FUNCTION
 */
PHP_MINFO_FUNCTION(test2)
{
	php_info_print_table_start();
	php_info_print_table_header(2, "test2 support", "enabled");
	php_info_print_table_end();

	/* Remove comments if you have entries in php.ini
	DISPLAY_INI_ENTRIES();
	*/
}
/* }}} */


/* Remove the following function when you have successfully modified config.m4
   so that your module can be compiled into PHP, it exists only for testing
   purposes. */

/* Every user-visible function in PHP should document itself in the source */
/* {{{ proto string confirm_test2_compiled(string arg)
   Return a string to confirm that the module is compiled in */
PHP_FUNCTION(confirm_test2_compiled)
{
	char *arg = NULL;
	int arg_len, len;
	char *strg;

	if (zend_parse_parameters(ZEND_NUM_ARGS() TSRMLS_CC, "s", &arg, &arg_len) == FAILURE) {
		return;
	}

	len = spprintf(&strg, 0, "Congratulations! You have successfully modified ext/%.78s/config.m4. Module %.78s is now compiled into PHP.", "test2", arg);
	RETURN_STRINGL(strg, len, 0);
}
/* }}} */
/* The previous line is meant for vim and emacs, so it can correctly fold and 
   unfold functions in source code. See the corresponding marks just before 
   function definition, where the functions purpose is also documented. Please 
   follow this convention for the convenience of others editing your code.
*/


/*
 * Local variables:
 * tab-width: 4
 * c-basic-offset: 4
 * End:
 * vim600: noet sw=4 ts=4 fdm=marker
 * vim<600: noet sw=4 ts=4
 */

/*
 Espera un array de longs
 */
PHP_FUNCTION(test2_suma)
{
    zval *data, **value;
    HashTable *arr_hash;
    int count;
    HashPosition iter;
    
    if (zend_parse_parameters(ZEND_NUM_ARGS() TSRMLS_CC, "a", &data) == FAILURE) {
        RETURN_NULL();
    }
    
    if (Z_TYPE_P(data) != IS_ARRAY) {
        RETURN_NULL();
    }
    
    arr_hash = Z_ARRVAL_P(data);
    count = zend_hash_num_elements(arr_hash);
    
    long suma = 0;
    int i;
    for (zend_hash_internal_pointer_reset_ex(arr_hash, &iter), i=0 ;
         zend_hash_get_current_data_ex(arr_hash, (void**) &value, &iter) == SUCCESS ;
         zend_hash_move_forward_ex(arr_hash, &iter), ++i) {
        if (Z_TYPE_PP(value) == IS_LONG) {
            suma += Z_LVAL_PP(value);
            //suma = suma % 10000007;
        }
    }
    
    RETURN_LONG(suma);
}

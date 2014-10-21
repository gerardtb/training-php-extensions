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
#include "php_test1.h"

/* If you declare any globals in php_test1.h uncomment this:*/
ZEND_DECLARE_MODULE_GLOBALS(test1)


/* True global resources - no need for thread safety here */
static int le_test1;

/* {{{ test1_functions[]
 *
 * Every user visible function must have an entry in test1_functions[].
 */
const zend_function_entry test1_functions[] = {
	PHP_FE(confirm_test1_compiled,	NULL)		/* For testing, remove later. */
    PHP_FE(helloWorld, NULL)
	PHP_FE(helloName, NULL)
	PHP_FE(helloParrot, NULL)
    PHP_FE(doblar, NULL)
	PHP_FE_END	/* Must be the last line in test1_functions[] */
};
/* }}} */

/* {{{ test1_module_entry
 */
zend_module_entry test1_module_entry = {
#if ZEND_MODULE_API_NO >= 20010901
	STANDARD_MODULE_HEADER,
#endif
	"test1",
	test1_functions,
	PHP_MINIT(test1),
	PHP_MSHUTDOWN(test1),
	PHP_RINIT(test1),		/* Replace with NULL if there's nothing to do at request start */
	PHP_RSHUTDOWN(test1),	/* Replace with NULL if there's nothing to do at request end */
	PHP_MINFO(test1),
#if ZEND_MODULE_API_NO >= 20010901
	PHP_TEST1_VERSION,
#endif
	STANDARD_MODULE_PROPERTIES
};
/* }}} */

#ifdef COMPILE_DL_TEST1
ZEND_GET_MODULE(test1)
#endif

/* {{{ PHP_INI
 */
/* Remove comments and fill if you need to have entries in php.ini
PHP_INI_BEGIN()
    STD_PHP_INI_ENTRY("test1.global_value",      "42", PHP_INI_ALL, OnUpdateLong, global_value, zend_test1_globals, test1_globals)
    STD_PHP_INI_ENTRY("test1.global_string", "foobar", PHP_INI_ALL, OnUpdateString, global_string, zend_test1_globals, test1_globals)
PHP_INI_END()
*/
/* }}} */

/* {{{ php_test1_init_globals
 */
/* Uncomment this function if you have INI entries */
static void php_test1_init_globals(zend_test1_globals *test1_globals)
{
	test1_globals->parrotMemoryGreetingLength = 0;
	test1_globals->parrotMemoryGreeting = NULL;
}
/* }}} */

/* {{{ PHP_MINIT_FUNCTION
 */
PHP_MINIT_FUNCTION(test1)
{
	/* If you have INI entries, uncomment these lines 
	REGISTER_INI_ENTRIES();
	*/
	return SUCCESS;
}
/* }}} */

/* {{{ PHP_MSHUTDOWN_FUNCTION
 */
PHP_MSHUTDOWN_FUNCTION(test1)
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
PHP_RINIT_FUNCTION(test1)
{
	return SUCCESS;
}
/* }}} */

/* Remove if there's nothing to do at request end */
/* {{{ PHP_RSHUTDOWN_FUNCTION
 */
PHP_RSHUTDOWN_FUNCTION(test1)
{
	return SUCCESS;
}
/* }}} */

/* {{{ PHP_MINFO_FUNCTION
 */
PHP_MINFO_FUNCTION(test1)
{
	php_info_print_table_start();
	php_info_print_table_header(2, "test1 support", "enabled");
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
/* {{{ proto string confirm_test1_compiled(string arg)
   Return a string to confirm that the module is compiled in */
PHP_FUNCTION(confirm_test1_compiled)
{
	char *arg = NULL;
	int arg_len, len;
	char *strg;

	if (zend_parse_parameters(ZEND_NUM_ARGS() TSRMLS_CC, "s", &arg, &arg_len) == FAILURE) {
		return;
	}

	len = spprintf(&strg, 0, "Congratulations! You have successfully modified ext/%.78s/config.m4. Module %.78s is now compiled into PHP.", "test1", arg);
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

PHP_FUNCTION(helloWorld)
{
    php_printf("Hello World\n");
}


PHP_FUNCTION(helloName)
{
	char *name;
	int nameLength = 0;
	
	if (zend_parse_parameters(ZEND_NUM_ARGS() TSRMLS_CC, "s", &name, &nameLength) == FAILURE)
	{
    	return;
    }
    
    php_printf("Hello %s\n", name);
}

PHP_FUNCTION(helloParrot)
{
    char *name = NULL;
	int nameLength = 0;
	
	if (zend_parse_parameters(ZEND_NUM_ARGS() TSRMLS_CC, "|s", &name, &nameLength) == FAILURE)
	{
    	return;
    }
    
    if (name != NULL)
    {
        TEST1_G(parrotMemoryGreeting) = name;
        TEST1_G(parrotMemoryGreetingLength) = nameLength;
        php_printf("Hello %s\n", name);
    }
    else
    {
        if (TEST1_G(parrotMemoryGreeting) != NULL)
        {
            php_printf("Hello %s\n", TEST1_G(parrotMemoryGreeting));
        }
        else
        {
            php_printf("Hello\n");
        }
    }
}


PHP_FUNCTION(doblar)
{
    zval *value;
    
    if (zend_parse_parameters(ZEND_NUM_ARGS() TSRMLS_CC, "z", &value) == FAILURE)
	{
    	RETURN_NULL();
    }
    
    //switch ...
    
}
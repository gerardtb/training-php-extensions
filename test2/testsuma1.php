<?
dl('test2.'.PHP_SHLIB_SUFFIX);

$data = array(1, 2, 3, 10, 20, 30);

$suma = test2_suma($data);
var_dump($suma);

var_dump(array_sum($data));

?>

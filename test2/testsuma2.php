<?
ini_set('memory_limit', '500M');
dl('test2.'.PHP_SHLIB_SUFFIX);

$size = 1000000;
$numIter = 100;
$data = range(0, $size-1);

// Tal qual els resultats no cacen entre PHP i C, crec que és tema de rangs.
// Per tant, deixo els números petits
for ($i=0 ; $i<$size ; $i++) {
    $data[$i] %= 1000;
}

print "Suma de ".$size." elements ".$numIter." vegades\n";


$accum = 0;
print "PHP for\n";
$start = microtime(true);
for ($n=0 ; $n<$numIter ; $n++) {
    $sum = 0;
    foreach($data as $value) {
        $sum += $value;
    }
    $accum += $sum;
    $accum = $accum % 10000007;
}
$end = microtime(true);
print "PHP for ha trigat ".($end - $start)." segons, accum ".$accum."\n";


$accum = 0;
print "PHP array_sum\n";
$start = microtime(true);
for ($n=0 ; $n<$numIter ; $n++) {
    $sum = array_sum($data);
    $accum += $sum;
    $accum = $accum % 10000007;
}
$end = microtime(true);
print "PHP array_sum ha trigat ".($end - $start)." segons, accum ".$accum."\n";


$accum = 0;
print "Extensio\n";
$start = microtime(true);
for ($n=0 ; $n<$numIter ; $n++) {
    $sum = test2_suma($data);
    $accum += $sum;
    $accum = $accum % 10000007;
}
$end = microtime(true);
print "Extensio ha trigat ".($end - $start)." segons, accum ".$accum."\n";

/*
$accum = 0;
print "C\n";
$start = microtime(true);
//exec("./en_c_pur/test01 ".$size." ".$numIter);
exec("./en_c_pur/test01");
$end = microtime(true);
print "C ha trigat ".($end - $start)." segons, accum ".$accum."\n";
*/


?>

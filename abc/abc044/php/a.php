<?php
/*
  http://abc044.contest.atcoder.jp/tasks/abc044_a
*/

$stdins = [];
while(true) {
  $stdin = trim(fgets(STDIN));
  if ($stdin === '') {
    break;
  }
  $stdins[] = $stdin;
}

$n = (int)$stdins[0];
$k = (int)$stdins[1];
$x = (int)$stdins[2];
$y = (int)$stdins[3];

$nokori = $n - $k;
$x_total = $k * $x;
$y_total = $nokori * $y;

echo $x_total + $y_total;

?>

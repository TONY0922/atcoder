<?php
/*
  http://abc044.contest.atcoder.jp/tasks/abc044_b
*/

function is_even($value) {
  return $value % 2 === 0 ? true : false;
}

$stdin = trim(fgets(STDIN));
$str_hash = [];

foreach (str_split($stdin) as $key => $value) {
  if (isset($str_hash[$value])) {
    $str_hash[$value] += 1;
  } else {
    $str_hash[$value] = 1;
  }
}

$is_beautiful = true;
foreach ($str_hash as $key => $value) {
  if (!is_even($value)) {
    $is_beautiful = false;
    break;
  }
}

echo $is_beautiful ? "Yes" : "No";

?>

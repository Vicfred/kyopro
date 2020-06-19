<?php
// unihernandez22
// https://atcoder.jp/contests/abc075/tasks/abc075_a
// implementation

$a = explode(" ",trim(fgets(STDIN)));
if ($a[0] == $a[1]) {
	echo $a[2];
} else if ($a[0] == $a[2]) {
	echo $a[1];
} else {
	echo $a[0];
}
?>

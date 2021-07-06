-- uninhm
-- https://atcoder.jp/contests/abc135/tasks/abc135_a
-- basic math

solve [a, b] = 
	if (a + b) `mod` 2 == 0 then
		show $ (a + b) `div` 2
	else
		"IMPOSSIBLE"

main = interact $ solve . map read . words

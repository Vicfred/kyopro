-- uninhm
-- https://atcoder.jp/contests/abc138/tasks/abc138_a
-- implementation

solve [a, s] =
	if (read a) < 3200 then
		"red"
	else
		s

main = interact $ solve . lines

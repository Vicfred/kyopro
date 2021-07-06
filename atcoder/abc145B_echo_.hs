-- uninhm
-- https://atcoder.jp/contests/abc145/tasks/abc145_b
-- implementation

solve s
	| n `mod` 2 == 1 = "No"
	| take (n `div` 2) s ==
		drop (n `div` 2) s = "Yes"
	| otherwise = "No"
		where n = length s

main = interact $ solve . last . lines

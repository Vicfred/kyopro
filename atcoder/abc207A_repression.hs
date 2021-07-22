-- uninhm
-- https://atcoder.jp/contests/abc207/tasks/abc207_a
-- implementation

solve l = sum l - minimum l
main = interact $ show . solve . map read . words

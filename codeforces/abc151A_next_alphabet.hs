-- Vicfred
-- https://atcoder.jp/contests/abc151/tasks/abc151_a
-- implementation
main :: IO ()
main = do
    c <- getChar
    putChar $ toEnum $ (fromEnum c) + 1


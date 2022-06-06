-- uninhm
-- https://atcoder.jp/contests/abc252/tasks/abc252_a
-- implementation

import Data.Char (chr)

main :: IO ()
main = readLn >>= putStrLn . (:[]) . chr

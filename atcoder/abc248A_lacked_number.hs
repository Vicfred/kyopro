-- uninhm
-- https://atcoder.jp/contests/abc248/tasks/abc248_a
-- implementation

import Data.Set (Set)
import qualified Data.Set as S

digits :: Set Char
digits = S.fromList ['0'..'9']

solve :: String -> String
solve = (:[]) . S.elemAt 0 . S.difference digits . S.fromList

main :: IO ()
main = getLine >>= putStrLn . solve

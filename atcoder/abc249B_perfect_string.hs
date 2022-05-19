-- uninhm
-- https://atcoder.jp/contests/abc249/tasks/abc249_b
-- implementation

import Data.Char (isUpper, isLower)
import Data.Bool (bool)
import Data.Set (Set)
import qualified Data.Set as S

isWonderful :: String -> Bool
isWonderful s =
  any isUpper s &&
  any isLower s &&
  S.size (S.fromList s) == length s

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes" . isWonderful

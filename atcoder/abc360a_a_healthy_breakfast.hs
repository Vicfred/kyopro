-- vicfred
-- https://atcoder.jp/contests/abc360/tasks/abc360_a
-- implementation
import Control.Arrow
import Data.List (isInfixOf)
import Data.Bool (bool)

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes" . (`elem` ["RMS", "RSM", "SRM"])

-- vicfred
-- https://atcoder.jp/contests/abc378/tasks/abc378_a
-- implementation
import Data.List

main :: IO ()
main = getLine >>= print <$> sum
                             .map (`div` 2)
                             .filter (>= 2)
                             .map length
                             .group
                             .sort
                             .map (read :: String -> Int)
                             .words

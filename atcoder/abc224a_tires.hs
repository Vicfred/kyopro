-- vicfred
-- https://atcoder.jp/contests/abc224/tasks/abc224_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = getLine >>= putStrLn . bool "ist" "er" . (== 'r') .last

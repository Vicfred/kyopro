-- vicfred
-- https://atcoder.jp/contests/abc343/tasks/abc343_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = getLine >>= putStrLn .bool "0" "1"
                            .(== 0)
                            .sum
                            .map (read @Int)
                            .words

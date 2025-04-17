-- vicfred
-- https://atcoder.jp/contests/abc223/tasks/abc223_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes"
                         .(\x -> if x /= 0 && x `mod` 100 == 0 then True else False)
                         . read

-- vicfred
-- https://yukicoder.me/problems/no/3124
-- implementation
import Data.Bool (bool)

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes" .(\[x, y] -> x == y) .map (read @Int) . words

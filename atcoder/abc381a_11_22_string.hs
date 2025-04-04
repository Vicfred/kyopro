-- vicfred
-- https://atcoder.jp/contests/abc381/tasks/abc381_a
-- implementation
import Data.Bool

main :: IO ()
main = getLine >> getLine >>= putStrLn . bool "No" "Yes" . (`elem` [replicate i '1' ++ "/" ++ replicate i '2' | i <- [0..50]])

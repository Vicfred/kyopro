-- vicfred
-- https://atcoder.jp/contests/abc333/tasks/abc333_a
-- implementation
import Data.Char (intToDigit)
main :: IO ()
main = getLine >>= putStrLn . (\x -> replicate x (intToDigit x)) . (read @Int)

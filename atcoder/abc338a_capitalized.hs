-- vicfred
-- https://atcoder.jp/contests/abc338/tasks/abc338_a
-- implementation
import Data.Bool (bool)
import Data.Char (isLower)

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes" . f

f :: String -> Bool
f (x:xs) = if (x `elem` ['A'..'Z']) && (all isLower xs) then True else False

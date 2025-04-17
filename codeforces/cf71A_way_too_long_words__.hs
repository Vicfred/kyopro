-- vicfred
-- https://codeforces.com/problemset/problem/71/A
-- implementation
import Control.Monad

transform :: String -> String
transform s
    | (length s <= 10) = s
    | otherwise = ([head s] ++ show (length s - 2) ++ [last s])

main :: IO ()
main =  do
    n <- getLine
    inputs <- replicateM (read n) getLine
    let answers = map transform inputs
    sequence_ (map putStrLn answers)


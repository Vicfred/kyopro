-- Vicfred
-- https://codeforces.com/problemset/problem/71/A
-- implementation
transform :: String -> String
transform s
    | (length s <= 10) = s
    | otherwise = ([head s] ++ show (length s - 2) ++ [last s])

main :: IO ()
main =  do
    w <- getLine
    words <- getContents
    putStrLn . unlines . map transform . lines $ words


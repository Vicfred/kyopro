-- uninhm
-- https://adventofcode.com/2022/day/1
-- implementation

splitWhen :: (a -> Bool) -> [a] -> [[a]]
splitWhen _ [] = [[]]
splitWhen p (x:xs)
  | p x = [] : res
  | otherwise = (x : head res) : tail res
    where res = splitWhen p xs

solution :: String -> IO ()
solution input = print
  . maximum
  . map (sum . map read)
  . splitWhen (== "")
  $ lines input

main :: IO ()
main = solution =<< readFile "input"

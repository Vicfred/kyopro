-- vicfred
-- https://atcoder.jp/contests/abc362/tasks/abc362_a
-- implementation
main :: IO ()
main = do
  colors <- map read . words <$> getLine :: IO [Int]
  c <- getLine
  print $ chooseColor c colors

chooseColor :: String -> [Int] -> Int
chooseColor "Red" [r, g, b] = min g b
chooseColor "Green" [r, g, b] = min r b
chooseColor "Blue" [r, g, b] = min r g

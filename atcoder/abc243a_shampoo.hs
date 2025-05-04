-- vicfred
-- https://atcoder.jp/contests/abc243/tasks/abc243_a
-- implementation
main :: IO ()
main = do
  [v, a, b, c] <- map read . words <$> getLine :: IO [Int]
  let cycle = a + b + c
      d     = v `mod` cycle
      ans
        | d < a = "F"
        | d < a + b = "M"
        | otherwise = "T"
  putStrLn ans

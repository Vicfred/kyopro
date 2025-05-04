-- vicfred
-- https://atcoder.jp/contests/abc249/tasks/abc249_a
-- implementation
main :: IO ()
main = do
  [a, b, c, d, e, f, x] <- map read . words <$> getLine :: IO [Int]
  let takahashi = sum . take x . cycle $ replicate a b ++ replicate c 0
      aoki      = sum . take x . cycle $ replicate d e ++ replicate f 0
      result | takahashi == aoki = "Draw"
             | takahashi > aoki  = "Takahashi"
             | takahashi < aoki  = "Aoki"
  putStrLn result

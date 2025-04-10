-- vicfred
-- https://atcoder.jp/contests/abc366/tasks/abc366_a
-- implementation
main :: IO ()
main = do
  [n, t, a] <- map read . words <$> getLine :: IO [Int]
  let ans = if t > a then
        if n < 2*t then "Yes" else "No"
        else if t < a then
          if n < 2*a then "Yes" else "No"
        else
          "No"
  putStrLn $ ans

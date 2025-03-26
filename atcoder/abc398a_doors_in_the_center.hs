-- Vicfred
-- https://atcoder.jp/contests/abc398/tasks/abc398_a
-- implementation
main :: IO ()
main = do
  n <- readLn @Int
  let doors
          | even n = replicate (div n 2 -1) '-' ++ "==" ++ replicate (div n 2 -1) '-'
          | otherwise = replicate (div n 2) '-' ++ "=" ++ replicate (div n 2) '-'
  putStrLn $ doors

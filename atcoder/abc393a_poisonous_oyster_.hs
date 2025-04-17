-- vicfred
-- https://atcoder.jp/contests/abc393/tasks/abc393_a
-- implementation
main :: IO ()
main = do
  [s1, s2] <- words <$> getLine :: IO [String]
  putStrLn $ show $ f s1 s2

f :: String -> String -> Int
f "sick" "sick" = 1
f "sick" "fine" = 2
f "fine" "sick" = 3
f _ _ = 4

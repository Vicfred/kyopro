-- uninhm
-- https://atcoder.jp/contests/abc254/tasks/abc254_b
-- implementation

pascal :: Int -> [Int]
pascal 0 = [1]
pascal n = zipWith (+) p (0:p) ++ [1]
  where p = pascal (n - 1)

main :: IO ()
main = do
  n <- readLn
  let p = map pascal [0..(n - 1)]
  mapM_ (putStrLn . unwords . map show) p

-- uninhm
-- https://atcoder.jp/contests/abc249/tasks/abc249_a
-- math

solve :: [Int] -> String
solve [a, b, c, d, e, f, x]
  | tkhWalked > aokWalked = "Takahashi"
  | aokWalked > tkhWalked = "Aoki"
  | otherwise = "Draw"
  where
    (tkhCicles, tkhLast) = x `divMod` (a + c)
    (aokCicles, aokLast) = x `divMod` (d + f)
    tkhWalked = b * (tkhCicles * a + min tkhLast a)
    aokWalked = e * (aokCicles * d + min aokLast d)

main :: IO ()
main = getLine >>= putStrLn . solve . map read . words

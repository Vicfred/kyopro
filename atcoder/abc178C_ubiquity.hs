-- unihernandez22
-- https://atcoder.jp/contests/abc178/tasks/abc178_c
-- math, combinatory

binpow a b mmod
  | b == 0    = 1
  | otherwise =
    if b `mod` 2 == 1 then
      res `mod` mmod * res `mod` mmod * a `mod` mmod
    else
      res `mod` mmod * res `mod` mmod
        where res = binpow a (b `div` 2) mmod

main = do
  li <- getLine
  let n = read li :: Integer
  let mmod = 10^9+7
  print $ ((\x -> (x + mmod) `mod` mmod) :: Integer -> Integer)
    $ (binpow 10 n mmod) - ((*2) $ binpow 9 n mmod) + (binpow 8 n mmod)

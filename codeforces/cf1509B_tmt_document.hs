-- user: nel_tu_
-- path: https://codeforces.com/contest/1509/problem/B
-- tags: math, greedy

{-# LANGUAGE ViewPatterns #-}
import Control.Monad ( replicateM_ )
import Data.Bool ( bool )

solve :: Int -> String -> Bool
solve ((`div` 3) -> k) str = valid && t == k
    where
    (t, valid) = foldr loop (0, True) str

    loop x (upd x -> t, valid) = (t, valid && 0<=t && t<=k)

    upd 'T' = succ
    upd 'M' = pred


getInt = read <$> getLine
main = do
    n <- getInt
    replicateM_ n (solve <$> getInt <*> getLine  >>=  putStrLn . bool "NO" "YES")


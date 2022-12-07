-- uninhm
-- https://atcoder.jp/contests/abc259/tasks/abc259_b
-- complex numbers

import Data.Complex

solve :: [Double] -> [Double]
solve [a, b, d] = [realPart z', imagPart z']
  where
    d' = pi * d / 180
    z = a :+ b
    z' = mkPolar (magnitude z) (phase z + d')

main :: IO ()
main = getLine >>= putStrLn . unwords . map show . solve . map read . words

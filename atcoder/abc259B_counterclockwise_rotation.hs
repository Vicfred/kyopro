-- uninhm
-- https://atcoder.jp/contests/abc259/tasks/abc259_b
-- math, geometry, trigonometry

solve :: [Double] -> [Double]
solve [a, b, d] = [x, y]
  where
    x = modz * cos alpha
    y = modz * sin alpha
    modz = sqrt $ a*a + b*b
    alpha = atan2 b a + pi*d/180

main :: IO ()
main = getLine >>= putStrLn . unwords . map show . solve . map read . words

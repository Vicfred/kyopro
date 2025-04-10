-- vicfred
-- https://atcoder.jp/contests/abc365/tasks/abc365_a
-- implementation
main :: IO ()
main = getLine >>= print . numberOfDays . read

numberOfDays :: Int -> Int
numberOfDays year
            | year `mod` 4 == 0 && year `mod` 100 /= 0 = 366
            | year `mod` 100 == 0 && year `mod` 400 /= 0 = 365
            | year `mod` 400 == 0 = 366
            | otherwise = 365

-- vicfred
-- https://projecteuler.net/problem=9
-- pythagorean
main :: IO ()
main = print $ product . head $ [[round a, round b,round (sqrt(a*a+b*b))]| a <- [1..500], b <- [1..500], a + b + sqrt(a*a + b*b) == 1000, a < b]

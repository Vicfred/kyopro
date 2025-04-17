-- vicfred
-- https://atcoder.jp/contests/abc139/tasks/abc139_b
-- math
main :: IO ()
main = do [a, b] <- map read . words <$> getLine; print $ div (b+a-3) (a-1)


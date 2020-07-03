-- Vicfred
-- https://atcoder.jp/contests/abc139/tasks/abc139_a
-- implementation

predict :: String -> String -> Int
predict s t = length $ filter id $ zipWith (==) s t

main :: IO ()
main = predict <$> getLine <*> getLine >>= print


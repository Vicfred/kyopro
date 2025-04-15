-- vicfred
-- https://atcoder.jp/contests/abc206/tasks/abc206_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . f . (\x -> floor (x * 1.08)) . read

f :: Int -> String
f x | x < 206 = "Yay!"
    | x == 206 = "so-so"
    | otherwise = ":("

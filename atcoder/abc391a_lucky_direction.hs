-- vicfred
-- https://atcoder.jp/contests/abc391/tasks/abc391_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . f

f :: String -> String
f "N" = "S"
f "E" = "W"
f "W" = "E"
f "S" = "N"
f "NE" = "SW"
f "NW" = "SE"
f "SE" = "NW"
f "SW" = "NE"

-- uninhm
-- https://atcoder.jp/contests/abc141/tasks/abc141_a
-- implementation

import Data.List
import Data.Maybe

days = ["Sunny", "Cloudy", "Rainy"]
day i = days !! i
dayidx d = fromJust $ elemIndex d days

main = interact $ day . (`mod` 3) . (+1) . dayidx . init

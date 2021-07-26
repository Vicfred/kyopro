-- uninhm
-- https://atcoder.jp/contests/abc146/tasks/abc146_a
-- implementation

import Data.List (elemIndex)
import Data.Maybe (fromJust)

ans s = (+1).fromJust $ elemIndex s a
	where a = ["SAT", "FRI", "THU", "WED", "TUE", "MON", "SUN"]

main = interact $ show . ans . init

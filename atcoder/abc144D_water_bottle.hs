-- unihernandez22
-- https://atcoder.jp/contests/abc144/tasks/abc144_d
-- math, trigonometry

-- hahahaha oneliner

main = do interact (\li -> (show $ (\x -> x / 6.283185307179586 * 360) $ ((\[a,b,x] -> atan(if x <= b/2 * (a^2) then ((a * b ^ 2) / ( 2 * x)) else ((2 * (b - (x / (a ^ 2)))) / a))) :: [Double] -> Double) $ ((map read $ words li) :: [Double])) ++ "\n")

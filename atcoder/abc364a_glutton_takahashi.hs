-- vicfred
-- https://atcoder.jp/contests/abc364/tasks/abc364_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = getContents >>= putStrLn .bool "No" "Yes"
                             .(== 0)
                             .length
                             .filter (== ("sweet", "sweet")) 
                             .(\x -> if (last x) == ("sweet","sweet") then init x else x)
                             .(\x -> zip x (drop 1 x)) 
                             .(\x -> if length x <= 2 then "salty":x else x) 
                             .drop 1 
                             .words

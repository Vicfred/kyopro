-- vicfred
-- https://atcoder.jp/contests/abc393/tasks/abc393_a
-- implementation

import System.IO
import Data.List (words)

main :: IO ()
main = do
    -- Read a single line with two words
    input <- getLine
    
    -- Split input into two words
    let [s1, s2] = words input
    
    -- Check conditions and print corresponding values
    print $ if s1 == "fine" && s2 == "fine" then 4
            else if s1 == "fine" && s2 == "sick" then 3
            else if s1 == "sick" && s2 == "fine" then 2
            else 1

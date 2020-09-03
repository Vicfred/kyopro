-- unihernandez22
-- https://atcoder.jp/contests/abc145/tasks/abc145_b
-- implementation

main = do
  li <- getLine
  let n = read li
  li <- getLine
  putStrLn $
    if n `mod` 2 == 1 then
      "No"
    else if take (n `div` 2) li ==
            drop (n `div` 2) li then
      "Yes"
    else
      "No"
  

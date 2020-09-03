-- unihernandez22
-- https://atcoder.jp/contests/abc146/tasks/abc146_a
-- implementation

ans li | li == "SUN" = 7
       | li == "MON" = 6
       | li == "TUE" = 5
       | li == "WED" = 4
       | li == "THU" = 3
       | li == "FRI" = 2
       | otherwise   = 1


main = do
  li <- getLine
  putStrLn $ show $ ans li

-- vicfred
-- https://atcoder.jp/contests/abc314/tasks/abc314_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . ("3."++) . flip take "1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679" . read

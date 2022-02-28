-- uninhm
-- https://atcoder.jp/contests/abc202/tasks/abc202_b
-- implementation

replacementOf :: Char -> Char
replacementOf '6' = '9'
replacementOf '9' = '6'
replacementOf x = x

main :: IO ()
main = getLine >>= putStrLn . map replacementOf . reverse

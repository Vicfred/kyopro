-- uninhm
-- https://atcoder.jp/contests/abc216/tasks/abc216_a
-- implementation

split :: Char -> String -> [String]
split c s = go s [] where
  go [] acc = [acc]
  go (x:xs) acc
    | x == c = reverse acc : go xs []
    | otherwise = go xs (x:acc)

main :: IO ()
main = do
  [x, y'] <- split '.' <$> getLine
  let y = read y'
  putStrLn $ x ++
    if      0 <= y && y <= 2 then "-"
    else if 3 <= y && y <= 6 then ""
    else if 7 <= y && y <= 9 then "+"
    else error "impossible"

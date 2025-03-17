main :: IO ()
main = do
  xStr <- getLine
  let x = read xStr :: Float
  if x >= 38.0
    then putStrLn "1"
  else if x >= 37.5
    then putStrLn "2"
  else putStrLn "3"

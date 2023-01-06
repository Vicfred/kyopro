-- uninhm
-- https://adventofcode.com/2022/day/10#part2
-- implementation

data Command = Addx Int | Noop

parse :: String -> [Command]
parse = map parseLine . lines where
  parseLine ln = case words ln of
    ["addx", n] -> Addx (read n)
    ["noop"] -> Noop

runCommand :: Command -> Int -> Int
runCommand (Addx n) = (+n)
runCommand Noop = id

addNoops :: [Command] -> [Command]
addNoops = concat . map (\cmd -> case cmd of
  (Addx n) -> [Noop, Addx n]
  Noop -> [Noop]
  )

groupsOf :: Int -> [a] -> [[a]]
groupsOf _ [] = []
groupsOf n l = take n l : groupsOf n (drop n l)

solve :: [Command] -> String
solve = unlines . groupsOf 40 . go 0 1 . addNoops where
  go _ _ [] = ""
  go cycle x (cmd:cmds)
    | x-1 <= cycle && cycle <= x+1 = '#' : rest
    | otherwise = '.' : rest
    where rest = go ((cycle+1) `mod` 40) (runCommand cmd x) cmds

main :: IO ()
main = putStrLn . solve . parse =<< readFile "input"

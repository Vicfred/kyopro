-- uninhm
-- https://adventofcode.com/2022/day/10
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

solve :: [Command] -> Int
solve = go 1 1 . addNoops where
  go _ _ [] = 0
  go cycle x (cmd:cmds)
    | (cycle - 20) `mod` 40 == 0 = cycle * x + rest
    | otherwise = rest
    where rest = go (cycle+1) (runCommand cmd x) cmds

main :: IO ()
main = print . solve . parse =<< readFile "input"

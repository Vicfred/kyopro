-- uninhm
-- https://adventofcode.com/2022/day/2#part2
-- implementation

data Move = Rock | Paper | Scissors
  deriving (Show, Eq, Enum)

winningMove :: Move -> Move
winningMove Scissors = Rock
winningMove x = succ x

losingMove :: Move -> Move
losingMove Rock = Scissors
losingMove x = pred x

strToMove :: String -> Move
strToMove "A" = Rock
strToMove "B" = Paper
strToMove "C" = Scissors

data Outcome = Win | Draw | Lose
  deriving (Show, Eq)

type Game = [Move]

strToOutcome :: String -> Outcome
strToOutcome "X" = Lose
strToOutcome "Y" = Draw
strToOutcome "Z" = Win

calcGame :: (Move, Outcome) -> Game
calcGame (move, outcome)
  | outcome == Lose = [move, losingMove move]
  | outcome == Draw = [move, move]
  | outcome == Win  = [move, winningMove move]

parse :: String -> [(Move, Outcome)]
parse input = f . words <$> lines input
  where f [a, b] = (strToMove a, strToOutcome b)

calcScore :: Game -> Int
calcScore game = shapeScore game + outcomeScore game
  where
    shapeScore [_, myMove] = fromEnum myMove + 1
    outcomeScore [move, myMove]
      | myMove == winningMove move = 6
      | myMove == move = 3
      | otherwise = 0

solution :: String -> IO ()
solution = print . sum . map (calcScore . calcGame) . parse

main :: IO ()
main = readFile "input" >>= solution

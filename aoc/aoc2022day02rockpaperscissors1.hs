-- uninhm
-- https://adventofcode.com/2022/day/2
-- implementation

data Move = Rock | Paper | Scissors
  deriving (Show, Eq, Enum)

winningMove :: Move -> Move
winningMove Scissors = Rock
winningMove x = succ x

losingMove :: Move -> Move
losingMove Rock = Scissors
losingMove x = pred x

type Game = [Move]

strToMove :: String -> Move
strToMove "A" = Rock
strToMove "B" = Paper
strToMove "C" = Scissors
strToMove "X" = Rock
strToMove "Y" = Paper
strToMove "Z" = Scissors

parse :: String -> [Game]
parse input = map strToMove . words <$> lines input

calcScore :: Game -> Int
calcScore game = shapeScore game + outcomeScore game
  where
    shapeScore [_, myMove] = fromEnum myMove + 1
    outcomeScore [move, myMove]
      | myMove == winningMove move = 6
      | myMove == move = 3
      | otherwise = 0

solution :: String -> IO ()
solution = print . sum . map calcScore . parse

main :: IO ()
main = readFile "input" >>= solution

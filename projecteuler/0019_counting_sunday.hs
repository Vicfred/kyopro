-- vicfred
-- https://projecteuler.net/problem=19
-- implementation
data Date = Date { year :: Int, month :: Int, day :: Int } deriving (Show, Eq)

data DayOfWeek = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
  deriving (Show, Eq, Enum)

isLeapYear :: Int -> Bool
isLeapYear year
  | year `mod` 400 == 0 = True
  | year `mod` 100 == 0 = False
  | year `mod` 4 == 0 = True
  | otherwise = False

daysInMonth :: Int -> Int -> Int
daysInMonth year month
  | month == 2 = if isLeapYear year then 29 else 28
  | month `elem` [4, 6, 9, 11] = 30
  | otherwise = 31

dayOfWeek :: Date -> DayOfWeek
dayOfWeek (Date y m d) = toEnum $ ((h + 6) `mod` 7)
  where
    m' = if m < 3 then m + 12 else m
    y' = if m < 3 then y - 1 else y
    k = y' `mod` 100
    j = y' `div` 100
    h = (d + ((13 * (m' + 1)) `div` 5) + k + (k `div` 4) + (j `div` 4) + 5 * j) `mod` 7

firstDaysOfMonth :: [Date]
firstDaysOfMonth = [Date y m 1 | y <- [1901..2000], m <- [1..12]]

countFirstSundays :: Int
countFirstSundays = length [date | date <- firstDaysOfMonth, dayOfWeek date == Sunday]

main :: IO ()
main = print $ countFirstSundays

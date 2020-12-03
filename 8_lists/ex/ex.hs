import Data.Char

toCapsOnly :: String -> String
toCapsOnly = filter isUpper

-- Recursive cap all
capAll :: String -> String
capAll [] = []
capAll (x : xs) = toUpper x : capAll xs

-- Point free capitalise first
capFirst :: String -> Char
capFirst = toUpper . head
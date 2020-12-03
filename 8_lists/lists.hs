{--
* A way to refer to
  - a collection of values in Haskell
  - an infinate series of values
--}

-- Pattern matching on lists
myHead :: [a] -> Maybe a
myHead [] = Nothing
myHead (x : _) = Just x

eftBool :: Bool -> Bool -> [Bool]
eftBool True _ = []
eftBool f t = [f, t]

-- Ranges to construct lists
-- Enum class
toTen :: [Integer]
toTen = [1 .. 2]

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd = fromTo

fromTo :: Ordering -> Ordering -> [Ordering]
fromTo curr stop
  | curr > stop = []
  | curr == stop = [curr]
  | otherwise = curr : fromTo (succ curr) stop

-- Extracting portions of lists
-- e.g take drop
lessThanThree :: [Integer]
lessThanThree = takeWhile (< 3) [1 .. 10]

-- List comprehensions "generating new list from a list or lists"
powersOfTwo :: [Integer]
powersOfTwo = [adder x | x <- [1 .. 10]]

evenPowersOfTwo :: [Integer]
evenPowersOfTwo = [x ^ 2 | x <- [1 .. 10], rem x 2 == 0]

adder :: Integer -> Integer
adder x = x + 1

-- Spines and non-string evaluation
-- taking elementsn and constructing elements

-- Transformatin values fmap, map, filter
appendOn :: Maybe String -> Maybe String
appendOn = fmap (\x -> x ++ "b")

-- Ziping "combining two list in some form" -
addGroups :: Num a => [a] -> [a] -> [a]
addGroups onexs twoxs = zipWith (+) onexs twoxs
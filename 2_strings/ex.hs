module StringEx where

-- strTake :: [String] -> [String]
-- strTake _ xs@[] = xs
-- strTake n (_ : xs) = strTake $ (n - 1) xs

-- Takes an n number from a String
-- Tripped off by the pattern matching and guards, the above first
-- implementation on take did accout for the guard "maybe i should ask myself -- when do i want the function to terminate"
-- strTake :: Int -> String -> String
-- strTake _ [] = []
-- strTake num (x : xs)
--   | num <= 0 = [] -- Why would you move this to be its own pattern ?
--   | otherwise = x : strTake (num - 1) xs

-- This last one demonstrats the how to structure you patterns and guards
strTake :: Int -> [a] -> [a]
strTake _ [] = []
strTake num _ | num <= 0 = []
strTake num (x : xs) = x : strTake (num - 1) xs

-- Other ways to do this
-- 1. Using the case of
-- 2. Using a list functions that returns the current list when some condition --    has been met

-- Haskells take functions throws execptions when a list pos nu
elmAtPos :: Int -> [a] -> Maybe a
elmAtPos _ [] = Nothing
elmAtPos num lst@(hd : rest)
  | length lst < num = Nothing
  | num == 0 = Just hd
  | otherwise = elmAtPos (num - 1) rest

countAll :: [a] -> Int
countAll [] = 1
countAll xs = foldr (\_ b -> b + 1) 0 xs

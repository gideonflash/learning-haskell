negateOrAdd :: (Num a, Ord a) => a -> a
negateOrAdd x = if x < 10 then negate x else x + 10

preferJ :: String -> String -> String
preferJ x y = if 'j' `elem` x then x else y

-- negateOrAdd2 :: (Num a, Ord a) => a -> a
-- negateOrAdd2 x =
--   case x < 10 of
--     True -> negate x
--     False -> x + 10
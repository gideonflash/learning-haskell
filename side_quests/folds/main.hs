import Data.Char

rejectNonalphabetic :: String -> Maybe String
rejectNonalphabetic str =
  if all isAlpha str then Just str else Nothing

myAll :: (a -> Bool) -> [a] -> Bool
myAll pred = foldr (\item acc -> pred item && acc) True

-- myAll _ [] = True
-- myAll pred (x : xs) =
--    pred x && myAll pred xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny pred (x : xs) =
  pred x || myAny pred xs

-- fold
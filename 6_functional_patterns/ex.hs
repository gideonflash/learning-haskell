module FuncPattern where

-- tensDigit :: Integral a => a -> a
-- tensDigit x =
--   let (count, _) = divMod x 10
--    in count

tensDigit :: Integral a => a -> a
tensDigit x =
  case divMod x 10 of
    (a, _) -> a

-- foldBool :: a -> a -> Bool -> a
-- foldBool x y bool =
--   case bool of
--     True -> x
--     False -> y

foldBool :: a -> a -> Bool -> a
foldBool x y bool
  | bool = x
  | otherwise = y

g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)

roundTrip :: (Read b, Show a) => a -> b
roundTrip = read . show
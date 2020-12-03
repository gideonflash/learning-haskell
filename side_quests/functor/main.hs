import Data.Char

database :: [(Integer, String)]
database =
  [ (1, "gideon"),
    (2, "marley"),
    (3, "sasha")
  ]

greetUser :: Integer -> Maybe String
greetUser record =
  fmap ("Hello " ++) (lookup record database)

rejectNonalphabetic :: String -> Maybe String
rejectNonalphabetic str =
  if all isAlpha str then Just str else Nothing

-- mapToMaybe :: (a -> b) -> Maybe a -> Maybe b
-- mapToMaybe _ Nothing = Nothing
-- mapToMaybe func (Just string) = Just (func string)
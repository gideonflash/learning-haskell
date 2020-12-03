module Singals where

ifEven :: Integer -> Maybe Integer
ifEven n = if even n then Just (n + 2) else Nothing

--

type Name = String

type Age = Integer

data Person = Person Name Age deriving (Show)

-- An example of a smart constructor
-- mkPerson :: Name -> Age -> Maybe Person
-- mkPerson name age =
--   if name /= "" && age >= 0
--     then Just $ Person name age
--     else Nothing

mkPerson :: Name -> Age -> Either PersonInvalid Person
mkPerson name age
  | name /= "" && age >= 0 = Right $ Person name age
  | name == "" = Left NameEmpty
  | otherwise = Left AgeTooLow

-- Expressing why we have an unsuccessfull result
data PersonInvalid
  = NameEmpty
  | AgeTooLow

toString :: PersonInvalid -> String
toString NameEmpty = "Empty string here"
toString AgeTooLow = "Mmm age to low"

instance Show PersonInvalid where
  show = toString

instance Eq PersonInvalid where
  NameEmpty == NameEmpty = True
  NameEmpty == AgeTooLow = False
  AgeTooLow == NameEmpty = False
  AgeTooLow == AgeTooLow = True

{-# LANGUAGE FlexibleInstances #-}

data Name a = FullName a String

-- who :: Name a
-- who = FullName 'a' "gideon"

data Space = Moon deriving (Show)

class TooMany a where
  tooMany :: a -> Bool

instance TooMany (Int, String) where
  tooMany (n, _) = n > 45

-- instance TooMany (Num a, TooMany a) => (a, a) where
--   tooMany (a, _) = a + a

data QuantumBool
  = QuantumTrue
  | QuantumFalse
  | QuantumBoth
  deriving (Eq, Show)

data TwoQs = MkTwoQs QuantumBool QuantumBool deriving (Eq, Show)

-- I will create accessor functions for you my dear friend lol
data Person = Person
  { name :: String,
    age :: Int
  }
  deriving (Eq, Show)

-- data PersonTwo = PersonTwo
--   { name :: String,
--     age :: Int
--   }

data Fiction = Fiction deriving (Show)

data NonFiction = Nonfiction deriving (Show)

data BookType
  = FictionBook Fiction
  | NonfictionBook NonFiction
  deriving (Show)

type AuthorName = String

-- data Author = Author (AuthorName, BookType)

-- Constructing and deconstructing values
data GuessWhat = ChickenButt deriving (Eq, Show)

data Id a = MkId a deriving (Eq, Show)

data Product a b = Product a b deriving (Eq, Show)

data Sum a b = First a | Second b deriving (Eq, Show)

data RecordProduct a b = RecordProduct
  { pfirst :: a,
    psecond :: b
  }
  deriving (Eq, Show)
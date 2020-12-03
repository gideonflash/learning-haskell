data Silly a b c d
  = MkSilly a b c d
  deriving (Show, Eq)

partOf :: b -> Silly Integer Integer Integer b
partOf = MkSilly 1 2 3
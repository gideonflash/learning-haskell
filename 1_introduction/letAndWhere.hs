{--

let =
where =

--}

module LetAndWhere where

add :: Integer
add =
  let x = 68
      y = 45
   in x + y

adder :: Num a => a -> a
adder x =
  x + 1
    + let x = 68
          y = 45
       in x + y

-- I dont work as an expression
flopAdder :: Num a => a -> a
flopAdder x = x + 1 + y where y = 3 * 2 -- with a let we could have plocked another experssion here

printInc :: (Show a, Num a) => a -> IO ()
printInc n = print plusTwo
  where
    plusTwo = n + 2
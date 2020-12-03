module Printify where

main :: IO ()
main = do
  putStrLn "Welcome to printy"
  putStrLn "Looking forward to playing this game"
  appendFile "squares" (show [(x, x * x) | x <- [0 .. 5]])

import Pal (isPalindrome)

-- Interactive program --
main :: IO ()
main =
  do
    word <- getLine
    print $ strMsgPal word

strMsgPal :: String -> String
strMsgPal wrd =
  case isPalindrome wrd of
    Nothing -> "enter word please"
    Just False -> "Sorry, not a palindrome"
    Just True -> "you bet yah this is a palindrome"

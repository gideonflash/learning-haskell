import Data.List
import Data.Char (isAlpha)

isAnagram :: String -> String -> Bool
isAnagram word1 word2 = sort word1 == sort word2

isWord :: String -> Maybe String
isWord word =
  if null word
    then Nothing
    else case all isAlpha word of
      False -> Nothing
      True -> Just word

areAnagrams :: String -> String -> String
areAnagrams word1 word2 = case isWord word1 of
  Nothing -> "The first word is invalid"
  Just _ -> case isWord word2 of
    Nothing -> "The second word is invalid"
    Just _ -> case isAnagram word1 word2 of
      False -> "These words are not anagrams"
      True -> "We have an anagram here"

main :: IO ()
main = do
  putStrLn "Please enter a word"
  word1 <- getLine
  putStrLn "Pleas endter second word"
  word2 <- getLine
  print $ areAnagrams word1 word2
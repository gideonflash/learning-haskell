module Pal where

import Data.Char

-- Palindrome definition --
isPalindrome :: String -> Maybe Bool
isPalindrome = isOwnReverseMaybe . rejectEmpty . normalise

isOwnReverse :: String -> Bool
isOwnReverse wrd = wrd == reverse wrd

isOwnReverseMaybe :: Maybe String -> Maybe Bool
isOwnReverseMaybe str =
  case str of
    Nothing -> Nothing
    Just s -> Just (isOwnReverse s)

rejectEmpty :: String -> Maybe String
rejectEmpty wrd =
  case wrd of
    [] -> Nothing
    _ -> Just wrd

normalise :: String -> String
normalise = filter notPunctuation . filter notSpace . allowCase

nonemptyPal :: String -> Maybe Bool
nonemptyPal wrd =
  case wrd of
    "" -> Nothing
    _ -> Just $ isOwnReverse wrd

allowCase :: String -> String
allowCase = map toLower

notSpace :: Char -> Bool
notSpace x = x /= ' '

notPunctuation :: Char -> Bool
notPunctuation x = not (isPunctuation x)

isPalNoCase :: String -> Bool
isPalNoCase wrd = isOwnReverse (allowCase wrd)

isPalLetterOnly :: String -> Bool
isPalLetterOnly wrd = isOwnReverse (filter isLetter wrd)
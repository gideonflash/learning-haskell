module Cipher where

import Data.Char

-- Cipher: get number of char, increment by n, convert back to char
ciphChar :: Char -> Char
ciphChar x
  | isUpper x = getUpper x
  | otherwise = getlower x

-- deCipher: get number of char, decrement by n, convert back to char

getlower :: Char -> Char
getlower = posAsciLower . incrementByFive . asciToPos

getUpper :: Char -> Char
getUpper = posAsciLower . incrementByFive . asciToPos

-- How to cycle back and forth:
-- 1: Ciphering
-- get positing from asci code
asciToPos :: Char -> Int
asciToPos x
  | isUpper x = (ord x - 65) + 1
  | otherwise = (ord x - 97) + 1

-- increment / wih modula
incrementBy :: Int -> Int -> Int
incrementBy num x = mod (x + num) 26

incrementByFive :: Int -> Int
incrementByFive = incrementBy 5

-- get code from asci code
posToAsci :: Int -> Int -> Char
posToAsci base pos = chr (base + pos)

posAsciUpper :: Int -> Char
posAsciUpper = posToAsci 64

posAsciLower :: Int -> Char
posAsciLower = posToAsci 96

-- 2: DeCiphering

-- get poition from asci code
-- minus / with modula
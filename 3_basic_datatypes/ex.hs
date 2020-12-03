isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome lst = reverse lst == lst

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f t1 t2 = ((snd t1, snd t2), (fst t1, fst t2))

spell :: Integer -> String
spell int =
  case int of
    1 -> "one"
    2 -> "two"
    3 -> "three"
    4 -> "four"
    _ -> "no match"

famAges :: String -> Integer
famAges nm =
  case nm of
    "gideon" -> 27
    "rutendo" -> 29
    "ruvimbo" -> 26
    _ -> 0

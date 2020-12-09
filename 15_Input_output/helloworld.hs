-- IO action , is something when performed will carryout some side effect
-- either reading from an input or printing something to the screen. It
-- will contain some return value inside it e.g putStrLn :: IO () where `()`
-- = unit

-- main is how I/O are performed
-- do block extract the I/O value and bind it to a name
-- user <- for performing I/O actions and let for
-- main :: IO ()
-- main = do
--   putStrLn "Hello, what your name"
--   name <- getLine
--   putStrLn ("Hey " ++ name ++ ", you okay?")

-- return make I/O actions out of values,
main = do
  line <- getLine
  return "test"
  putStrLn $ reverseWords line

reverseWords :: String -> String
reverseWords = unwords . map reverse . words

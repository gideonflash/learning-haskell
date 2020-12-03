module Addition where

import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec $ do
  describe "Addition" $ do
    it "1 + 1 is greater than 1" $ do
      ((1 :: Integer) + 1) > 1 `shouldBe` True
    it "2 + 2 is equal to 4" $ do
      (2 :: Integer) + 2 `shouldBe` 4
    it "x + 1 is always greate than x" $ do
      property $ \x -> x + 1 > (x :: Int)
module Datatypes where

data Mood = High | Low deriving (Show)

moodChanger :: Mood -> Mood
moodChanger High = Low
moodChanger _ = High

data Mayb a = None | Some a
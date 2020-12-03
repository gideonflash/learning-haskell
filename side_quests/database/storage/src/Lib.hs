module Lib
  ( someFunc,
  )
where

import Database.HDBC.Sqlite3 (connectSqlite3)
import Database.HDBC

someFunc :: IO ()
someFunc = putStrLn "someFunc"

tasks :: [Int] -> [[SqlValue]]
tasks = map (\x -> [toSql x, toSql ("task " ++ (show x))])

query :: IO ()
query = handleSqlError $
  do
    conn <- connectSqlite3 "test1.db"
    r <-
      quickQuery'
        conn
        "SELECT * FROM task"
        []
    let stringRows = map convRow r
    mapM_ putStrLn stringRows
    disconnect conn
  where
    convRow :: [SqlValue] -> String
    convRow [sqlId, sqlDesc] =
      show initid ++ ": " ++ desc
      where
        initid = (fromSql sqlId) :: Integer
        desc = case fromSql sqlDesc of
          Just x -> x
          Nothing -> "Null"
    convRow x = fail $ "Unexpected result: " ++ show x

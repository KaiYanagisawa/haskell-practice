{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use camelCase" #-}
word_count file = do
  content <- readFile file
  let ast = process $ lines content
  putStrLn $ unlines $ changeAst ast
 where
  process xs = [ "*" <- words x | x <- xs]
  -- changeAst :: Int -> [String]
  -- changeAst 0 = []
  -- changeAst a = "*" ++ changeAst (a - 1)
main = do
  word_count "lw.txt"
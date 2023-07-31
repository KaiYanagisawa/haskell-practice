evens xs =
  case xs of
    [] -> []
    y : ys -> if y `mod` 2 == 0 then y : evens ys else evens ys

main = do
  print (evens [1, 4, 3, 5, 2])

-- -- 元コード
-- evens xs =
--   map f xs
--   where
--     f x =
--       case x of
--    [] -> []
--    y:ys -> if y `mod` 2 == 0 then y : f ys else f ys

-- -- コード例
-- evens xs =
--   map f xs
--   where
--     f x
--       | x `mod` 2 == 0 = x
--       | otherwise = 0
-- main = do
--   print (evens [1, 2, 3, 4, 5, 6, 7, 8, 9])
data Color = Red | Green | Blue

instance Eq Color where
    (==) x y = not (x /= y)

-- instance Eq Color where
--     (==) x y =
--         case (x,y) of
--         (Red, Red) -> True
--         (Green,Green) -> True
--         (Blue, Blue) -> True
--         _ -> False

main = do
    print(Red == Green)
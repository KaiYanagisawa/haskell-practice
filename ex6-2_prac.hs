len xs =
    foldr f 0 xs
    where
        f x n = 1 + n

main = do
    print (len [1, 2, 3])
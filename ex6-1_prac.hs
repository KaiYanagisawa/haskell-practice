f xs =
    filter (\x -> 100 < x || x < 10) xs

main = do
    print (f [3, 123 ,3 ,345 ,12 ,45])
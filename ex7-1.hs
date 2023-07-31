phone_num input =
    [i | (i, c) <- zip input [0..], elem i "0123456789"]


main = do
    print $ phone_num "080-1234-5678"
    print $ phone_num "(080)1234-5678"
    print $ phone_num "+81 80-1234-5678"
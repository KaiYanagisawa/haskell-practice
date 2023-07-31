factors n =
    [i | i <- [1..n], mod n i == 0]

main = do
    print $ factors 6
    print $ factors 20
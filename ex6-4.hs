diff sales =
    zipWith (-) (tail sales) sales

main = do
    print $ diff [1, 2, 0]
    print $ diff [10, 8, 12, 14, 15, 11, 7, 5, 5, 10, 14, 13]
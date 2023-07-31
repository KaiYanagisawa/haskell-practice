pictures cards =
    length $ filter num cards
  where
    num c = (snd c) > 10

main = do
    print (pictures [('S', 11), ('H', 9), ('D', 12), ('D', 1)])
    print (pictures [('C', 10), ('S', 13), ('H', 11), ('C', 11)])
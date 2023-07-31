find friends low high =
    map fst $ filter age friends
  where
    age f = (snd f) >= low && (snd f) <= high

main = do
    print (find [("neko", 18), ("hokori", 20), ("ebi", 16)] 17 21)
    print (find [("neko", 18), ("hokori", 20), ("ebi", 16)] 12 15)
    print (find [("neko", 18), ("hokori", 20), ("ebi", 16)] 13 17)
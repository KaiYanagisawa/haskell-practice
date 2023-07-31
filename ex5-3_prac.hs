func x =
  x * 2

main = do
  print (func $ snd $ head [(1, 2), (3, 4)])

--   print (func (snd (head [(1, 2), (3, 4), (3, 3)])))
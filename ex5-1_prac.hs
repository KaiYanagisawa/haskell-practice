main = do
  mapM_ f "abc"
  where
    f q =
      print q

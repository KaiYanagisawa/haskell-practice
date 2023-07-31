import Data.Char

age friends name =
    snd $ head $ filter search friends
  where
    search f = (fst f) == map toLower name
main = do
    print (age [("neko", 18), ("hokori", 20), ("ebi", 16)] "Neko")
    print (age [("neko", 18), ("hokori", 20), ("ebi", 16)] "EBI")
    print (age [("neko", 18), ("hokori", 20), ("ebi", 16)] "HoKoRi")
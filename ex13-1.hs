data Sumi =
    Neko | Tokage | Kyoryu
    deriving Show

instance Eq Sumi where
    (==) x y =
        case (x,y) of
            (Neko, Neko) -> True
            (Tokage, Tokage) -> True 
            (Tokage, Kyoryu) -> True
            (Kyoryu, Kyoryu) -> True 
            (Kyoryu, Tokage) -> True
            _ -> False

main = do
    let sumi = [Neko, Tokage, Kyoryu]
    print $ filter (== Neko) sumi
    print $ filter (/= Tokage) sumi
    print $ filter (/= Kyoryu) sumi
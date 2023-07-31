data Item =
    File String
    | Folder String [Item]
    deriving (Eq, Show)

instance Ord Item where
    compare x y =
        if f x < f y then GT else if f x > f y then LT else EQ
    
f item =
    case item of
        File name -> length name
        Folder name items -> (foldr (*) 1 [f item | item <- items]) `div` 2

ordered xs =
    case xs of
        x:y:zs -> x <= y && ordered (y:zs)
        _ -> True

main = do
    let a = File "shirokuma" -- 9
    let b = File "penguin" -- 7
    let c = Folder "C" [File "obake", File "yama"] -- 10
    let d = Folder "D" [Folder "E" [File "ebifurai"], File "neko"] -- 8
    print $ ordered [c,a,d,b]
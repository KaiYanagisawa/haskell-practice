data Shape =
    Circle Double | Rect Double Double
    deriving (Eq, Show)

class Sanity a where
    crazy::a -> Bool

instance Sanity Shape where
    crazy (Circle r) = r < 0
    crazy (Rect w h) = w < 0 || h < 0

main = do
    print $ map crazy [Circle 3, Circle 0, Circle (-2)]
    print $ map crazy [Rect 4 7, Rect 3 (-1), Rect (-3) 2]
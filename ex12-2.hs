data IntTree
    = Leaf Int
    | Node Int IntTree IntTree
    deriving (Eq, Show)

f t =
    case t of
        Leaf i -> [12 `mod` i]
        Node i t1 t2 -> f t1 ++ [i] ++ f t2

main = do
    print $ f $ Node 4 (Leaf 7) (Leaf 10)
    print $ f $ Node 6 (Node 7 (Leaf 8) (Leaf 5)) (Leaf 9)

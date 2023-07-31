data IntTree =
    Leaf Int | Node Int IntTree IntTree
    deriving(Eq, Show)

num_leaf t =
    case t of
    Leaf _ -> 1
    Node _ left right -> num_leaf left + num_leaf right

main = do
    print $ num_leaf $ Node 9 (Leaf 6) (Leaf 2)
    print $ num_leaf $ Node 7 (Node 8 (Leaf 4) (Leaf 6)) (Leaf 11)


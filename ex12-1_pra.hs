data Exp =  Num Int | Add Exp Exp | Sub Exp Exp | Var String deriving (Eq, Show)

main :: IO ()
main = do 
	let exp1 = Add(Var "x") (Num 3) 
	print exp1

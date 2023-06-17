data Tree a = Node a [Tree a] deriving (Eq, Show)


bottom_up (Node a []) = [a]

bottom_up (Node a (h:t)) = ""++ bottom_up h ++ (bottom_up_helper t)++ "" ++ [a] 

bottom_up_helper [] = ""
bottom_up_helper (h:t) = bottom_up h ++ (bottom_up_helper t)




















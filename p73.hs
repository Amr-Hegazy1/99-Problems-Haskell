data Tree a = Node a [Tree a] deriving (Eq, Show)

display (Node a []) = [a]


display (Node a (h:t)) | nnodes (Node a (h:t)) > 1 = "(" ++ [a] ++ display h ++ display_helper t ++ ")"
                       | otherwise = [a] ++ display h ++ display_helper t

display_helper [] = ""

display_helper (h:t) =  display h ++ display_helper t

















nnodes (Node a []) = 1

nnodes (Node a (h:t)) = 1 + (nnodes h) + (countTrees t)

countTrees [] = 0

countTrees (h:t) = nnodes h + countTrees t
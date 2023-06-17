data Tree a = Node a [Tree a] deriving (Eq, Show)

nnodes (Node a []) = 1

nnodes (Node a (h:t)) = 1 + (nnodes h) + (countTrees t)

countTrees [] = 0

countTrees (h:t) = nnodes h + countTrees t
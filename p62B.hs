data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)


atLevel Empty _ = []



atLevel (Branch a l r) 1 = [a]

atLevel (Branch a l r) i = atLevel l (i-1) ++ atLevel r (i-1)
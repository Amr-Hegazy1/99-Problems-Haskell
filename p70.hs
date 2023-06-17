data Tree a = Node a [Tree a] deriving (Eq, Show)

treeToString (Node a []) = [a] ++ "^"

treeToString (Node a (h:t)) = [a] ++ treeToString h ++ treeToStringHelper t

treeToStringHelper [] = "^"

treeToStringHelper (h:t) = treeToString h ++ treeToStringHelper t









-- stringToTree (h1:h2:t) | h2 == '^'

-- stringToTree (h:t) | h >= 'a' && h <= 'z' = (Node h (stringToTree t) )




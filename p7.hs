data NestedList a = Elem a | List [NestedList a] deriving Show

flatten :: NestedList a -> [a]

flatten (List []) = []

flatten  (Elem a)  = [a] 

flatten  (List (x:xs)) =  flatten (x) ++( flatten (List xs))


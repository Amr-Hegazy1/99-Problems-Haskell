data NestedList a = Elem a | List [NestedList a]

flatten [] = []

flatten x 

flatten (x:t) = flatten x ++ flatten t

flatten (x:t) = x ++ flatten t
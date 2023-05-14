split (h:t) 0 = ([],t)
split (h:t) c = (h:ys,zs) where (ys,zs) = split t (c-1)


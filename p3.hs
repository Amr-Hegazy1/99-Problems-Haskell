elementAt (x:_) 1 = x

elementAt (x:t) i = elementAt t (i-1)
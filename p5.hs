myReverse [] = [] 

myReverse (x:t) = myReverse t ++ [x]
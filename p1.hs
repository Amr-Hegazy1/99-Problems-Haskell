-- get last element

myLast [x] = x

myLast (x:t) = myLast t

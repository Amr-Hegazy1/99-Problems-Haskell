test l = foldr f (0,0,1) l

f x (sums,diffs,muls) = (sums+x,diffs-x,muls*x)

myfoldl f b [] = b

myfoldl f b (h:t) = f (myfoldl f b t) h

test2 l = myfoldl (++) [] l

data Tree = Node Int (Tree ) (Tree )
insertAt x l 1 = (x:l)

insertAt x (h:t) c = (h:(insertAt x t (c-1)))
removeAt 1 (h:t) = (h,t)

removeAt c (h:t) = (ys,[h] ++ zs) where (ys,zs) = removeAt (c-1) t
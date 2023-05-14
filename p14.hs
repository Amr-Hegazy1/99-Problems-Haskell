dupli [] = []

dupli (h:t) = [h,h] ++ dupli t
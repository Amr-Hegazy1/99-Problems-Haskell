

paths a b l = paths_helper a b l []



paths_helper a b [] acc | acc == [] = []
                        | (last acc == b) = [acc]
                        | otherwise = []


paths_helper a b ((e1,e2):t) acc | a == e1 && b == e2 = (acc ++ [a,b]) : (paths_helper a b t [])
                                 | a == e1 = paths_helper e2 b t (acc++[a]) ++ paths_helper a b t acc
                                 | otherwise = paths_helper a b t acc




















data Hold a b = Test a b

op :: (Num a, Num b) => a -> b -> Hold a b
op x b = Test (x + 1) (b + 1)
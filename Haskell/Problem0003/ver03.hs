-- Project Euler 0003 : https://projecteuler.net/problem=3

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.4.2  https://wandbox.org
-- The Glorious Glasgow Haskell Compilation System, version 7.10.3 https://wandbox.org

div_AsMuchAsPossible :: Integer -> Integer -> Integer
div_AsMuchAsPossible target ref
    | snd rtvl_divMod == 0 = div_AsMuchAsPossible (fst rtvl_divMod) ref
    | otherwise            = target
    where
        rtvl_divMod = divMod target ref
    
prob0003_core :: Integer -> Integer -> Integer
prob0003_core target fctr_itr
    | retval == 1 = fctr_itr
    | otherwise   = prob0003_core retval (fctr_itr + 1)
    where
        retval = div_AsMuchAsPossible target fctr_itr
    
prob0003 :: Integer -> Integer
prob0003 target = prob0003_core target 2

main :: IO ()
main = do
    print $ prob0003        13195 --   29
    print $ prob0003 600851475143 -- 6857

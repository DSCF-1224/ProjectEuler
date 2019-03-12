-- Project Euler 0003 : https://projecteuler.net/problem=3

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.4.2  https://wandbox.org
-- The Glorious Glasgow Haskell Compilation System, version 7.10.3 https://wandbox.org


is_Multiple :: Integer -> Integer -> Bool
is_Multiple target ref
    | mod target ref == 0 = True
    | otherwise           = False

div_AsMuchAsPossible :: Integer -> Integer -> Integer
div_AsMuchAsPossible target ref
    | is_Multiple target ref == True = div_AsMuchAsPossible (div target ref) ref 
    | otherwise                      = target
    
prob0003_core :: Integer -> Integer -> Integer
prob0003_core target factor
    | retval == 1 = factor
    | otherwise   = prob0003_core retval (factor + 1)
    where
        retval = div_AsMuchAsPossible target factor
    
prob0003 :: Integer -> Integer
prob0003 target = prob0003_core target 2

main :: IO ()
main = do
    print $ prob0003        13195 --   29
    print $ prob0003 600851475143 -- 6857

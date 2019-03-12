-- Project Euler 0003 : https://projecteuler.net/problem=3

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.4.2

-- [reference]
-- http://gumfum.hatenablog.com/entry/2018/01/05/014707
-- http://d.hatena.ne.jp/mokehehe/20070615/factorization

make_list_factors :: Integer -> [Integer]
make_list_factors target = [n | n <- [1..target], mod target n == 0]

make_list_PrimeFactors :: Integer -> [Integer]
make_list_PrimeFactors 1 = []
make_list_PrimeFactors n = element : make_list_PrimeFactors (div n element)
    where
        element = (make_list_factors n) !! 1

prob0003 :: Integer -> Integer
prob0003 target = last $ make_list_PrimeFactors target

main = do
    print $ prob0003        13195 --   29
    print $ prob0003 600851475143 -- 6875

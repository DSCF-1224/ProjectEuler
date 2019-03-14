-- Project Euler 0005 : https://projecteuler.net/problem=5

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.6.3

-- [reference]
-- 1. http://d.hatena.ne.jp/mokehehe/20070615/factorization
-- 2. https://tnomura9.exblog.jp/12332000/

isMultiple :: Integer -> Integer -> Bool
isMultiple target divisor = mod target divisor == 0

list_Factors :: Integer -> [Integer]
list_Factors target = [x | x <- [1..target], isMultiple target x]

list_PrimeFactors :: Integer -> [Integer]
list_PrimeFactors target
    | target == 1 = []
    | otherwise   = element : list_PrimeFactors (div target element)
    where
        element = (list_Factors target) !! 1

main :: IO ()
main = do
    print $ list_PrimeFactors 2520
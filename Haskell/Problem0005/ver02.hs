-- Project Euler 0005 : https://projecteuler.net/problem=5

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.6.3

is_multiple :: Integer -> Integer -> Bool
is_multiple target ref = mod target ref == 0

isPrime :: Integer -> [Integer] -> Bool
isPrime target list_PrimeNums
    | list_PrimeNums == [] = True
    | otherwise            = if is_multiple target (head list_PrimeNums) then False else isPrime target (tail list_PrimeNums)

make_list_PrimeNums_core :: Integer -> Integer -> [Integer] -> [Integer]
make_list_PrimeNums_core itr limit list_PrimeNums
    | last list_PrimeNums >  limit = init list_PrimeNums
    | last list_PrimeNums >= limit = list_PrimeNums
    | otherwise                    = if isPrime itr list_PrimeNums then make_list_PrimeNums_core itr limit (list_PrimeNums ++ [itr]) else make_list_PrimeNums_core (itr + 1) limit list_PrimeNums

make_list_PrimeNums :: Integer -> [Integer]
make_list_PrimeNums limit = make_list_PrimeNums_core 2 limit [2]

-- convert_boolen_string :: Bool -> String
-- convert_boolen_string boolen = if boolen then "True" else "False"

main :: IO ()
main = do
    print $ make_list_PrimeNums 100000
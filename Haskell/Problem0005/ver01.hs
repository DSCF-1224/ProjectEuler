-- Project Euler 0005 : https://projecteuler.net/problem=5

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.4.2
-- The Glorious Glasgow Haskell Compilation System, version 7.10.3

prob0005 :: Integer -> Integer
prob0005 limit
    | limit > 2 = lcm limit $ prob0005 $ limit - 1
    | otherwise = 1


main :: IO ()
main = do
    print $ prob0005 10 --                                2520
    print $ prob0005 20 --                           232792560
    print $ prob0005 40 --                    5342931457063200
    print $ prob0005 80 -- 32433859254793982911622772305630400

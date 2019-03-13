-- Project Euler 0005 : https://projecteuler.net/problem=5

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.6.3
-- The Glorious Glasgow Haskell Compilation System, version 8.4.2
-- The Glorious Glasgow Haskell Compilation System, version 7.10.3

prob0005 :: Integer -> Integer
prob0005 limit
    | limit > 2 = lcm limit $ prob0005 $ limit - 1
    | otherwise = 1


main :: IO ()
main = do
    print $ prob0005  10 -- 2520
    print $ prob0005  20 -- 232792560
    print $ prob0005 100 -- 69720375229712477164533808935312303556800
    print $ prob0005 200 -- 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000

-- Project Euler 0001 : https://projecteuler.net/problem=1

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.6.3

-- 次の2個の条件を満足する整数から構成されるリストを返します。
-- 1. `1`以上`limit`未満である
-- 2. `dvs`の倍数である
make_list_Multiple :: Integer -> Integer -> [Integer]
make_list_Multiple dvs limit = [n | n <- [1..limit], mod n dvs == 0 && n < limit]

sum_list_Multiple :: Integer -> Integer -> Integer
sum_list_Multiple dvs limit = sum $ make_list_Multiple dvs limit

prob0001 :: Integer -> Integer
prob0001 limit = (sum_list_Multiple 3 limit) + (sum_list_Multiple 5 limit) - (sum_list_Multiple 15 limit)

-- 以下、主プロセス --
main = do
    print $ prob0001 (    10) -- 23
    print $ prob0001 (  1000) -- 233168
    print $ prob0001 (100000) -- 2333316668
    putStrLn "Finished" 

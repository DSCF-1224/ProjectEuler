-- Project Euler 0002 : https://projecteuler.net/problem=2

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.6.3

-- Fibonacci 数列の第`n`を返します。
calc_Fibonacci :: Integer -> Integer
calc_Fibonacci n
    | n == 1 = 1
    | n == 2 = 2
    | n >= 3 = calc_Fibonacci (n - 1) + calc_Fibonacci (n - 2)


-- `limit`以下で最大のFibonacci数は第`term`項である
is_LessEqual_Limit_core :: Integer -> Integer -> Integer
is_LessEqual_Limit_core term limit
    | calc_Fibonacci (term) > limit = term - 1
    | otherwise                     = is_LessEqual_Limit_core (term + 1) limit

is_LessEqual_Limit_main :: Integer -> Integer
is_LessEqual_Limit_main limit = is_LessEqual_Limit_core 1 limit


-- Integer型変数`n`が2の倍数であるとき、`n`自身を加算します。
-- それ以外の場合、`0`を返します。
is_Even :: Integer -> Integer
is_Even n
    | mod n 2 == 0 = n
    | otherwise    = 0


-- `calc_Fibonacci`で定義される、
-- Fibonacci数列の第`n`項までの偶数項の総和を返します。
sum_EvenTerms :: Integer -> Integer
sum_EvenTerms n
    | n <= 0 = 0
    | n == 1 = is_Even (n)
    | n >= 2 = sum_EvenTerms (n - 1) + is_Even (calc_Fibonacci n)


prob0002 :: Integer -> Integer
prob0002 limit = sum_EvenTerms (is_LessEqual_Limit_main limit)

-- 以下、主プロセス --
main = do
    print $ prob0002 $ 4*10^6 -- 4613732
    putStrLn "Finished" 

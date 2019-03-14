-- Project Euler 0007 : https://projecteuler.net/problem=7

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.6.3

-- `target`が`divisor`の倍数であれば，`True`を返します．
-- それ以外の場合では，`False`を返します．
isMultiple :: Integer -> Integer -> Bool
isMultiple target divisor = mod target divisor == 0

-- 既存の素数のみから構成されるリストを参照することで，
-- `target`が素数であるかを判定します．
-- `target`が素数であれば，`True`を返します。
-- それ以外の場合では，`False`を返します．
isPrime :: Integer -> [Integer] -> Bool
isPrime target list_PrimeNums
    | list_PrimeNums == [] = True
    | otherwise            = if isMultiple target (head list_PrimeNums) then False else isPrime target (tail list_PrimeNums)

-- `2`を1個目とする`limit_len`番目までの素数から構成されるリストを返します．
make_list_PrimeNums_core :: Integer -> Int -> [Integer] -> [Integer]
make_list_PrimeNums_core itr limit_len list_PrimeNums
    | length list_PrimeNums == limit_len = list_PrimeNums
    | length list_PrimeNums >  limit_len = init list_PrimeNums
    | otherwise                          = if isPrime itr list_PrimeNums then make_list_PrimeNums_core itr limit_len (list_PrimeNums ++ [itr]) else make_list_PrimeNums_core (itr + 1) limit_len list_PrimeNums

make_list_PrimeNums :: Int -> [Integer]
make_list_PrimeNums limit_len = make_list_PrimeNums_core 2 limit_len [2]

-- `2`を1個目として，`limit_len`番目の素数を返します．
prob0007 :: Int -> Integer
prob0007 limit_len = last $ make_list_PrimeNums limit_len

-- 以下、主プロセス --
main :: IO ()
main = do
    print $ prob0007     (6::Int) -- 13
    print $ prob0007 (10001::Int) -- 104743
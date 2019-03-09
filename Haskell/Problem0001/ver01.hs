-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.6.3

-- Integer型変数`n`が次の2つの条件の少なくとも一方を満足するとき、`n`自身を返します。
-- 1. 整数`n`が3の倍数であるとき。
-- 2. 整数`n`が5の倍数であるとき。
-- それ以外の場合では、`0`を返します。
is_TargetMultiple :: Integer -> Integer
is_TargetMultiple n
    | mod n 3 == 0 || mod n 5 == 0 = n
    | otherwise                    = 0

-- Integer型変数`n`が4以上のとき、`is_TargetMultiple`に`n`自身渡した結果を加算します。
-- Integer型変数`n`が3に等しいとき、`3`を返します。
-- Integer型変数`n`が3未満のとき、`0`を返します。
prob0001_core :: Integer -> Integer
prob0001_core n
    | n >= 4 = is_TargetMultiple (n) + prob0001_core (n - 1)
    | n == 3 = 3
    | n <= 2 = 0

-- 再帰処理の範囲の調整
prob0001_main :: Integer -> Integer
prob0001_main n = prob0001_core (n - 1)

-- 以下、主プロセス --
main = do
    print $ prob0001_main (    10) -- 23
    print $ prob0001_main (  1000) -- 233168
    print $ prob0001_main (100000) -- 2333316668
    putStrLn "Finished" 

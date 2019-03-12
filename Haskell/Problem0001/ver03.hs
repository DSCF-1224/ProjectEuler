-- Project Euler 0001 : https://projecteuler.net/problem=1

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.6.3

-- modules to import
import System.Exit


-- Integer型変数`n`が次の2つの条件の少なくとも一方を満足するとき、`True`を返します。
-- 1. 整数`n`が3の倍数であるとき。
-- 2. 整数`n`が5の倍数であるとき。
-- それ以外の場合では、`False`を返します。
is_TargetMultiple :: Integer -> Bool
is_TargetMultiple n
    | mod n 3 == 0 || mod n 5 == 0 = True
    | otherwise                    = False


-- 渡されたリスト`list`から、
-- 次の2つの条件の少なくとも一方を満足する要素のみを
-- 抽出したリストを返す。
-- 1. 整数`n`が3の倍数であるとき。
-- 2. 整数`n`が5の倍数であるとき。
extract_TargetMultiple :: [Integer] -> [Integer]
extract_TargetMultiple list = filter is_TargetMultiple list


-- 1以上`limit`未満の整数中から、
-- 次の2つの条件の少なくとも一方を満足する要素のみの和を返す。
-- 1. 整数`n`が3の倍数であるとき。
-- 2. 整数`n`が5の倍数であるとき。
prob0001 :: Integer -> Integer
prob0001 limit = sum $ extract_TargetMultiple [1..limit-1]

-- 以下、主プロセス --
main :: IO ()
main = do
    print $ prob0001     10 -- 23
    print $ prob0001   1000 -- 233168
    print $ prob0001 100000 -- 2333316668
    putStrLn "Finished" 
    exitWith $ ExitSuccess

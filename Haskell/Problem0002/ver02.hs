-- Project Euler 0002 : https://projecteuler.net/problem=2

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.6.3


-- modules to import
import System.Exit


-- 与えられたリスト`list`の末尾の2個の要素を用いて，
-- Fibnacci数列の次項を算出する
calc_NextTerm_FibnacciSequence :: [Integer] -> Integer
calc_NextTerm_FibnacciSequence list = last (list) + last (init list)

-- `limit`未満の項のみを含むFibnacci数列を返す
make_FiniteList_FibnacciSequence :: Integer -> [Integer] -> [Integer]
make_FiniteList_FibnacciSequence limit list
    | last list < limit = make_FiniteList_FibnacciSequence limit $ list ++ [calc_NextTerm_FibnacciSequence list]
    | last list > limit = init list
    | otherwise         = list

-- 与えられたリスト`list`から偶数項のみを含むリストを生成する
extract_EvensFromList :: [Integer] -> [Integer]
extract_EvensFromList list = filter is_Even list
    where
        is_Even :: Integer -> Bool
        is_Even target
            | mod target 2 == 0 = True
            | otherwise         = False

-- 与えられたリスト`list`から偶数項のみを含むリストを生成する
prob0002 :: Integer -> [Integer] -> Integer
prob0002 limit vals_Init = sum $ extract_EvensFromList $ make_FiniteList_FibnacciSequence limit vals_Init


-- 以下、主プロセス --
main :: IO ()
main = do
    let vals_Init = [1, 2]
    print $ prob0002 (4 * 10 ^ ( 6::Int)) vals_Init -- 4613732
    print $ prob0002 (4 * 10 ^ (24::Int)) vals_Init -- 1655824071758491008590040
    print $ prob0002 (4 * 10 ^ (96::Int)) vals_Init -- 2088094157205232012574058262559419928285953824759228312060238982602762303057877253998242338614386
    putStrLn "Finished"
    exitWith $ ExitSuccess
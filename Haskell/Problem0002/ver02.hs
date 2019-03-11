-- Project Euler 0002 : https://projecteuler.net/problem=2

-- [Used Compiler]
-- The Glorious Glasgow Haskell Compilation System, version 8.2.2

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
    
main = do
    let limit     = 4*10^6
    let vals_Init = [1, 2]
    print $ prob0002 limit vals_Init -- 4613732
    putStrLn "Finished" 
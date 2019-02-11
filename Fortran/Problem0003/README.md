# Project Euler by Fortran : Problem 0003 #

## [設問](https://projecteuler.net/problem=3) ##
The prime factors of 13195 are 5, 7, 13 and 29.  
What is the largest prime factor of the number 600851475143 ?

## Problem0003_01.f08 ##

### `module Problem0003` ###

#### `interface Problem0003_01` ####
- `public` 属性
- 手続の総称名を宣言するために使用．対象外部手続きは以下の2個の `function`
    - [`function Problem0003_01_INT32`](#function-problem0003_01_int32)
    - [`function Problem0003_01_INT64`](#function-problem0003_01_int64)

#### `interface Problem0003_02` ####
- `public` 属性
- 手続の総称名を宣言するために使用．対象外部手続きは以下の2個の `function`
    - [`function Problem0003_02_INT32`](#function-problem0003_02_int32)
    - [`function Problem0003_02_INT64`](#function-problem0003_02_int64)

#### `interface judge_ismultiple` ###
- `private` 属性
- 手続の総称名を宣言するために使用．対象外部手続きは以下の2個の `function`
    - [`function judge_ismultiple_INT32`](#function-judge_ismultiple_INT32)
    - [`function judge_ismultiple_INT64`](#function-judge_ismultiple_INT64)

#### `function Problem0003_01_INT32` ####
- `private` 属性
- 当該 `function` の引数は32bit整数型変数 `target` の1個．素数であるか否かを判定する自然数を `target` に与える．
- 当該 `function` の戻し値 `factor_last` は，自然数 `target` の最大の素因数である
- 素因数の候補 `factor_crnt` は 32bit整数型変数 `factor` に格納され，`1_INT32` ずつ更新される．

#### `function Problem0003_01_INT64` ####
- `private` 属性
- [`function Problem0003_01_INT32`](#function-problem0003_01_int32) の引数，内部処理ならびに戻し値を64bit整数型変数に変更したもの

#### `function Problem0003_02_INT32` ####
- `private` 属性
- 当該 `function` の引数は32bit整数型変数 `target` の1個．素数であるか否かを判定する自然数を `target` に与える．
- 当該 `function` の戻し値は，自然数 `target` の最大の素因数である
- [`function Problem0003_01_INT32`](#function-problem0003_01_int32) において，2と「2より大きい素数」を素因数として何個含むのかを調べる部分を分離し，「2より大きい素数」の個数を調べる部分における `factor` の更新幅を `2_INT32` として，処理の高速化を図っている
- 素因数の候補は 32bit整数型変数 `factor` に格納され，`1_INT32` ずつ更新される

#### `function Problem0003_02_INT64` ####
- `private` 属性
- [`function Problem0003_02_INT32`](#function-problem0003_02_int32) の引数，内部処理ならびに戻し値を64bit整数型変数に変更したもの

#### `function Problem0003_03_INT32` ####
- 工事中

#### `function Problem0003_03_INT64` ####
- [`function Problem0003_03_INT32`](#function-problem0003_03_int32) の引数，内部処理ならびに戻し値を64bit整数型変数に変更したもの
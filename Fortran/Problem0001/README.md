# Project Euler 0001 #

## [設問](https://projecteuler.net/problem=1) ##
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.

## テスト環境 ##
gfortran 8.1.0

## 構成 ##
- [Problem0001_01.f08](#problem0001_01f08)
    - [`module Problem0001`](#module-problem0001)
        - [`function Problem0001_01`](#function-problem0001_01)
        - [`function Problem0001_02`](#function-problem0001_02)
        - [`function Problem0001_03_sub`](#function-problem0001_03_sub)
        - [`function Problem0001_03`](#function-problem0001_03)
- [main.f08](#mainf08)

## Problem0001_01.f08 ##

### `module Problem0001` ###
- 組み込み `module` [`module iso_fortran_env`](https://gcc.gnu.org/onlinedocs/gfortran/ISO_005fFORTRAN_005fENV.html) を必須とする
- 自作 `module` [`support_projecteuler`](../support/support_projecteuler.f08) を必須とする

#### `function Problem0001_01` ####
- 当該 `function` の引数は `limit` の1個．3か5の倍数であるかを判定する自然数の上限を与える．本問題なら `1000` を与えればよい．
- 反復子 `itr` を `1` から `limit-1` まで `1` ずつ増加させ，組み込み関数 [`mod`](https://gcc.gnu.org/onlinedocs/gfortran/MOD.html) を用いて，`itr` が3か5の倍数であるかを判定する
- 反復子 `itr` は `itr=itr+1` で更新し，`limit` 未満であるか否かは `do while` 構文で判定する．
- `3` の倍数であるか否か，及び `5` の倍数であるか否かは，自作 `module` [`support_projecteuler`](../support/support_projecteuler.f08) 中の `function determine_ismultiple` を用いる

#### `function Problem0001_02` ####
- 当該 `function` の引数は `limit` の1個．3か5の倍数であるかを判定する自然数の上限を与える．本問題なら `1000` を与えればよい．
- 反復子 `itr` を `1` から `limit-1` まで `1` ずつ増加させ，組み込み関数 [`mod`](https://gcc.gnu.org/onlinedocs/gfortran/MOD.html) を用いて，`itr` が3か5の倍数であるかを判定する
- 反復子 `itr` は `do` 構文で更新する
- `3` の倍数であるか否か，及び `5` の倍数であるか否かは，自作 `module` [`support_projecteuler`](../support/support_projecteuler.f08) 中の `function determine_ismultiple` を用いる

#### `function Problem0001_03_sub` ####
- 当該 `function` の引数は `divisor` と `limit` の2個．
- `1` から `limit` までの自然数の内，`divsor` の倍数だけの和を求めるための `function`
- 求める `divsor` の倍数の総和の算出には，等差数列の総和の公式を用いる

#### `function Problem0001_03` ####
- 当該 `function` の引数は `limit` の1個．3か5の倍数であるかを判定する自然数の上限を与える．本問題なら `1000` を与えればよい．
[`function Problem0001_03_sub`](#function-problem0001_03_sub) を用いて，`1` から `limit` までの自然数の内，`3`, `5` および `15` の倍数の総和を求める．`3` ならびに `5` の倍数には，各々 `15` の倍数が含まれているので，`15` の倍数の総和も算出して，その補正を行っている．

## main.f08 ##

### `program main` ###
- 組み込みモジュール [`module iso_fortran_env`](https://gcc.gnu.org/onlinedocs/gfortran/ISO_005fFORTRAN_005fENV.html) と自作モジュール [`module Problem0001`](https://github.com/DSCF-1224/ProjectEuler/tree/master/Fortran#module-problem0001) を必須とする
- [`function Problem0001_01`](https://github.com/DSCF-1224/ProjectEuler/tree/master/Fortran#function-problem0001_01), [`function Problem0001_02`](https://github.com/DSCF-1224/ProjectEuler/tree/master/Fortran#function-problem0001_02), [`function Problem0001_03`](https://github.com/DSCF-1224/ProjectEuler/tree/master/Fortran#function-problem0001_03) を運用するための `program` 文

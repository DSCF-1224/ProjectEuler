# Project Euler by Fortran 2008

## テスト環境 ##
gfortran 8.1.0

## 構成 ##
- [Problem 0001](#problem-0001)
	- [Problem0001_01.f08](#problem0001_01f08)
		- [`module Problem0001`](#module-problem0001)
			- [`function Problem0001_01`](#function-problem0001_01)
			- [`function Problem0001_02`](#function-problem0001_02)
			- [`function Problem0001_03_sub`](#function-problem0001_03_sub)
			- [`function Problem0001_03`](#function-problem0001_03)
	- [main.f08](#mainf08)
- [Problem 0002](#problem-0002)
	- [Problem0002_01.f08](#problem0002_01f08)
		- [`module Problem0002`](#module-problem0002)
			- [`function Calc_FibonacciNum`](#function-calc_fibonaccinum)
			- [`function Problem0002_01`](#function-problem0002_01)
			- [`function Problem0002_02`](#function-problem0002_02)
- [Problem 0004](#problem-0004)
	- [Problem0004_01.f08](#problem0004_01f08)
		- [`module Problem0004`](#module-problem0004)
			- [`subroutine Problem0004_01`](#subroutine-problem0004_01)
			- [`function Get_Digits`](#function-get_digits)
			- [`function Check_IsPalindromic`](#function-check_ispalindromic)
			- [`function Pick_ValTargetDigit`](#function-pick_valtargetdigit)
- [Problem 0005](#problem-0005)
	- [Problem0005_01.f08](#problem0005_01f08)
		- [`module Problem0005`](#module-problem0005)
			- [`subroutine Problem0005_01`](#function-problem0005_01)
- [Problem 0006](#problem-0006)
	- [Problem0006_01.f08](#problem0006_01f08)
		- [`module Problem0006`](#module-problem0006)
			- [`interface Problem0006_01`](#interface-problem0006_01)
			- [`interface Problem0006_02`](#interface-problem0006_02)
			- [`function Problem0006_01_INT32`](#function-problem0006_01_int32)
			- [`function Problem0006_01_INT64`](#function-problem0006_01_int64)
			- [`function Problem0006_02_INT32`](#function-problem0006_02_int32)
			- [`function Problem0006_02_INT64`](#function-problem0006_02_int64)
- [Problem 0007](#problem-0007)
	- [Problem0007_01.f08](#problem0007_01f08)
		- [`module Problem0007`](#module-problem0007)
			- [`interface Problem0007_01`](#interface-problem0007_01)
			- [`interface Check_IsPrime`](#interface-problem0007_01)
			- [`function Problem0007_01_INT32`](#function-problem0007_01_int32)
			- [`function Check_IsPrime_INT32`](#function-check_isprime_int32)

# Problem 0001 #

## Problem0001_01.f08 ##

### `module Problem0001` ###
- 組み込みモジュール [`module iso_fortran_env`](https://gcc.gnu.org/onlinedocs/gfortran/ISO_005fFORTRAN_005fENV.html) を必須とする

#### `function Problem0001_01` ####
- 当該 `function` の引数は `limit` の1個．3か5の倍数であるかを判定する自然数の上限を与える．本問題なら `1000` を与えればよい．
- 反復子 `itr` を `1` から `limit-1` まで `1` ずつ増加させ，組み込み関数 [`mod`](https://gcc.gnu.org/onlinedocs/gfortran/MOD.html) を用いて，`itr` が3か5の倍数であるかを判定する
- 反復子 `itr` は `itr=itr+1` で更新し，`limit` 未満であるか否かは `do while` 構文で判定する．

#### `function Problem0001_02` ####
- 当該 `function` の引数は `limit` の1個．3か5の倍数であるかを判定する自然数の上限を与える．本問題なら `1000` を与えればよい．
- 反復子 `itr` を `1` から `limit-1` まで `1` ずつ増加させ，組み込み関数 [`mod`](https://gcc.gnu.org/onlinedocs/gfortran/MOD.html) を用いて，`itr` が3か5の倍数であるかを判定する
- 反復子 `itr` は `do` 構文で更新する

#### `function Problem0001_03_sub` ####
- 当該 `function` の引数は `divisor` と `limit` の2個．
- `1` から `limit` までの自然数の内，`divsor` の倍数だけの和を求めるための `function`
- 求める `divsor` の倍数の総和の算出には，等差数列の総和の公式を用いる

#### `function Problem0001_03` ####
- 当該 `function` の引数は `limit` の1個．3か5の倍数であるかを判定する自然数の上限を与える．本問題なら `1000` を与えればよい．
- `function Problem0001_03_sub` を用いて，`1` から `limit` までの自然数の内，`3`, `5` および `15` の倍数の総和を求める．`3` ならびに `5` の倍数には，各々 `15` の倍数が含まれているので，`15` の倍数の総和も算出して，その補正を行っている．

## main.f08 ##

### `program main` ###
- 組み込みモジュール [`module iso_fortran_env`](https://gcc.gnu.org/onlinedocs/gfortran/ISO_005fFORTRAN_005fENV.html) と自作モジュール [`module Problem0001`](https://github.com/DSCF-1224/ProjectEuler/tree/master/Fortran#module-problem0001) を必須とする
- [`function Problem0001_01`](https://github.com/DSCF-1224/ProjectEuler/tree/master/Fortran#function-problem0001_01), [`function Problem0001_02`](https://github.com/DSCF-1224/ProjectEuler/tree/master/Fortran#function-problem0001_02), [`function Problem0001_03`](https://github.com/DSCF-1224/ProjectEuler/tree/master/Fortran#function-problem0001_03) を運用するための `program` 文

# Problem 0002 #

## Problem0002_01.f08 ##

### `module Problem0002` ###
- 組み込みモジュール [`module iso_fortran_env`](https://gcc.gnu.org/onlinedocs/gfortran/ISO_005fFORTRAN_005fENV.html) を必須とする
- `Fibonacci_1st` : Fibonacci 数列の第1項（本問題での定義値）を格納する `parameter` 属性の整数型変数
- `Fibonacci_2nd` : Fibonacci 数列の第2項（本問題での定義値）を格納する `parameter` 属性の整数型変数

#### `function Calc_FibonacciNum` ####
- 当該 `function` の引数は `term` の1個．Fibonacci 数列の第 `term` 項を求める
- 当該 `function` には `recursive` 属性を付与することで，Fibonacci 数列の第 `term` 項を再帰的に求めている

#### `function Problem0002_01` ####
- 当該 `function` の引数は `limit` の1個．Fibonacci 数列の項の値の上限を与える．本問題なら `4*10**6` を与えればよい．
- [`function Calc_FibonacciNum`](https://github.com/DSCF-1224/ProjectEuler/tree/master/Fortran#function-calc_fibonaccinum) を用いて Fibonacci 数列の各項の値を求め，組み込み関数 [`mod`](https://gcc.gnu.org/onlinedocs/gfortran/MOD.html) を用いて，その値が偶数か否かを判定している

#### `function Problem0002_02` ####
- 当該 `function` の引数は `limit` の1個．Fibonacci 数列の項の値の上限を与える．本問題なら `4*10**6` を与えればよい．
- 再帰処理を用いる [`function Calc_FibonacciNum`](https://github.com/DSCF-1224/ProjectEuler/tree/master/Fortran#function-calc_fibonaccinum) では，Fibonacci 数列の各項の値を求めるのに時間を要するため，その演算過程をメモ化している

# Problem 0004 #

## Problem0004_01.f08 ##

### `module Problem0004` ###

#### `subroutine Problem0004_01` ####
- 当該 `subroutine` の引数は `digit` の1個．回文数の因数の桁数を指定する．本問題なら `3` を与えればよい．
- 【処理の過程】
	1. 引数 `digit` から，回文数の因数の走査範囲を決定する．また，回文数の仮保存用変数を初期化する
	2. 2つの反復子 `itrLv1`, `itrLv2` の積 `product` が，回文数の候補になる．現時点で最大の回文数 `buf_Palindromic` よりも `product` の値が小さければ `itrLv2` のループから抜け，`itrLv1` を更新する．`product` が `buf_Palindromic` 以上であれば，`function Check_IsPalindromic` を用いて `product` 回文数であるか否かを判定する．回文数であれば，`buf_Palindromic` を `product` で更新する

#### `function Get_Digits` ####
- 当該 `function` の引数は `target` の1個．`target` が何桁の自然数であるかを返す．

#### `function Check_IsPalindromic` ####
- 当該 `function` の引数は `target` の1個．`target` が回文数であるか否かを論理値で返す．
- 【処理の過程】
	1. `function Get_Digits` を用いて，`target` の桁数を取得する
	2. `target` の桁数 `num_digit` に応じて，回文数であるか否かを判定する際に調べる数の組の個数を決め，`itr_Max` に個数を格納する
	3. `target` の上 `itr_Max` 桁と下`itr_Max` の一致の状況を調べ，回文数であるか否かを判定する

#### `function Pick_ValTargetDigit` ####
- 当該 `function` の引数は `target` と `digit` の2個．`target` の `digit` の位の値を返す．

# Problem 0005 #

## Problem0005_01.f08 ##

### `module Problem0005` ###

#### `function Problem0005_01` ####
- 工事中

# Problem 0006 #

## Problem0006_01.f08 ##

### `module Problem0006` ###

#### `interface Problem0006_01` ####
- 工事中

#### `interface Problem0006_02` ####
- 工事中

#### `function Problem0006_01_INT32` ####
- 工事中

#### `function Problem0006_01_INT64` ####
- 工事中

#### `function Problem0006_02_INT32` ####
- 工事中

#### `function Problem0006_02_INT64` ####
- 工事中

# Problem 0007 #

## Problem0007_01.f08 ##

### `module Problem0007` ###

#### `interface Check_IsPrime` ####
- 工事中

#### `interface Problem0007_01` ####
- 工事中

#### `function Check_IsPrime_INT32` ####
- 工事中

#### `function Problem0007_01_INT32` ####
- 工事中

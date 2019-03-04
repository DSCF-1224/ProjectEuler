# Project Euler by Fortran 2008 #

## 進捗 ##

|記号|意味|
|:-:|:-:|
|&#x2714;|正答済|
|&#x2718;|未正答|
|&#x2014;|未着手|

### 目次 ###

|Problem|0|1|2|3|4|5|6|7|8|9|
|-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|000?|&#x2014;|[&#x2714;](Problem-0001)|[&#x2714;](Problem-0002)|[&#x2714;](Problem-0003)|[&#x2714;](Problem-0004)|[&#x2714;](Problem-0005)|[&#x2714;](Problem-0006)|[&#x2714;](Problem-0007)|[&#x2714;](Problem-0008)|[&#x2714;](Problem-0009)|
|001?|&#x2014;|&#x2014;|&#x2014;|&#x2014;|&#x2014;|&#x2014;|&#x2014;|&#x2014;|&#x2014;|&#x2014;|

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

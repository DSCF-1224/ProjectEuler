# Project Euler 0004 #

## [設問](https://projecteuler.net/problem=4) ##


## 依存関係 ##
* [`0004_support.jl`](#0004_supportjl) 中の自作 [`function`][julialang.doc.v1.function] `show_result` を使用
	* [`../support/support_projecteuler.jl`][support_projecteuler.jl] の自作 [`module`](https://docs.julialang.org/en/v1/base/base/#module) 中の [`function`][julialang.doc.v1.function] `Main.SupportProjectEuler.println_timed` を使用


## 解答例 ##

### 0004_01.jl ###

* `problem0004( num_digit::Core.Integer )`
  * 引数は `num_digit` の1個
  * `num_digit` 桁の整数の積で表される回文数を最大値を返す [`function`][julialang.doc.v1.function]
* `pick_ValTargetDigit( target::Core.Integer, digit::Core.Integer )`
  * 引数は `target` と `digit` の2個
  * 整数 `target` の 10 の `digit` 乗の位の値を返す [`function`][julialang.doc.v1.function]
* `isPalindromic( target::Core.Integer )`
  * 引数は `target` の1個
  * 整数 `target` が回文数であれば `true` を返し，でなければ `false` を返す [`function`][julialang.doc.v1.function]
  * 【実行過程】
    1. 整数 `target` の桁数を `Base.ndigits` を用いて取得する
	2. 取得した整数 `target` の桁数に応じて，回文数であるか否かを判定する際に比較する桁数を決定する
	3. 整数 `target` の各桁の値を `pick_ValTargetDigit` を用いて比較し，回文数であるか否かを判定する

### 0004_02.jl ###

* `problem0004( num_digit::Core.Integer )`
  * 引数は `num_digit` の1個
  * `num_digit` 桁の整数の積で表される回文数を最大値を返す [`function`][julialang.doc.v1.function]
  * 整数 `target` の 10 の `digit` 乗の位の値を返す [`function`][julialang.doc.v1.function]
* `isPalindromic( target::Core.Integer )`
  * 引数は `target` の1個
  * 整数 `target` が回文数であれば `true` を返し，でなければ `false` を返す [`function`][julialang.doc.v1.function]
  * 【実行過程】
    1. 整数 `target` の桁数を `Base.ndigits` を用いて取得する
	2. `Base.digits` を用いて，整数 `target` の各桁の値を配列として取得する
	3. 整数 `target` の1の位がゼロであるか否かを判定する

## 補助コード ##


### 0004_support.jl ###

* `function show_result( target::Core.Integer )`
	* 整数 `target` の最大の素因数を返す自作 [`function`][julialang.doc.v1.function] `Main.problem0004( target )` の返し値と，同 [`function`][julialang.doc.v1.function] の計算コストを `Base.@timed` で計測した結果を標準出力 [`Base.stdout`][julialang.doc.v1.Base.stdout] に出力する [`function`][julialang.doc.v1.function]
	* [`Main.SupportProjectEuler.println_timed`](#依存関係) を使用

<!-- links -->
[julialang.doc.v1.function]: https://docs.julialang.org/en/v1/base/base/#function
[julialang.doc.v1.Base.stdout]: https://docs.julialang.org/en/v1/base/io-network/#Base.stdout

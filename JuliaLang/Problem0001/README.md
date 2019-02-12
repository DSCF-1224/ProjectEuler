# Project Euler 0001 #

## [設問](https://projecteuler.net/problem=1) ##
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.

## 依存関係 ##
* `0001_support.jl` 中の自作 [`function`][julialang.doc.v1.function] の `show_result` を使用
	* [`../support/support_projecteuler.jl`](../support) の自作 [`module`][julialang.doc.v1.module] 中の [`function`][julialang.doc.v1.function] `SupportProjectEuler.println_timed` を使用

## 解答例 ##

### 0001_01_01.jl ###
* `function problem0001( max::Core.Integer )`
	* 1 から `max` 未満の整数から, 3 ないし 5 の倍数のみを抽出し, その総和を求める
	* [`for`][julialang.doc.v1.for] 文で反復子 `itr` を `1` から `max-1` まで `1` ずつ増加させつつ, `itr` が 3 ないし 5 の倍数であるかを，[`function Base.rem`](https://docs.julialang.org/en/v1/base/math/#Base.rem) を用いた 3 ないし 5 で割ったときの余りで判定し, 倍数なら和を計算する
	* 3 の倍数であるか 5 のであるかの条件分岐には [`if`][julialang.doc.v1.if] を使用
	* 当該 [`function`][julialang.doc.v1.function]  の出力は，自作 [`function`][julialang.doc.v1.function]  の `show_result` を介して標準出力 [`Base.stdout`](https://docs.julialang.org/en/v1/base/io-network/#Base.stdout) に出力する
	* [`../support/support_projecteuler.jl`](../support) の自作 [`module`][julialang.doc.v1.module] 中の [`function`][julialang.doc.v1.function] `Main.SupportProjectEuler.ismultiple` を使用

### 0001_01_02.jl ###
* `function problem0001( max::Core.Integer )`
	* [`0001_01_01.jl`](#0001_01_01jl) の `function problem0001( max::Core.Integer )` での　3 の倍数であるか 5 のであるかの条件分岐を, [`if`][julialang.doc.v1.if] から `||` に変更したもの

### 0001_02_01.jl ###
* `function problem0001( max::Core.Integer )`
	* [`0001_01_01.jl`](#0001_01_01jl) の `function problem0001( max::Core.Integer )` において, 反復子 `itr` の更新とループ処理からの離脱に [`for`][julialang.doc.v1.for] ではなく `while ... end` を用いたもの
	* 3 の倍数であるか 5 のであるかの条件分岐には [`if`][julialang.doc.v1.if] を使用
	* [`../support/support_projecteuler.jl`](../support) の自作 [`module`][julialang.doc.v1.module] 中の [`function`][julialang.doc.v1.function] `Main.SupportProjectEuler.ismultiple` を使用

### 0001_02_02.jl ###
* `function problem0001( max::Core.Integer )`
	* [`0001_02_01.jl`](#0001_01_01jl) の `function problem0001( max::Core.Integer )` での　3 の倍数であるか 5 のであるかの条件分岐を, [`if`][julialang.doc.v1.if] から `||` に変更したもの

### 0001_03.jl ###
* `function sum_multiples(; max::Core.Integer, divisor::Core.Integer )`
	* 引数は `max` と `divisor` の2個
	* 等差数列の総和公式を用いて, 1 以上 `max` 未満の整数の内, `divisor` の倍数の総和を返す
* `function problem0001( max::Core.Integer )`
	* 1 から `max` 未満の整数から, 3 ないし 5 の倍数のみを抽出し, その総和を求める
	* `function sum_multiples` を用いて, 1 以上 `max` 未満の整数の内, 3, 5, 15 の倍数の総和を求め, 順に変数 `sum03`, `sum05`, `sum15` に格納する. `sum03` と `sum05` は共に `sum15` を含むので, その補正を行ってから, 求める総和を返す

<!-- links -->
[julialang.doc.v1.for]: https://docs.julialang.org/en/v1/base/base/#for
[julialang.doc.v1.function]: https://docs.julialang.org/en/v1/base/base/#function
[julialang.doc.v1.if]: https://docs.julialang.org/en/v1/base/base/#if
[julialang.doc.v1.module]: https://docs.julialang.org/en/v1/base/base/#module
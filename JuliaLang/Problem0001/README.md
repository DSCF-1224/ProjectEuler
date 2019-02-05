# Project Euler 0001 #

## 設問 ##
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.

## 依存関係 ##
* `../support/support_projecteuler.jl` の function `println_timed` を使用

## 解答例 ##

### 0001_01.jl ###
* `function problem0001( max::Core.Integer )`
	* 1 から `max` 未満の整数から, 3 ないし 5 の倍数のみを抽出し, その総和を求める
	* `fot` 文で反復子 `itr` を `1` から `max-1` まで `1` ずつ増加させつつ, `itr` が 3 ないし 5 の倍数であるかを，3 ないし 5 で割ったときの余りで判定し, 倍数なら和を計算する

### 0001_02.jl ###
* `function problem0001( max::Core.Integer )`
	* 1 から `max` 未満の整数から, 3 ないし 5 の倍数のみを抽出し, その総和を求める
	* `while` 文を用いて `itr` が `itr < vmax` を満足するとき, `itr` が 3 ないし 5 の倍数であるかを，3 ないし 5 で割ったときの余りで判定し, 倍数なら和を計算する
# Project Euler 0003 #

## [設問](https://projecteuler.net/problem=3) ##
The prime factors of 13195 are 5, 7, 13 and 29.  
What is the largest prime factor of the number 600851475143 ?

## 依存関係 ##
* [`0003_support.jl`](#0003_supportjl) 中の自作 [`function`][julialang.doc.v1.function] `show_result` を使用
	* [`../support/support_projecteuler.jl`][support_projecteuler.jl] の自作 [`module`](https://docs.julialang.org/en/v1/base/base/#module) 中の [`function`][julialang.doc.v1.function] `Main.SupportProjectEuler.println_timed` を使用


## 解答例 ##

### 0003_01.jl ###
* `problem0003( max::Core.Integer )`
	* 整数 `target` の最大の素因数を返す

## 補助コード ##

### 0003_support.jl ###
* `function show_result( target::Core.Integer )`
	* 整数 `target` の最大の素因数を返す自作 [`function`][julialang.doc.v1.function] `Main.problem0003( target )` の返し値と，同 [`function`][julialang.doc.v1.function] の計算コストを `Base.@timed` で計測した結果を標準出力 [`Base.stdout`][julialang.doc.v1.Base.stdout] に出力する [`function`][julialang.doc.v1.function]
	* [`Main.SupportProjectEuler.println_timed`](#依存関係) を使用
* `function ismultiple(; target::Core.Integer, base::Core.Integer )`
	* 整数 `target` が整数 `base` の倍数であるか否かを判定する [`function`][julialang.doc.v1.function]
	* 整数 `target` が整数 `base` の倍数であるなら，`true` を返す
	* 整数 `target` が整数 `base` の倍数ではないなら，`false` を返す

<!-- links -->
[julialang.doc.v1.function]: https://docs.julialang.org/en/v1/base/base/#function
[julialang.doc.v1.Base.stdout]: https://docs.julialang.org/en/v1/base/io-network/#Base.stdout

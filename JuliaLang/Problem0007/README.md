# Project Euler 0007 #

## 依存関係 ##

* [`0007_support.jl`](#0007_supportjl) 中の自作 [`function`][julialang.doc.v1.function] `show_result` を使用
  * [`../support/support_projecteuler.jl`](../support_projecteuler.jl) の自作 [`module`](https://docs.julialang.org/en/v1/base/base/#module) 中の [`function`][julialang.doc.v1.function] `Main.SupportProjectEuler.println_timed` を使用

## 解答例 ##

### 0007_01.jl ###

* `largest_prime_factor( target::Core.Integer )`
  * 引数は `target` の 1 個です。
  * 整数 `target` の最大の素因数を返す [`function`][julialang.doc.v1.function] です。
  * 整数 `target` の最大の素因数の候補は 1 ずつ更新されます。
* `isprime( target::Core.Integer )`
  * 引数は `target` の 1 個です。
  * 整数 `target` が素数であるかどうかを判断します。
  * 整数 `target` が素数であれば `true` を返します。
  * それ以外の場合は `false` を返します。
* `problem0007( num::Core.Integer )`
  * 引数は `num` の 1 個です。
  * `n` 番目の素数を返す [`function`][julialang.doc.v1.function] です。

### 0007_02.jl ###

* `largest_prime_factor( target::Core.Integer )`
  * 引数は `target` の 1 個です。
  * 整数 `target` の最大の素因数を返す [`function`][julialang.doc.v1.function] です。
  * 整数 `target` の最大の素因数の候補は 2 ずつ更新されます。
* `isprime( target::Core.Integer )`
  * 引数は `target` の 1 個です。
  * [`0007_01.jl`](#0007_01jl) の同名の [`function`][julialang.doc.v1.function] と同じ機能を有します。
* `problem0007( num::Core.Integer )`
  * 引数は `num` の 1 個です。
  * [`0007_01.jl`](#0007_01jl) の同名の [`function`][julialang.doc.v1.function] と同じ機能を有します。

### 0007_03.jl ###
* `problem0007( num::Core.Integer )`
  * 引数は `num` の 1 個です。
  * [`0007_01.jl`](#0007_01jl) の同名の [`function`][julialang.doc.v1.function] と同じ機能を有します。
  * [`../support/support_projecteuler.jl`](../support_projecteuler.jl) の自作 [`module`](https://docs.julialang.org/en/v1/base/base/#module) 中の [`function`][julialang.doc.v1.function] `Main.SupportProjectEuler.isprime` を使用

## 補助コード ##

### 0007_support.jl ###

* `function show_result( num::Core.Integer )`
  * 引数は `num` の 1 個です。
  * 整数 `target` の最大の素因数を返すを返す自作 [`function`][julialang.doc.v1.function] `Main.problem0007( num )` の返し値と，同 [`function`][julialang.doc.v1.function] の計算コストを [`Base.@timed`][julialang.doc.v1.Base.@timed] で計測した結果を標準出力 [`Base.stdout`][julialang.doc.v1.Base.stdout] に出力する [`function`][julialang.doc.v1.function] です。
  * [`Main.SupportProjectEuler.println_timed`](#依存関係) を使用

<!-- links -->
[julialang.doc.v1.for]: https://docs.julialang.org/en/v1/base/base/#for
[julialang.doc.v1.function]: https://docs.julialang.org/en/v1/base/base/#function
[julialang.doc.v1.Base.stdout]: https://docs.julialang.org/en/v1/base/io-network/#Base.stdout
[julialang.doc.v1.Base.@timed]: https://docs.julialang.org/en/v1/base/base/#Base.@timed

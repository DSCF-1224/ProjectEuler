# Project Euler 0005 #

## 依存関係 ##

* [`0005_support.jl`](#0005_supportjl) 中の自作 [`function`][julialang.doc.v1.function] `show_result` を使用
  * [`../support/support_projecteuler.jl`](../support_projecteuler.jl) の自作 [`module`](https://docs.julialang.org/en/v1/base/base/#module) 中の [`function`][julialang.doc.v1.function] `Main.SupportProjectEuler.println_timed` を使用

## 解答例 ##

### 0005_01.jl ###

* `problem0005( num::Core.Integer )`
  * 引数は `num` の1個
  * 「1 から `num` までの自然数をすべて因数とする整数」を返す [`function`][julialang.doc.v1.function]
* `my_gcd(; n1::Core.Integer, n2::Core.Integer )`
  * 引数は `n1` と `n2` の2個
  * 整数 `n1` と `n2` の最大公約数を返す [`function`][julialang.doc.v1.function]
  * 再帰処理を**用いている**
* `my_lcm(; n1::Core.Integer, n2::Core.Integer )`
  * 引数は `n1` と `n2` の2個
  * 整数 `n1` と `n2` の最小公倍数を返す [`function`][julialang.doc.v1.function]

### 0005_02.jl ###

* `problem0005( num::Core.Integer )`
  * 引数は `num` の1個
  * 「1 から `num` までの自然数をすべて因数とする整数」を返す [`function`][julialang.doc.v1.function]
* `my_gcd(; n1::Core.Integer, n2::Core.Integer )`
  * 引数は `n1` と `n2` の2個
  * 整数 `n1` と `n2` の最大公約数を返す [`function`][julialang.doc.v1.function]
  * 再帰処理は**用いていない**
* `my_lcm(; n1::Core.Integer, n2::Core.Integer )`
  * 引数は `n1` と `n2` の2個
  * 整数 `n1` と `n2` の最小公倍数を返す [`function`][julialang.doc.v1.function]

## 補助コード ##

### 0005_02.jl ###

* `problem0005( num::Core.Integer )`
  * 引数は `num` の1個
  * 「1 から `num` までの自然数をすべて因数とする整数」を返す [`function`][julialang.doc.v1.function]
  * 最小公倍数の計算には，[`Base.lcm`][julialang.doc.v1.Base.lcm] を用いている

## 補助コード ##

### 0005_support.jl ###

* `function show_result( num::Core.Integer )`
  * 「1 から `num` までの自然数をすべて因数とする整数」を返す自作 [`function`][julialang.doc.v1.function] `Main.problem0005( num )` の返し値と，同 [`function`][julialang.doc.v1.function] の計算コストを [`Base.@timed`][julialang.doc.v1.Base.@timed] で計測した結果を標準出力 [`Base.stdout`][julialang.doc.v1.Base.stdout] に出力する [`function`][julialang.doc.v1.function]
  * [`Main.SupportProjectEuler.println_timed`](#依存関係) を使用

<!-- links -->
[julialang.doc.v1.function]: https://docs.julialang.org/en/v1/base/base/#function
[julialang.doc.v1.Base.lcm]: https://docs.julialang.org/en/v1/base/math/#Base.lcm
[julialang.doc.v1.Base.stdout]: https://docs.julialang.org/en/v1/base/io-network/#Base.stdout
[julialang.doc.v1.Base.@timed]: https://docs.julialang.org/en/v1/base/base/#Base.@timed

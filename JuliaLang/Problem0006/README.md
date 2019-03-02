# Project Euler 0006 #

## 依存関係 ##

* [`0006_support.jl`](#0006_supportjl) 中の自作 [`function`][julialang.doc.v1.function] `show_result` を使用
  * [`../support/support_projecteuler.jl`](../support_projecteuler.jl) の自作 [`module`](https://docs.julialang.org/en/v1/base/base/#module) 中の [`function`][julialang.doc.v1.function] `Main.SupportProjectEuler.println_timed` を使用

## 解答例 ##

### 0006_01.jl ###

* `problem0006( n::Core.Integer )`
  * 引数は `n` の 1 個です。
  * 「 1 から `n` までの自然数の総和の 2 乗」から「 1 から `n` までの自然数の 2 乗の総和」を引いた値を返す [`function`][julialang.doc.v1.function] です。
  * 「 1 から `n` までの自然数の総和の 2 乗」と「 1 から `n` までの自然数の 2 乗の総和」の計算には、[`for`][julialang.doc.v1.for] 文を用いています。

### 0006_02.jl ###

* `problem0006( num::Core.Integer )`
  * 引数は `n` の 1 個です。
  * 「 1 から `n` までの自然数の総和の 2 乗」から「 1 から `n` までの自然数の 2 乗の総和」を引いた値を返す [`function`][julialang.doc.v1.function] です。
  * 「 1 から `n` までの自然数の総和の 2 乗」と「 1 から `n` までの自然数の 2 乗の総和」の計算には、数列の総和の公式を用いています。

## 補助コード ##

### 0006_support.jl ###

* `function show_result( num::Core.Integer )`
  * 引数は `n` の 1 個です。
  * 「 1 から `n` までの自然数の総和の 2 乗」から「 1 から `n` までの自然数の 2 乗の総和」を引いた値を返す自作 [`function`][julialang.doc.v1.function] `Main.problem0006( num )` の返し値と，同 [`function`][julialang.doc.v1.function] の計算コストを [`Base.@timed`][julialang.doc.v1.Base.@timed] で計測した結果を標準出力 [`Base.stdout`][julialang.doc.v1.Base.stdout] に出力する [`function`][julialang.doc.v1.function] です。
  * [`Main.SupportProjectEuler.println_timed`](#依存関係) を使用

<!-- links -->
[julialang.doc.v1.for]: https://docs.julialang.org/en/v1/base/base/#for
[julialang.doc.v1.function]: https://docs.julialang.org/en/v1/base/base/#function
[julialang.doc.v1.Base.stdout]: https://docs.julialang.org/en/v1/base/io-network/#Base.stdout
[julialang.doc.v1.Base.@timed]: https://docs.julialang.org/en/v1/base/base/#Base.@timed

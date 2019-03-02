# My Supoort Module for Project Euler #

Project Euler を julia で実施するに際して、頻繁に用いる [`function`][julialang.doc.v1.function] をまとめたものです。

## 実装した `function` ##

### 目次 ###

* [`ismultiple`](#function-ismultiple)
* [`isprime`](#function-isprime)
* [`largest_prime_factor`](#function-largest_prime_factor)
* [`println_timed`](#function-println_timed)

### `function` `ismultiple` ###

```Julia
function ismultiple(; target::Core.Integer, base::Core.Integer )
```

* 引数は `target` と `base` の 2 個です。
* 整数 `target` が整数 `base` の倍数であるかどうかを判断します。
* 整数 `target` が整数 `base` の倍数であれば `true` 。
* それ以外の場合は `false` 。
* ［用いている組み込み [`function`][julialang.doc.v1.function] ］
  * [Base.iszero][julialang.doc.v1.Base.iszero]
  * [Base.rem][julialang.doc.v1.Base.rem]

### `function` `isprime` ###

```Julia
function isprime( target::Core.Integer )
```

* 引数は `target` の 1 個です。
* 整数 `target` が素数であるかどうかを判断します。
* 整数 `target` が素数であれば `true` 。
* それ以外の場合は `false` 。
* ［用いている自作 [`function`][julialang.doc.v1.function] ］
  * [`largest_prime_factor`](#function-largest_prime_factor)

### `function` `largest_prime_factor` ###

```Julia
function largest_prime_factor( target::Core.Integer )
```

* 引数は `target` の 1 個です。
* 整数 `target` の最大の素因数を返します。
* ［用いている組み込み [`function`][julialang.doc.v1.function] ］
  * [Base.ceil][julialang.doc.v1.Base.ceil]
  * [Base.div][julialang.doc.v1.Base.div]
  * [Base.iseven][julialang.doc.v1.Base.one]
  * [Base.one][julialang.doc.v1.Base.one]
  * [Base.zero][julialang.doc.v1.Base.zero]
  * [Base.isqrt][julialang.doc.v1.Base.isqrt]
  * [Core.typeof][julialang.doc.v1.Core.typeof]
* ［用いている自作 [`function`][julialang.doc.v1.function] ］
  * [`ismultiple`](#function-ismultiple)

### `function` `println_timed` ###

```Julia
function println_timed( t::Core.Float64, bytes::Core.Int64, gctime::Core.Float64, memallocs::Base.GC_Diff )
```

* 引数は組み込み [`macro`][julialang.doc.v1.macro] [Base.@timed][julialang.doc.v1.Base.@timed] の戻し値 `t`, `bytes`, `gctime`, `memallocs` の 4 個です。
* 組み込み [`macro`][julialang.doc.v1.macro] [Printf.@printf][julialang.doc.v1.Printf.@printf] を用いて、[Base.@timed][julialang.doc.v1.Base.@timed] の戻し値 `t`, `bytes`, `gctime`, `memallocs` を標準出力 [`Base.stdout`][julialang.doc.v1.Base.stdout] に出力する。

<!-- links -->
[julialang.doc.v1.function]: https://docs.julialang.org/en/v1/base/base/#function
[julialang.doc.v1.macro]: https://docs.julialang.org/en/v1/base/base/#macro
[julialang.doc.v1.Base.ceil]: https://docs.julialang.org/en/v1/base/math/#Base.ceil
[julialang.doc.v1.Base.div]: https://docs.julialang.org/en/v1/base/math/#Base.div
[julialang.doc.v1.Base.iseven]: https://docs.julialang.org/en/v1/base/numbers/#Base.iseven
[julialang.doc.v1.Base.iszero]: https://docs.julialang.org/en/v1/base/numbers/#Base.iszero
[julialang.doc.v1.Base.one]: https://docs.julialang.org/en/v1/base/numbers/#Base.one
[julialang.doc.v1.Base.rem]: https://docs.julialang.org/en/v1/base/math/#Base.rem
[julialang.doc.v1.Base.isqrt]: https://docs.julialang.org/en/v1/base/math/#Base.isqrt
[julialang.doc.v1.Base.stdout]: https://docs.julialang.org/en/v1/base/io-network/#Base.stdout
[julialang.doc.v1.Base.zero]: https://docs.julialang.org/en/v1/base/numbers/#Base.zero
[julialang.doc.v1.Base.@timed]: https://docs.julialang.org/en/v1/base/base/#Base.@timed
[julialang.doc.v1.Core.typeof]: https://docs.julialang.org/en/v1/base/base/#Core.typeof
[julialang.doc.v1.Printf.@printf]: https://docs.julialang.org/en/v1/stdlib/Printf/#Printf.@printf

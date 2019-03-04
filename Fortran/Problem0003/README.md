# Project Euler by Fortran : Problem 0003 #

## 設問 ##

* [Problem 3 - Project Euler](https://projecteuler.net/problem=3)
* [Problem 3 - PukiWiki](http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%203)

## テスト環境 ##

gfortran 8.1.0

## 構成 ##

* [Problem0003.f08](Problem0003.f08)
  * [`module Problem0003`](#module-problem0003)
    * [`interface Problem0003_01`](#interface-problem0003_01)
    * [`interface Problem0003_02`](#interface-problem0003_02)
    * [`interface Problem0003_02`](#interface-problem0003_02)
    * [`interface show_result_core`](#interface-show_result_core)
    * [`interface show_result`](#interface-show_result)
    * [Problem0003_01.f08](Problem0003_01.f08)
      * `function` [`Problem0003_01_INT32`](#function-problem0003_01_int32)
      * `function` [`Problem0003_01_INT64`](#function-problem0003_01_int64)
    * [Problem0003_02.f08](Problem0003_02.f08)
      * `function` [`Problem0003_02_INT32`](#function-problem0003_02_int32)
      * `function` [`Problem0003_02_INT64`](#function-problem0003_02_int64)
    * [Problem0003_03.f08](Problem0003_03.f08)
      * `function` [`Problem0003_03_INT32`](#function-problem0003_03_int32)
      * `function` [`Problem0003_03_INT64`](#function-problem0003_03_int64)
    * [show_result.f08](show_result.f08)
      * `subroutine` [`show_result_core_INT32`](#subroutine-show_result_core_int32)
      * `subroutine` [`show_result_core_INT64`](#subroutine-show_result_core_int64)
      * `subroutine` [`show_result_INT32`](#subroutine-show_result_int32)
      * `subroutine` [`show_result_INT64`](#subroutine-show_result_int64)
* [main.f08](main.f08)

## Problem0003.f08 ##

### `module Problem0003` ###

* 組み込み `module` [`module iso_fortran_env`](https://gcc.gnu.org/onlinedocs/gfortran/ISO_005fFORTRAN_005fENV.html) を必要とします。
* 自作 `module` [`support_projecteuler`](../support/support_projecteuler.f08) を必要とします。

#### `interface Problem0003_01` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function Problem0003_01_INT32`](#function-problem0003_01_int32)
  * [`function Problem0003_01_INT64`](#function-problem0003_01_int64)

#### `interface Problem0003_02` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function Problem0003_02_INT32`](#function-problem0003_02_int32)
  * [`function Problem0003_02_INT64`](#function-problem0003_02_int64)

#### `interface Problem0003_03` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function Problem0003_03_INT32`](#function-problem0003_03_int32)
  * [`function Problem0003_03_INT64`](#function-problem0003_03_int64)

#### `interface show_result_core` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function show_result_core_INT32`](#function-show_result_core_int32)
  * [`function show_result_core_INT64`](#function-show_result_core_int64)

#### `interface show_result` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function show_result_INT32`](#function-show_result_int32)
  * [`function show_result_INT64`](#function-show_result_int64)

#### `function Problem0003_01_INT32` ####

* `private` 属性の `function` です。
* 当該 `function` の引数は 32bit 整数型変数 `target` の1個です。
* 当該 `function` は自然数 `target` の最大の素因数を返します。
* 素因数の候補を `1_INT32` ずつ増加させながら、`target` を候補で試し割りすることで、最大の素因数を求めます。
* 自作 `module` [`support_projecteuler`](../support) で定義した `function determine_ismultiple` を用いる

#### `function Problem0003_01_INT64` ####

* `private` 属性の `function` です。
* [`function Problem0003_01_INT32`](#function-problem0003_01_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

#### `function Problem0003_02_INT32` ####

* `private` 属性の `function` です。
* 当該 `function` の引数は 32bit 整数型変数 `target` の1個です。
* 当該 `function` は自然数 `target` の最大の素因数を返します。
* [`function Problem0003_01_INT32`](#function-problem0003_01_int32) において、2 と「 2 より大きい素数」を素因数として何個含むのかを調べる部分を分離し、「2より大きい素数」の個数を調べる部分における `factor` の更新幅を `2_INT32` として、処理の高速化を図っています。
* 自作 `module` [`support_projecteuler`](../support/support_projecteuler.f08) で定義した `function determine_ismultiple` を用いる

#### `function Problem0003_02_INT64` ####

* `private` 属性の `function` です。
* [`function Problem0003_02_INT32`](#function-problem0003_02_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

#### `function Problem0003_03_INT32` ####

* `private` 属性の `function` です。
* 当該 `function` の引数は 32bit 整数型変数 `target` の1個です。
* 当該 `function` は自然数 `target` の最大の素因数を返します。
* [`function Problem0003_01_INT32`](#function-problem0003_01_int32) において、
  * 2 と「 2 より大きい素数」を素因数として何個含むのかを調べる部分を分離し、「2より大きい素数」の個数を調べる部分における `factor` の更新幅を `2_INT32` として、処理の高速化を図っています。
  * 整数 `N` の最大の約数は `sqrt(N)` 以下であることを用いて、試し割りを行う整数の範囲を制限することで、処理の高速化を図っています。

#### `function Problem0003_03_INT64` ####

* `private` 属性の `function` です。
* [`function Problem0003_03_INT32`](#function-problem0003_03_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

#### `function show_result_core_INT32` ####

* `private` 属性の `subroutine` です。
* 当該 `subroutine` の引数は整数型変数 `version` と 32bit 整数型変数 `target` の 2 個です。
* 当該 `subroutine` は、自作 `function` `Problem0003_0i_INT32` `(i=1,2,3)` の戻し値を `SAVE_UNIT` に出力するために用います。
* 引数 `version` は、自作 `function` `Problem0003_0i_INT32` `(i=1,2,3)` のいずれを用いるのかを指定します。
  * `version = 1` --> `function` [`Problem0003_01_INT32`](#function-problem0003_01_int32)
  * `version = 2` --> `function` [`Problem0003_02_INT32`](#function-problem0003_02_int32)
  * `version = 3` --> `function` [`Problem0003_03_INT32`](#function-problem0003_03_int32)
* 引数 `target` は、自作 `function` `Problem0003_0i_INT32` `(i=1,2,3)` に渡されます。

#### `function show_result_core_INT64` ####

* `private` 属性の `subroutine` です。
* [`function show_result_core_INT32`](#function-show_result_core_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

#### `subroutine show_result_INT32` ####

* `private` 属性の `subroutine` です。
* 当該 `subroutine` の引数は 32bit 整数型変数 `target` の 1 個です。
* 当該 `subroutine` は、自作 `function` `Problem0003_0i_INT32` `(i=1,2,3)` の戻し値を `SAVE_UNIT` に出力するために用います。
* 引数 `target` は、自作 `function` `Problem0003_0i_INT32` `(i=1,2,3)` に渡されます。

#### `subroutine show_result_INT64` ####

* `private` 属性の `subroutine` です。
* [`function show_result_core_INT32`](#function-show_result_core_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

## main.f08 ##

### `program main` ###

* Project Euler 3 の解答を指定されたファイルへ出力する `program` です。
* ［実行過程］
  1. 結果を保存するファイルのパスの入力を求められるので、適当なファイルのパスを入力し、Enter キーを押します。
  2. プログラムが正常に実行されたことを示す文が console に表示されるので、任意のキーを押し、当該プログラムを終了してください。

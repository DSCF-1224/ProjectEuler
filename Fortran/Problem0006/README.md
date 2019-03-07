# Project Euler by Fortran : Problem 0006 #

## 設問 ##

* [Problem 6 - Project Euler](https://projecteuler.net/problem=6)
* [Problem 6 - PukiWiki](http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%206)

## テスト環境 ##

gfortran 8.1.0

## 構成 ##

* [Problem0006.f08](Problem0006.f08)
  * [`module Problem0006`](#module-problem0006)
    * [`interface Problem0006_01`](#interface-problem0006_01)
    * [`interface Problem0006_02`](#interface-problem0006_02)
    * [`interface show_result_each`](#interface-show_result_each)
    * [`interface show_result`](#interface-show_result)
    * [Problem0006_01.f08](Problem0006_01.f08)
      * `function` [`Problem0006_01_INT32`](#function-problem0006_01_int32)
      * `function` [`Problem0006_01_INT64`](#function-problem0006_01_int64)
    * [Problem0006_02.f08](Problem0006_02.f08)
      * `function` [`Problem0006_02_INT32`](#function-problem0006_02_int32)
      * `function` [`Problem0006_02_INT64`](#function-problem0006_02_int64)
    * [show_result.f08](show_result.f08)
      * `subroutine` [`show_result_each_INT32`](#subroutine-show_result_each_int32)
      * `subroutine` [`show_result_each_INT64`](#subroutine-show_result_each_int64)
      * `subroutine` [`show_result_INT32`](#subroutine-show_result_int32)
      * `subroutine` [`show_result_INT64`](#subroutine-show_result_int64)
* [main.f08](main.f08)

## Problem0006.f08 ##

### `module Problem0006` ###

* 組み込み `module` [`module iso_fortran_env`](http://fortranwiki.org/fortran/show/iso_fortran_env) を必要とします。
* 自作 `module` [`support_projecteuler`](../support/support_projecteuler.f08) を必要とします。
* 別リポジトリ [`Fortran`](https://github.com/DSCF-1224/Fortran) の自作 `module` [`support_system_clock`](https://github.com/DSCF-1224/Fortran/tree/master/support) を必要とします。

#### `interface Problem0006_01` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function Problem0006_01_INT32`](#function-problem0006_01_int32)
  * [`function Problem0006_01_INT64`](#function-problem0006_01_int64)

#### `interface Problem0006_02` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function Problem0006_02_INT32`](#function-problem0006_02_int32)
  * [`function Problem0006_02_INT64`](#function-problem0006_02_int64)

#### `interface show_result_each` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function show_result_each_INT32`](#function-show_result_each_int32)
  * [`function show_result_each_INT64`](#function-show_result_each_int64)

#### `interface show_result` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function show_result_INT32`](#function-show_result_int32)
  * [`function show_result_INT64`](#function-show_result_int64)

#### `function Problem0006_01_INT32` ####

* `private` 属性の `function` です。
* 当該 `function` の引数は 32bit 整数型変数 `target` の1個です。
* 当該 `function` は「 1 から`target` までの自然数の総和の 2 乗」から「 1 から `target` までの自然数の 2 乗の総和」を引いた値を返します。
* `do ... end do` 文を用い、反復子を 1 から `target` まで 1 ずつ更新しながら二種の総和を算出し、その結果から当該 `function` の戻し値を得ています。

#### `function Problem0006_01_INT64` ####

* `private` 属性の `function` です。
* [`function Problem0006_01_INT32`](#function-problem0006_01_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

#### `function Problem0006_02_INT32` ####

* `private` 属性の `function` です。
* 当該 `function` の引数は 32bit 整数型変数 `target` の1個です。
* 当該 `function` は「 1 から`target` までの自然数の総和の 2 乗」から「 1 から `target` までの自然数の 2 乗の総和」を引いた値を返します。
* 数列の総和公式を利用することで、計算の高速化を図っています。

#### `function Problem0006_02_INT64` ####

* `private` 属性の `function` です。
* [`function Problem0006_02_INT32`](#function-problem0006_02_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

#### `function show_result_each_INT32` ####

* `private` 属性の `subroutine` です。
* 当該 `subroutine` の引数は整数型変数 `version` と 32bit 整数型変数 `target` の 2 個です。
* 当該 `subroutine` は、自作 `function` `Problem0006_0i_INT32` `(i=1,2)` の戻し値を `SAVE_UNIT` に出力するために用います。
* 引数 `version` は、自作 `function` `Problem0006_0i_INT32` `(i=1,2)` のいずれを用いるのかを指定します。
  * `version = 1` --> `function` [`Problem0006_01_INT32`](#function-problem0006_01_int32)
* 引数 `target` は、自作 `function` `Problem0006_0i_INT32` `(i=1,2)` に渡されます。

#### `function show_result_each_INT64` ####

* `private` 属性の `subroutine` です。
* [`function show_result_each_INT32`](#function-show_result_each_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

#### `subroutine show_result_INT32` ####

* `private` 属性の `subroutine` です。
* 当該 `subroutine` の引数は 32bit 整数型変数 `target` の 1 個です。
* 当該 `subroutine` は、自作 `function` `Problem0006_0i_INT32` `(i=1,2)` の戻し値を `SAVE_UNIT` に出力するために用います。
* 引数 `target` は、自作 `function` `Problem0006_0i_INT32` `(i=1,2)` に渡されます。

#### `subroutine show_result_INT64` ####

* `private` 属性の `subroutine` です。
* [`function show_result_each_INT32`](#function-show_result_each_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

## main.f08 ##

### `program main` ###

* Project Euler 3 の解答を指定されたファイルへ出力する `program` です。
* ［実行過程］
  1. 結果を保存するファイルのパスの入力を求められるので、適当なファイルのパスを入力し、Enter キーを押します。
  2. プログラムが正常に実行されたことを示す文が console に表示されるので、任意のキーを押し、当該プログラムを終了してください。

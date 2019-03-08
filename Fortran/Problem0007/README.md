# Project Euler by Fortran : Problem 0007 #

## 設問 ##

* [Problem 7 - Project Euler](https://projecteuler.net/problem=7)
* [Problem 7 - PukiWiki](http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%207)

## テスト環境 ##

gfortran 8.1.0

## 構成 ##

* [Problem0007.f08](Problem0007.f08)
  * [`module Problem0007`](#module-problem0007)
    * [`interface Problem0007_01`](#interface-problem0007_01)
    * [`interface Problem0007_02`](#interface-problem0007_02)
    * [`interface Problem0007_03`](#interface-problem0007_03)
    * [`interface Problem0007_04`](#interface-problem0007_04)
    * [`interface show_result_each`](#interface-show_result_each)
    * [`interface show_result`](#interface-show_result)
    * [Problem0007_01.f08](Problem0007_01.f08)
      * `function` [`Problem0007_01_INT32`](#function-problem0007_01_int32)
      * `function` [`Problem0007_01_INT64`](#function-problem0007_01_int64)
    * [Problem0007_02.f08](Problem0007_02.f08)
      * `function` [`Problem0007_02_INT32`](#function-problem0007_02_int32)
      * `function` [`Problem0007_02_INT64`](#function-problem0007_02_int64)
    * [Problem0007_02.f08](Problem0007_03.f08)
      * `function` [`Problem0007_03_INT32`](#function-problem0007_03_int32)
      * `function` [`Problem0007_03_INT64`](#function-problem0007_03_int64)
    * [Problem0007_02.f08](Problem0007_04.f08)
      * `function` [`Problem0007_04_INT32`](#function-problem0007_04_int32)
      * `function` [`Problem0007_04_INT64`](#function-problem0007_04_int64)
    * [show_result.f08](show_result.f08)
      * `subroutine` [`show_result_each_INT32`](#subroutine-show_result_each_int32)
      * `subroutine` [`show_result_each_INT64`](#subroutine-show_result_each_int64)
      * `subroutine` [`show_result_INT32`](#subroutine-show_result_int32)
      * `subroutine` [`show_result_INT64`](#subroutine-show_result_int64)
* [main.f08](main.f08)

## Problem0007.f08 ##

### `module Problem0007` ###

* 組み込み `module` [`module iso_fortran_env`](http://fortranwiki.org/fortran/show/iso_fortran_env) を必要とします。
* 自作 `module` [`support_projecteuler`](../support/support_projecteuler.f08) を必要とします。
* 別リポジトリ [`Fortran`](https://github.com/DSCF-1224/Fortran) の自作 `module` [`mod_IsMultiple`](https://github.com/DSCF-1224/Fortran/tree/master/miniparts) を必要とします。
* 別リポジトリ [`Fortran`](https://github.com/DSCF-1224/Fortran) の自作 `module` [`mod_IsPrime`](https://github.com/DSCF-1224/Fortran/tree/master/miniparts) を必要とします。
* 別リポジトリ [`Fortran`](https://github.com/DSCF-1224/Fortran) の自作 `module` [`support_system_clock`](https://github.com/DSCF-1224/Fortran/tree/master/support) を必要とします。

#### `interface Problem0007_01` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function Problem0007_01_INT32`](#function-problem0007_01_int32)
  * [`function Problem0007_01_INT64`](#function-problem0007_01_int64)

#### `interface Problem0007_02` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function Problem0007_02_INT32`](#function-problem0007_02_int32)
  * [`function Problem0007_02_INT64`](#function-problem0007_02_int64)

#### `interface Problem0007_03` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function Problem0007_03_INT32`](#function-problem0007_03_int32)
  * [`function Problem0007_03_INT64`](#function-problem0007_03_int64)

#### `interface Problem0007_04` ####

* `private` 属性の `interface` です。
* 自作関数手続の総称名を宣言するために使用しています。含まれる自作 `function` は以下の 2 個になります。
  * [`function Problem0007_04_INT32`](#function-problem0007_04_int32)
  * [`function Problem0007_04_INT64`](#function-problem0007_04_int64)

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

#### `function Problem0007_01_INT32` ####

* `private` 属性の `function` です。
* 当該 `function` の引数は 32bit 整数型変数 `limit` の1個です。
* 当該 `function` は小さい方から数えて `limit` 番目の素数を返します。
* `do while ... end do` 文を用い、2 以上の正の整数を対象として、小さい方から順に素数であるかどうかを判定しながら、`limit` 番目の素数を探索します。
* 別リポジトリ [`Fortran`](https://github.com/DSCF-1224/Fortran) の自作 `module` [`mod_IsPrime`](https://github.com/DSCF-1224/Fortran/tree/master/miniparts) で定義した `function IsPrime` を必要とします。

#### `function Problem0007_01_INT64` ####

* `private` 属性の `function` です。
* [`function Problem0007_01_INT32`](#function-problem0007_01_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

#### `function Problem0007_02_INT32` ####

* `private` 属性の `function` です。
* 当該 `function` の引数は 32bit 整数型変数 `limit` の1個です。
* 当該 `function` は小さい方から数えて `limit` 番目の素数を返します。
* `limit` 番目の素数に到達するまで、新たな素数を見つける毎に、それまでに発見した素数を記録した 1 次元配列をリサイズしています。
* 別リポジトリ [`Fortran`](https://github.com/DSCF-1224/Fortran) の自作 `module` [`mod_IsPrime`](https://github.com/DSCF-1224/Fortran/tree/master/miniparts) で定義した `function IsPrime_list` を必要とします。

#### `function Problem0007_02_INT64` ####

* `private` 属性の `function` です。
* [`function Problem0007_02_INT32`](#function-problem0007_02_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

#### `function Problem0007_03_INT32` ####

* `private` 属性の `function` です。
* 当該 `function` の引数は 32bit 整数型変数 `limit` の1個です。
* 当該 `function` は小さい方から数えて `limit` 番目の素数を返します。
* `limit` 個の要素をもつ 1 次元配列を宣言し、`limit` 番目までの全ての素数を記録しています。
* 別リポジトリ [`Fortran`](https://github.com/DSCF-1224/Fortran) の自作 `module` [`mod_IsPrime`](https://github.com/DSCF-1224/Fortran/tree/master/miniparts) で定義した `function IsPrime_list` を必要とします。

#### `function Problem0007_03_INT64` ####

* `private` 属性の `function` です。
* [`function Problem0007_03_INT32`](#function-problem0007_03_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

#### `function Problem0007_04_INT32` ####

* `private` 属性の `function` です。
* 当該 `function` の引数は 32bit 整数型変数 `limit` の1個です。
* 当該 `function` は小さい方から数えて `limit` 番目の素数を返します。
* `limit` 個の要素をもつ 1 次元配列を宣言し、`limit` 番目までの全ての素数を記録しています。
* 別リポジトリ [`Fortran`](https://github.com/DSCF-1224/Fortran) の自作 `module` [`mod_IsPrime`](https://github.com/DSCF-1224/Fortran/tree/master/miniparts) で定義した `function IsPrime` を必要とします。

#### `function Problem0007_04_INT64` ####

* `private` 属性の `function` です。
* [`function Problem0007_04_INT32`](#function-problem0007_04_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

#### `function show_result_each_INT32` ####

* `private` 属性の `subroutine` です。
* 当該 `subroutine` の引数は整数型変数 `version` と 32bit 整数型変数 `target` の 2 個です。
* 当該 `subroutine` は、自作 `function` `Problem0007_0i_INT32` `(i=1,2,3)` の戻し値を `SAVE_UNIT` に出力するために用います。
* 引数 `version` は、自作 `function` `Problem0007_0i_INT32` `(i=1,2,3)` のいずれを用いるのかを指定します。
  * `version = 1` --> `function` [`Problem0007_01_INT32`](#function-problem0007_01_int32)
  * `version = 2` --> `function` [`Problem0007_02_INT32`](#function-problem0007_02_int32)
  * `version = 3` --> `function` [`Problem0007_03_INT32`](#function-problem0007_03_int32)
  * `version = 4` --> `function` [`Problem0007_04_INT32`](#function-problem0007_04_int32)
* 引数 `target` は、自作 `function` `Problem0007_0i_INT32` `(i=1,2,3)` に渡されます。

#### `function show_result_each_INT64` ####

* `private` 属性の `subroutine` です。
* [`function show_result_each_INT32`](#function-show_result_each_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

#### `subroutine show_result_INT32` ####

* `private` 属性の `subroutine` です。
* 当該 `subroutine` の引数は 32bit 整数型変数 `target` の 1 個です。
* 当該 `subroutine` は、自作 `function` `Problem0007_0i_INT32` `(i=1,2,3)` の戻し値を `SAVE_UNIT` に出力するために用います。
* 引数 `target` は、自作 `function` `Problem0007_0i_INT32` `(i=1,2,3)` に渡されます。

#### `subroutine show_result_INT64` ####

* `private` 属性の `subroutine` です。
* [`function show_result_each_INT32`](#function-show_result_each_int32) の引数，内部処理ならびに戻し値を 64bit 整数型変数に変更したものです。

## main.f08 ##

### `program main` ###

* Project Euler 3 の解答を指定されたファイルへ出力する `program` です。
* ［実行過程］
  1. 「結果を保存するファイル」を保存するフォルダのパスの入力を求められるので、適当なフォルダのパスを入力し、Enter キーを押します。
  2. プログラムが正常に実行されたことを示す文が console に表示されるので、任意のキーを押し、当該プログラムを終了してください。

## 参考文献 ##

* [［改訂新版］C言語による標準アルゴリズム事典](https://gihyo.jp/book/2018/978-4-7741-9690-9)
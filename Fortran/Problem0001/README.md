# Project Euler 0001 #

## 設問 ##

* [Problem 1 - Project Euler](https://projecteuler.net/problem=1)
* [Problem 1 - PukiWiki](http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%201)

## テスト環境 ##

gfortran 8.1.0

## 構成 ##

* [Problem0001.f08](Problem0001.f08)
  * [`module Problem0001`](#module-problem0001)
    * `function` [`determine_istargetmultiple`](#function-determine_istargetmultiple)
    * [Problem0001_01.f08](Problem0001_01.f08)
      * `function` [`Problem0001_01`](#function-problem0001_01)
    * [Problem0001_02.f08](Problem0001_02.f08)
      * `function` [`Problem0001_02`](#function-problem0001_02)
    * [Problem0001_03.f08](Problem0001_03.f08)
      * `function` [`Problem0001_03_sub`](#function-problem0001_03_sub)
      * `function` [`Problem0001_03`](#function-problem0001_03)
    * [show_result.f08](show_result.f08)
      * `subroutine` [`show_result_core`](#subroutine-show_result_core)
      * `subroutine` [`show_result`](#subroutine-show_result)
* [main.f08](main.f08)

## Problem0001.f08 ##

### `module Problem0001` ###

* 組み込み `module` [`module iso_fortran_env`](https://gcc.gnu.org/onlinedocs/gfortran/ISO_005fFORTRAN_005fENV.html) を使用しています。
* 自作 `module` [`support_projecteuler`](../support/support_projecteuler.f08) を使用しています。

#### `function determine_istargetmultiple` ####

* 当該 `function` の引数は 64bit 整数型変数 `target` の1個です。
* 当該 `function` は、以下の 2 個の条件の少なくとも一方が満たされるとき、`.true.` を返します。それ以外の場合は `.false.` を返します。
  * 整数 `target` が 3 の倍数であるとき。
  * 整数 `target` が 5 の倍数であるとき。
* `3` の倍数であるかどうか、及び `5` の倍数であるかどうかを判定するためには、自作 `module` [`support_projecteuler`](../support) 中の `function determine_ismultiple` を用いています。

#### `function Problem0001_01` ####

* 当該 `function` の引数は 64bit 整数型変数 `limit` の1個です。
* 当該 `function` は正の整数 `limit` の中で、3 か 5 の倍数であるものの総和を返します。本問題の解答は `1000` を与えることで得られます。
* 当該 `function` において、反復子 `itr` は `itr=itr+1` によって更新され、`limit` 未満であるかどうかは `do while ... end do` 構文で判定しています。
* `3` の倍数であるかどうか、及び `5` の倍数であるかどうかを判定するためには、自作 `function` [`determine_istargetmultiple`](#function-determine_istargetmultiple) を用いています。

#### `function Problem0001_02` ####

* 当該 `function` の引数は 64bit 整数型変数 `limit` の1個です。
* 当該 `function` は正の整数 `limit` の中で、3 か 5 の倍数であるものの総和を返します。本問題の解答は `1000` を与えることで得られます。
* 反復子 `itr` は `do ... end do` 構文を用いて更新しています。
* `3` の倍数であるかどうか、及び `5` の倍数であるかどうかを判定するためには、自作 `function` [`determine_istargetmultiple`](#function-determine_istargetmultiple) を用いています。

#### `function Problem0001_03_sub` ####

* 当該 `function` の引数は 64bit 整数型変数 `divisor` と 64bit 整数型変数 `limit` の2個です。
* 当該 `function` は正の整数の内、整数 `divsor` の倍数の総和を返します。
* `divsor` の倍数の総和の算出には、等差数列の総和の公式を用いています。

#### `function Problem0001_03` ####

* 当該 `function` の引数は 64bit 整数型変数 `limit` の1個です。
* 当該 `function` は正の整数 `limit` の中で、3 か 5 の倍数であるものの総和を返します。本問題の解答は `1000` を与えることで得られます。
* 自作 `function` [`Problem0001_03_sub`](#function-problem0001_03_sub) を用いて、正の整数の内、`3`, `5` および `15` の倍数の総和を求める。`3` ならびに `5` の倍数には，各々 `15` の倍数の総和が含まれているので、`15` の倍数の総和も算出し、その補正を行っています。

#### `subroutine show_result_core` ####

* 当該 `subroutine` の引数は整数型変数 `version` と 64bit 整数型変数 `limit` の 2 個です。
* 当該 `subroutine` は、自作 `function` `Problem0001_0i` `(i=1,2,3)` の戻し値を `SAVE_UNIT` に出力するために用います。
* 引数 `version` は、自作 `function` `Problem0001_0i` `(i=1,2,3)` のいずれを用いるのかを指定します。
  * `version = 1` --> `function` [`Problem0001_01`](#function-problem0001_01)
  * `version = 2` --> `function` [`Problem0001_02`](#function-problem0001_02)
  * `version = 3` --> `function` [`Problem0001_03`](#function-problem0001_03)
* 引数 `limit` は、自作 `function` `Problem0001_0i` `(i=1,2,3)` に渡されます。

#### `subroutine show_result` ####

* 当該 `subroutine` の引数は 64bit 整数型変数 `limit` の 1 個です。
* 当該 `subroutine` は、自作 `function` `Problem0001_0i` `(i=1,2,3)` の戻し値を `SAVE_UNIT` に出力するために用います。
* 引数 `limit` は、自作 `function` `Problem0001_0i` `(i=1,2,3)` に渡されます。

## main.f08 ##

### `program main` ###

* Project Euler 2 の解答を指定されたファイルへ出力する `program` です。
* ［実行過程］
  1. 結果を保存するファイルのパスの入力を求められるので、適当なファイルのパスを入力し、Enter キーを押します。
  2. プログラムが正常に実行されたことを示す文が console に表示されるので、任意のキーを押し、当該プログラムを終了してください。

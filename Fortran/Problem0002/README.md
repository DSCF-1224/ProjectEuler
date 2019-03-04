# Project Euler 0002 #

## 設問 ##

* [Problem 2 - Project Euler](https://projecteuler.net/problem=2)
* [Problem 2 - PukiWiki](http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%202)

## テスト環境 ##

gfortran 8.1.0

## 構成 ##

* [Problem0002_01.f08](#problem0002_01f08)
  * [`module Problem0002`](#module-problem0002)
    * [Calc_FibonacciNum.f08](Calc_FibonacciNum.f08)
      * `function` [`Calc_FibonacciNum_RCR`](#function-calc_fibonaccinum_rcr)
    * [Problem0001_01.f08](Problem0001_01.f08)
      * `function` [`Problem0002_01_RCR`](#function-problem0002_01_rcr)
      * `function` [`Problem0002_01_WithMemo`](#function-problem0002_01_withmemo)
    * [Problem0001_02.f08](Problem0001_02.f08)
      * `function` [`Problem0002_02`](#function-problem0002_02)
    * [show_result.f08](show_result.f08)
      * `subroutine` [`show_result_core`](#subroutine-show_result_core)
      * `subroutine` [`show_result`](#subroutine-show_result)
* [main.f08](#mainf08)
  * [`program main`](#program-main)

## Problem0002_01.f08 ##

### `module` `Problem0002` ###

* 組み込み `module` [`module iso_fortran_env`](https://gcc.gnu.org/onlinedocs/gfortran/ISO_005fFORTRAN_005fENV.html) を使用しています。
* 自作 `module` [`support_projecteuler`](../support/support_projecteuler.f08) を使用しています。
* `Fibonacci_1st`
  * Fibonacci 数列の第1項（本問題での定義値）を格納する `parameter` 属性の 64bit 整数型変数
* `Fibonacci_2nd`
  * Fibonacci 数列の第2項（本問題での定義値）を格納する `parameter` 属性の 64bit 整数型変数

#### `function Calc_FibonacciNum_RCR` ####

* 当該 `function` の引数は 32bit 整数型変数 `term` の1個です。
* 当該 `function` は Fibonacci 数列の第 `term` 項を返します。
* 当該 `function` では `recursive` 属性を付与することで，Fibonacci 数列の第 `term` 項を再帰的に求めています。

#### `function Calc_FibonacciNum_WithMemo` ####

* 当該 `function` の引数は 32bit 整数型変数 `term` の1個です。
* 当該 `function` は Fibonacci 数列の第 `term` 項を返します。
* 整数 `term` が `3` 以上の場合には、第 `term` 項に至る Fibonacci 数列の計算過程を保存するための動的配列を用いています。

#### `function Problem0002_01_RCR` ####

* 当該 `function` の引数は 64bit 整数型変数 `limit` の1個です。
* 当該 `function` は、正の整数 `limit` 未満の Fibonacci 数列中の偶数項の総和を返します。
* 当該 `function` の戻し値を算出する際には、Fibonacci 数列の各項を、自作 `function` [`Calc_FibonacciNum_RCR`](#function-calc_fibonaccinum_rcr) によって求めています。
* Fibonacci 数列の各項の値の偶奇の判定には，自作 `module` [`support_projecteuler`](../support) の `function` `determine_isEven` を用いています。

#### `function Problem0002_01_WithMemo` ####

* 当該 `function` の引数は 64bit 整数型変数 `limit` の1個です。
* 当該 `function` は、正の整数 `limit` 未満の Fibonacci 数列中の偶数項の総和を返します。
* 当該 `function` の戻し値を算出する際には、Fibonacci 数列の各項を、自作 `function` [`Calc_FibonacciNum_WithMemo`](#function-calc_fibonaccinum_withmemo) によって求めています。
* Fibonacci 数列の各項の値の偶奇の判定には，自作 `module` [`support_projecteuler`](../support) の `function` `determine_isEven` を用いています。

#### `function Problem0002_02` ####

* 当該 `function` の引数は 64bit 整数型変数 `limit` の1個です。
* 当該 `function` は、正の整数 `limit` 未満の Fibonacci 数列中の偶数項の総和を返します。
* 最初の 2 項が 1 と 2 の Fibonnaci 数列の場合、初項から数えて `n` 番目の偶数項は、全体の 第 `3n-1` 項になることを利用して、計算過程のメモ化を行っています。

#### `subroutine show_result_core` ####

* 当該 `subroutine` の引数は整数型変数 `version` と 64bit 整数型変数 `limit` の 2 個です。
* 当該 `subroutine` は、自作 `function` `Problem0002_0i_*` `(i=1,2)` の戻し値を `SAVE_UNIT` に出力するために用います。
* 引数 `version` は、自作 `function` `Problem0002_0i_*` `(i=1,2)` のいずれを用いるのかを指定します。
  * `version = 1` --> `function` [`Problem0002_01_RCR`](#function-problem0002_01_rcr)
  * `version = 2` --> `function` [`Problem0002_01_WithMemo`](#function-problem0002_01_withmemo)
  * `version = 3` --> `function` [`Problem0002_02`](#function-problem0002_02)
* 引数 `limit` は、自作 `function` `Problem0002_0i_*` `(i=1,2)` に渡されます。

#### `subroutine show_result` ####

* 当該 `subroutine` の引数は 64bit 整数型変数 `limit` の 1 個です。
* 当該 `subroutine` は、自作 `function` `Problem0002_0i_*` `(i=1,2)` の戻し値を `SAVE_UNIT` に出力するために用います。
* 引数 `limit` は、自作 `function` `Problem0001_0i` `(i=1,2)` に渡されます。

## main.f08 ##

### `program main` ###

* Project Euler 2 の解答を指定されたファイルへ出力する `program` です。
* ［実行過程］
  1. 結果を保存するファイルのパスの入力を求められるので、適当なファイルのパスを入力し、Enter キーを押します。
  2. プログラムが正常に実行されたことを示す文が console に表示されるので、任意のキーを押し、当該プログラムを終了してください。

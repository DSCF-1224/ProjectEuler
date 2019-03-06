# Project Euler by Fortran : Problem 0005 #

## 設問 ##

* [Problem 5 - Project Euler](https://projecteuler.net/problem=5)
* [Problem 5 - PukiWiki](http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%205)

## テスト環境 ##

gfortran 8.1.0

## 構成 ##

* [Problem0005.f08](Problem0005.f08)
  * `module` [`Problem0005`](#module-problem0005)
    * `function` [`Problem0005_RCR`](#function-problem0005_rcr)
    * `function` [`Problem0005_IND`](#function-problem0005_ind)
    * [show_result.f08](show_result.f08)
      * `subroutine` [`show_result_core`](#subroutine-show_result_core)
      * `subroutine` [`show_result`](#subroutine-show_result)
* [main.f08](main.f08)
  * `subroutine` [`show_result`](#subroutine-show_result)

## Problem0005.f08 ##

### module Problem0005 ###

* 組み込み `module` [`module iso_fortran_env`](https://gcc.gnu.org/onlinedocs/gfortran/ISO_005fFORTRAN_005fENV.html) を必要とします。
* 当該リポジトリ中の自作 `module` [`support_projecteuler`](../support) を必要とします。
* 別リポジトリ [`Fortran`](https://github.com/DSCF-1224/Fortran) の自作 `module` [`GCD_LCM`](https://github.com/DSCF-1224/Fortran/tree/master/miniparts) を必要とします。

#### function Problem0005_RCR ####

* `private` 属性の `function` です。
* 引数は 64bit 整数型変数 `target` の 1 個です。
* 1 から `target` までのすべての正の整数で割り切れる数字の中で最小の正の整数を返します。
* 当該 `function` 中では、別リポジトリ [`Fortran`](https://github.com/DSCF-1224/Fortran) の自作 `module` [`GCD_LCM`](https://github.com/DSCF-1224/Fortran/tree/master/miniparts) で定義されている `interface` `GCD_RCR` を使用しています。

#### function Problem0005_IND ####

* `private` 属性の `function` です。
* 引数は 64bit 整数型変数 `target` の 1 個です。
* 1 から `target` までのすべての正の整数で割り切れる数字の中で最小の正の整数を返します。
* 当該 `function` 中では、別リポジトリ [`Fortran`](https://github.com/DSCF-1224/Fortran) の自作 `module` [`GCD_LCM`](https://github.com/DSCF-1224/Fortran/tree/master/miniparts) で定義されている `interface` `GCD_IND` を使用しています。

#### `subroutine show_result_core` ####

* 当該 `subroutine` の引数は整数型変数 `version` と 64bit 整数型変数 `target` の 2 個です。
* 当該 `subroutine` は、以下の自作 `function` の戻し値を `SAVE_UNIT` に出力するために用います。
  * `function` [`Problem0005_RCR`](#function-problem0005_rcr)
  * `function` [`Problem0005_IND`](#function-problem0005_ind)
* 引数 `version` は、自作 `function` `Problem0001_0i` `(i=1,2,3)` のいずれを用いるのかを指定します。
  * `version = 1` --> `function` [`Problem0005_RCR`](#function-problem0005_rcr)
  * `version = 2` --> `function` [`Problem0005_IND`](#function-problem0005_ind)
* 引数 `target` は、自作 `function` `Problem0005_???` に渡されます。

#### `subroutine show_result` ####

* 当該 `subroutine` の引数は 64bit 整数型変数 `target` の 1 個です。
* 当該 `subroutine` は、以下の自作 `function` の戻し値を `SAVE_UNIT` に出力するために用います。
  * `function` [`Problem0005_RCR`](#function-problem0005_rcr)
  * `function` [`Problem0005_IND`](#function-problem0005_ind)
* 引数 `target` は、自作 `function` `Problem0005_???` に渡されます。

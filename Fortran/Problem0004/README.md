# Project Euler by Fortran : Problem 0004 #

## 設問 ##

* [Problem 4 - Project Euler](https://projecteuler.net/problem=4)
* [Problem 4 - PukiWiki](http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%204)

## テスト環境 ##

gfortran 8.1.0

## 構成 ##

* [Problem0004_01.f08](Problem0004_01.f08)
  * `module` [`Problem0004_01`](#module-problem0004_01)
    * `function` [`Check_IsPalindromic_int`](#function-check_ispalindromic_int)
    * `function` [`find_largest_palindrome_v01`](#function-find_largest_palindrome_v01)
    * `function` [`Pick_ValTargetDigit`](#function-pick_valtargetdigit)
    * `subroutine` [`show_result_core`](#subroutine-show_result_core)
    * `subroutine` [`show_result`](#subroutine-show_result)

## Problem0004_01.f08 ##

### `module Problem0004_01` ###

* 組み込み `module` [`module iso_fortran_env`](http://fortranwiki.org/fortran/show/iso_fortran_env) を必要とします。
* 当該リポジトリ中の自作 `module` [`support_projecteuler`](../support/) を必要とします。
* 別リポジトリ [`Fortran`](https://github.com/DSCF-1224/Fortran) の自作 `module` [`support_system_clock`](https://github.com/DSCF-1224/Fortran/tree/master/support) を必要とします。

#### `function Check_IsPalindromic_int` ####

* `private` 属性の `function` です。
* 当該 `function` の引数は 64bit 整数型変数 `target` の1個です。
* 整数 `target` が回文数であれば、`.true.` を返し、それ以外の場合では `.false.` を返します。
* 整数 `target` が負値であれば、`.false.` を返します。
* 整数 `target` の各桁の値を整数値として取り出し、比較することで、回文数であるかどうかの判定を行っています。

#### `function find_largest_palindrome_v01` ####

* `private` 属性の `function` です。
* 当該 `function` の引数は 64bit 整数型変数 `digit` の1個です。
* 当該 `function` は `digit` 桁の正整数 2 個の積として得られる正整数の中で、最大の回文数を 64bit 整数型で返します。

#### `function Pick_ValTargetDigit` ####

* `private` 属性の `function` です。
* 当該 `function` の引数は 64bit 整数型変数 `target` と `digit` の 2 個です。
* 整数 `target` の 10 の `digit` 乗の位の数を返します。

#### `subroutine show_result_core` ####

* `private` 属性の `subroutine` です。
* 当該 `subroutine` の引数は整数型変数 `version` と 64bit 整数型変数 `digit` の 2 個です。
* 当該 `subroutine` は、自作 `function` `find_largest_palindrome_v0i` `(i=1)` の戻し値を `SAVE_UNIT` に出力するために用います。
* 引数 `version` は、自作 `function` `find_largest_palindrome_v0i` `(i=1)` のいずれを用いるのかを指定します。
* 引数 `target` は、自作 `function` `find_largest_palindrome_v0i` `(i=1)` に渡されます。

#### `subroutine show_result` ####

* `public` 属性の `subroutine` です。
* 当該 `subroutine` の引数は 64bit 整数型変数 `digit` の 1 個です。
* 当該 `subroutine` は、自作 `function` `Problem0003_0i_INT32` `(i=1,2,3)` の戻し値を `SAVE_UNIT` に出力するために用います。

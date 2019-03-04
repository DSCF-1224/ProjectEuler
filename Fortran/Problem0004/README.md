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

## Problem0004_01.f08 ##

### `module Problem0004_01` ###

* 組み込み `module` [`module iso_fortran_env`](https://gcc.gnu.org/onlinedocs/gfortran/ISO_005fFORTRAN_005fENV.html) を必要とします。

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

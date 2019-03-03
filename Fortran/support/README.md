# My Support Module for Project Euler #

Project Euler を fortran で実施するに際して、頻繁に用いる function をまとめたものです。

## 実装した `function`, `interface` ##

### 目次 ###

#### interface ####

|name|`public`/`private`|
|:-:|:-:|
|[`determine_ismultiple`](#interface-determine_ismultiple)|`public`|

#### function ####

|name|`public`/`private`|
|:-:|:-:|
|[`determine_ismultiple_INT16`](#function-determine_ismultiple_INT16)|`private`|
|[`determine_ismultiple_INT32`](#function-determine_ismultiple_INT32)|`private`|
|[`determine_ismultiple_INT64`](#function-determine_ismultiple_INT64)|`private`|

### `interface determine_ismultiple` ###

```Fortran
integer  :: itr, base
logical  :: stat
stat = determine_ismultiple( target= itr, base= base )
```

* 引数は整数型変数 `target` と 整数型変数 `base` の 2 つです。
* 整数 `target` が整数 `base` の倍数であるかどうかを判断します。
* 整数 `target` が整数 `base` の倍数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の倍数でなければ、`.false.` を返します。
* 当該 `interface` を構成する `function` は次になります。
  * [`function determine_ismultiple_INT16`](#function-determine_ismultiple_INT16)
  * [`function determine_ismultiple_INT32`](#function-determine_ismultiple_INT32)
  * [`function determine_ismultiple_INT64`](#function-determine_ismultiple_INT64)

### `function determine_ismultiple_INT16` ###

```Fortran
integer( kind=INT16 ) :: itr, base
logical               :: stat
stat = determine_ismultiple( target= itr, base= base )
```

* 引数は 16bit 整数型変数 `target` と 16bit 整数型変数 `base` の 2 つです。
* 整数 `target` が整数 `base` の倍数であるかどうかを判断します。
* 整数 `target` が整数 `base` の倍数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の倍数でなければ、`.false.` を返します。
* 当該 `function` は `interface` [`determine_ismultiple`](#interface-determine_ismultiple) で使用されています。

### `function determine_ismultiple_INT32` ###

```Fortran
integer( kind=INT32 ) :: itr, base
logical               :: stat
stat = determine_ismultiple( target= itr, base= base )
```

* 引数は 32bit 整数型変数 `target` と 32bit 整数型変数 `base` の 2 つです。
* 整数 `target` が整数 `base` の倍数であるかどうかを判断します。
* 整数 `target` が整数 `base` の倍数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の倍数でなければ、`.false.` を返します。
* 当該 `function` は `interface` [`determine_ismultiple`](#interface-determine_ismultiple) で使用されています。

### `function determine_ismultiple_INT64` ###

```Fortran
integer( kind=INT64 ) :: itr, base
logical               :: stat
stat = determine_ismultiple( target= itr, base= base )
```

* 引数は 64bit 整数型変数 `target` と 64bit 整数型変数 `base` の 2 つです。
* 整数 `target` が整数 `base` の倍数であるかどうかを判断します。
* 整数 `target` が整数 `base` の倍数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の倍数でなければ、`.false.` を返します。
* 当該 `function` は `interface` [`determine_ismultiple`](#interface-determine_ismultiple) で使用されています。

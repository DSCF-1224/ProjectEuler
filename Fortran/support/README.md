# My Support Module for Project Euler #

Project Euler を fortran で実施するに際して、頻繁に用いる function をまとめたものです。

## 実装した `function`, `interface` ##

### 目次 ###

#### interface ####

|name|`public`/`private`|
|:-|:-:|
|[`determine_isEven`](#interface-determine_isEven)|`public`|
|[`determine_ismultiple`](#interface-determine_ismultiple)|`public`|
|[`determine_isOdd`](#interface-determine_isOdd)|`public`|
|[`determine_isprime`](#interface-determine_isprime)|`public`|

#### function ####

|name|`public`/`private`|
|:-|:-:|
|[`determine_isEven_INT16`](#function-determine_isEven_INT16)|`private`|
|[`determine_isEven_INT32`](#function-determine_isEven_INT32)|`private`|
|[`determine_isEven_INT64`](#function-determine_isEven_INT64)|`private`|
|[`determine_ismultiple_INT16`](#function-determine_ismultiple_INT16)|`private`|
|[`determine_ismultiple_INT32`](#function-determine_ismultiple_INT32)|`private`|
|[`determine_ismultiple_INT64`](#function-determine_ismultiple_INT64)|`private`|
|[`determine_isOdd_INT16`](#function-determine_isOdd_INT16)|`private`|
|[`determine_isOdd_INT32`](#function-determine_isOdd_INT32)|`private`|
|[`determine_isOdd_INT64`](#function-determine_isOdd_INT64)|`private`|
|[`determine_isprime_INT16`](#function-determine_isprime_INT16)|`private`|
|[`determine_isprime_INT32`](#function-determine_isprime_INT32)|`private`|
|[`determine_isprime_INT64`](#function-determine_isprime_INT64)|`private`|

### `interface determine_isEven` ###

```Fortran
integer  :: itr
logical  :: stat
stat = determine_isEven( target=itr )
```

* 引数は整数型変数 `target` の 1 つです。
* 整数 `target` が偶数であるかどうかを判断します。
* 整数 `target` が整数 `base` の偶数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の奇数であれば、`.false.` を返します。
* 当該 `function` は `interface` [`determine_ismultiple`](#interface-determine_ismultiple) を用いています。
* 当該 `interface` を構成する `function` は次になります。
  * [`function determine_isEven_INT16`](#function-determine_isEven_INT16)
  * [`function determine_isEven_INT32`](#function-determine_isEven_INT32)
  * [`function determine_isEven_INT64`](#function-determine_isEven_INT64)

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

### `interface determine_isOdd` ###

```Fortran
integer  :: itr
logical  :: stat
stat = determine_isOdd( target=itr )
```

* 引数は整数型変数 `target` の 1 つです。
* 整数 `target` が偶数であるかどうかを判断します。
* 整数 `target` が整数 `base` の奇数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の偶数であれば、`.false.` を返します。
* 当該 `function` は `interface` [`determine_ismultiple`](#interface-determine_ismultiple) を用いています。
* 当該 `interface` を構成する `function` は次になります。
  * [`function determine_isOdd_INT16`](#function-determine_isOdd_INT16)
  * [`function determine_isOdd_INT32`](#function-determine_isOdd_INT32)
  * [`function determine_isOdd_INT64`](#function-determine_isOdd_INT64)

### `interface determine_isprime` ###

```Fortran
integer  :: itr
logical  :: stat
stat = determine_isprime( target=itr )
```

* 引数は整数型変数 `target` の 1 つです。
* 整数 `target` が素数であるかどうかを判断します。
* 整数 `target` が整数 `base` の素数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の素数でなければ、`.false.` を返します。
* 当該 `interface` を構成する `function` は次になります。
  * [`function determine_isprime_INT16`](#function-determine_isprime_INT16)
  * [`function determine_isprime_INT32`](#function-determine_isprime_INT32)
  * [`function determine_isprime_INT64`](#function-determine_isprime_INT64)

### `function determine_isEven_INT16` ###

```Fortran
integer( kind=INT16 ) :: itr
logical               :: stat
stat = determine_isEven_INT16( target=itr )
```

* 引数は整数型変数 `target` の 1 つです。
* 16bit 整数 `target` が偶数であるかどうかを判断します。
* 整数 `target` が整数 `base` の偶数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の奇数であれば、`.false.` を返します。
* 当該 `function` は `interface` [`determine_isEven`](#interface-determine_isEven) で使用されています。

### `function determine_isEven_INT32` ###

```Fortran
integer( kind=INT32 ) :: itr
logical               :: stat
stat = determine_isEven_INT32( target=itr )
```

* 引数は整数型変数 `target` の 1 つです。
* 32bit 整数 `target` が偶数であるかどうかを判断します。
* 整数 `target` が整数 `base` の偶数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の奇数であれば、`.false.` を返します。
* 当該 `function` は `interface` [`determine_isEven`](#interface-determine_isEven) で使用されています。

### `function determine_isEven_INT64` ###

```Fortran
integer( kind=INT64 ) :: itr
logical               :: stat
stat = determine_isEven_INT64( target=itr )
```

* 引数は整数型変数 `target` の 1 つです。
* 64bit 整数 `target` が偶数であるかどうかを判断します。
* 整数 `target` が整数 `base` の偶数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の奇数であれば、`.false.` を返します。
* 当該 `function` は `interface` [`determine_isEven`](#interface-determine_isEven) で使用されています。

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

### `function determine_isOdd_INT16` ###

```Fortran
integer( kind=INT16 ) :: itr
logical               :: stat
stat = determine_isOdd_INT16( target=itr )
```

* 引数は整数型変数 `target` の 1 つです。
* 16bit 整数 `target` が偶数であるかどうかを判断します。
* 整数 `target` が整数 `base` の奇数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の偶数であれば、`.false.` を返します。
* 当該 `function` は `interface` [`determine_isOdd`](#interface-determine_isOdd) で使用されています。

### `function determine_isOdd_INT32` ###

```Fortran
integer( kind=INT32 ) :: itr
logical               :: stat
stat = determine_isOdd_INT32( target=itr )
```

* 引数は整数型変数 `target` の 1 つです。
* 32bit 整数 `target` が偶数であるかどうかを判断します。
* 整数 `target` が整数 `base` の奇数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の偶数であれば、`.false.` を返します。
* 当該 `function` は `interface` [`determine_isOdd`](#interface-determine_isOdd) で使用されています。

### `function determine_isOdd_INT64` ###

```Fortran
integer( kind=INT64 ) :: itr
logical               :: stat
stat = determine_isOdd_INT64( target=itr )
```

* 引数は整数型変数 `target` の 1 つです。
* 64bit 整数 `target` が偶数であるかどうかを判断します。
* 整数 `target` が整数 `base` の奇数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の偶数であれば、`.false.` を返します。
* 当該 `function` は `interface` [`determine_isOdd`](#interface-determine_isOdd) で使用されています。

### `function determine_isprime_INT16` ###

```Fortran
integer( kind=INT16 ) :: itr
logical               :: stat
stat = determine_isprime_INT16( target=itr )
```

* 引数は整数型変数 `target` の 1 つです。
* 16bit 整数 `target` が素数であるかどうかを判断します。
* 整数 `target` が整数 `base` の素数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の素数でなければ、`.false.` を返します。
* 当該 `function` は `interface` [`determine_isprime`](#interface-determine_isprime) で使用されています。

### `function determine_isprime_INT32` ###

```Fortran
integer( kind=INT32 ) :: itr
logical               :: stat
stat = determine_isprime_INT32( target=itr )
```

* 引数は整数型変数 `target` の 1 つです。
* 32bit 整数 `target` が素数であるかどうかを判断します。
* 整数 `target` が整数 `base` の素数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の素数でなければ、`.false.` を返します。
* 当該 `function` は `interface` [`determine_isprime`](#interface-determine_isprime) で使用されています。

### `function determine_isprime_INT64` ###

```Fortran
integer( kind=INT64 ) :: itr
logical               :: stat
stat = determine_isprime_INT64( target=itr )
```

* 引数は整数型変数 `target` の 1 つです。
* 64bit 整数 `target` が素数であるかどうかを判断します。
* 整数 `target` が整数 `base` の素数であれば、`.true.` を返します。
* 整数 `target` が整数 `base` の素数でなければ、`.false.` を返します。
* 当該 `function` は `interface` [`determine_isprime`](#interface-determine_isprime) で使用されています。

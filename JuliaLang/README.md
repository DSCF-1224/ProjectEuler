# 本家サイトへのリンク
- **[About - Project Euler](https://projecteuler.net/about)**
- **[Archived Problems - Project Euler](https://projecteuler.net/archives)**
- **[Recent Problems - Project Euler](https://projecteuler.net/recent)**
- **[News - Project Euler](https://projecteuler.net/news)**


# 進捗

|ID|Description / Title| Status|
|:-:|:-:|:-:|
|1| [Multiples of 3 and 5](https://github.com/DSCF-1224/Julia/tree/master/ProjectEuler#problem-0001) | 解答済み |
|2| [Even Fibonacci numbers](https://github.com/DSCF-1224/Julia/tree/master/ProjectEuler#problem-0002) | 解答済み |
|3| [Largest prime factor](https://github.com/DSCF-1224/Julia/tree/master/ProjectEuler#problem-0003) | 未着工 |
|4| [Largest palindrome product](https://github.com/DSCF-1224/Julia/tree/master/ProjectEuler#problem-0004) | 未着工 |
|5| [Smallest multiple](https://github.com/DSCF-1224/Julia/tree/master/ProjectEuler#problem-0005) | 未着工 |
|6| [Sum square difference](https://github.com/DSCF-1224/Julia/tree/master/ProjectEuler#problem-0006) | 未着工 |
|7| [10001st prime](https://github.com/DSCF-1224/Julia/tree/master/ProjectEuler#problem-0007) | 未着工 |
|8| [Largest product in a series](https://github.com/DSCF-1224/Julia/tree/master/ProjectEuler#problem-0008) | 未着工 |
|9| [Special Pythagorean triplet](https://github.com/DSCF-1224/Julia/tree/master/ProjectEuler#problem-0009) | 未着工 |
|10| [Summation of primes](https://github.com/DSCF-1224/Julia/tree/master/ProjectEuler#problem-0010) | 未着工 |

# 各課題の進捗

## [Problem 0001](https://projecteuler.net/problem=1)

- **PojectEuler\Problem0001\0001_01.jl**

	- `function problem0001`は、総和の上限`upperlimit`を引数とする
	- イテレータ`itr`を`1`から`upperlimit-1`まで間隔`1`で動かす
	- 3および5の倍数は`if`文を用いて、各々抽出する

- **PojectEuler\Problem0001\0001_02.jl**

	- `function problem0001`は、総和の上限`upperlimit`を引数とする
	- イテレータ`itr`をイテレータ`itr`を`1`から`upperlimit-1`まで間隔`1`で動かす
	- 3および5の倍数は`if`文を用いて、各々抽出する

- **PojectEuler\Problem0001\0001_03.jl**

	- `function sum_multiples`
		- 当該関数は、総和の上限`upperlimit`と約数`divisor`を引数とする
		- 当該関数は、`1`以上`upperlimit`未満の自然数のうち、`divisor`の倍数全体の総和を、等差数列の総和の公式を用いて算出する

	- `function problem0001`
		- 当該関数は、総和の上限`upperlimit`を引数とする
		- 当該関数は、関数`sum_multiples`を用いて、3の倍数全体、5の倍数全体、15の倍数全体の総和を各々算出し、3の倍数全体と5の倍数全体の総和を算出する。
		- ただし、3の倍数全体の総和`sum03`と5の倍数全体の総和`sum05`の和`sum03+sum05`には、3と5の最小公倍数15の倍数全体の総和`sum15`が2回重複して含まれているので、その補正が必要になる

## [Problem 0002](https://projecteuler.net/problem=2)

- **PojectEuler\Problem0002\0002_01.jl**

	- 【目的】Fibonacci数列の計算方法の検証
	- 【コード内で定義した`function`】
		- `function FibonacciNum`
			- 当該関数は、Fibonacci数列の第`term`項を算出する
			- 当該関数は、`term`が`1`ないし`2`に等しいとき、定義された初期値を返す
			- 当該関数は、`term`が`3`以上のとき、自身を再帰的に呼び出す
		- `function test`
			- 上述の`function FibonacciNum`の引数`term`に`1`から`num_terms`までを代入し、標準出力に出す

- **PojectEuler\Problem0002\0002_02.jl**

	- 【目的】Fibonacci数列の計算方法の検証
	- 【コード内で定義した`function`】
		- `function FibonacciNum`
			- 当該関数では、Fibonacci数列の第`term`項を算出する
			- `Problem0002\0002_01.jl`のような再帰的に定義した`function`では、`term`の値が大きくなった時、計算終了に要する時間が爆発的に増えるという問題がある
			- 第`term`項に至るまでの各項の値を保存していれば、Fibonacci数列の第`term`項を得るまでの計算時間の短縮が狙える
			- 当該関数では、`term`個の要素を有する1次元配列`buff`を定義し、同配列にFibonacci数列の各項の値を保存している
		- `function test`
			- 上述の`function FibonacciNum`の引数`term`に`1`から`num_terms`までを代入し、標準出力に出す
	- 【参考文献】
		- [Julia言語で計算が遅くなった場合の解決法.ipynb](http://nbviewer.jupyter.org/gist/genkuroki/1ac59bb3e03eac12945d7040d4f98246)
			- [配列変数の初期化](http://nbviewer.jupyter.org/gist/genkuroki/1ac59bb3e03eac12945d7040d4f98246#%E9%85%8D%E5%88%97%E5%A4%89%E6%95%B0%E3%81%AE%E5%88%9D%E6%9C%9F%E5%8C%96)

- **PojectEuler\Problem0002\0002_03.jl**

	- 【目的】[Problem 0002](https://projecteuler.net/problem=2)の解答
	- 【コード内で定義した`function`】
		- `function FibonacciNum`
			- `PojectEuler\Problem0002\0002_01.jl`に同じ
		- `function problem0002`
			- 当該関数では、[本設問](https://projecteuler.net/problem=2)で目的としている、
				[1]400万以下で，[2]偶数の，[3]第1項が`1`，第2項が`2`で定義されるFibonacci数、の総和を求める
			- 当該関数では、Fibonacciの上限を引数`upperlimit`で与える
			- 当該関数中の変数`sum`で求める総和を、`counter`でFibonacci数列の項数を、`fibonacci`でFibonacci数列の第`counter`項を保持している

- **PojectEuler\Problem0002\0002_04.jl**

	- 【目的】[Problem 0002](https://projecteuler.net/problem=2)の解答
	- 【コード内で定義した`function`】
		- `function FibonacciNum`
			- `PojectEuler\Problem0002\0002_02.jl`に同じ
		- `function problem0002`
			- 当該関数では、[本設問](https://projecteuler.net/problem=2)で目的としている、
				[1]400万以下で，[2]偶数の，[3]第1項が`1`，第2項が`2`で定義されるFibonacci数、の総和を求める
			- 当該関数では、Fibonacciの上限を引数`upperlimit`で与える
			- 当該関数中の変数`sum`で求める総和を、`counter`でFibonacci数列の項数を、`fibonacci`でFibonacci数列の第`counter`項を保持している


- **PojectEuler\Problem0002\0002_05.jl**

	- 【目的】[Problem 0002](https://projecteuler.net/problem=2)の解答
	- 【参考】
		- [Project Euler 1~10 - Qiita](https://qiita.com/yopya/items/50876cf06e04538ffde8)
	- 【コード内で定義した`function`】
		- `function problem0002`
			- 当該関数では、[本設問](https://projecteuler.net/problem=2)で目的としている、
				[1]400万以下で，[2]偶数の，[3]第1項が`1`，第2項が`2`で定義されるFibonacci数、の総和を求める
			- 当該関数では、Fibonacciの上限を引数`upperlimit`で与える
			- 数列`a[n] (n>=1)`と`b[n] (n>=1)`を`b[n]=a[n-1]+b[n-1]`，`a[n]=b[n]-a[n-1]`，`a[1]=1`，`b[1]=2`で定義する。このとき，第1項が`f[1]=1`，第2項が`f[2]=2`で定義されるFibonacci数列`f[n] (n>=1)`と`a[n]`，`b[n]`との間には`a[n]=f[n] (n>=1)`，`b[n]=f[n+1] (n>=1)`という関係が成り立つ．
			- `a[1]=f[1]=1`が求める総和には使わない（奇数だから）ので、数列`b[n]`の各項が偶数であるかを判別しながら、求める総和を計算すればよい。

- 【`Base.@timev`での計測結果】
	- PojectEuler\Problem0002\0002_03.jl

        |`upperlimit`|elapsed time (ns)|bytes allocated|pool allocs|
        |-:|-:|-:|-:|
        |`4*10^6`|45421674|2149736|38244|
        |`4*10^7`|388605734|2149928|38244|
        |`4*10^8`|2625012638|2149528|38243|
        |`4*10^9`|31463244435|2149736|38244|

	- PojectEuler\Problem0002\0002_04.jl

        |`upperlimit`|elapsed time (ns)|bytes allocated|pool allocs|
        |-:|-:|-:|-:|
        |`4*10^6`|18904116|2956635|52932|
        |`4*10^7`|18719536|2958939|52938|
        |`4*10^8`|18764058|2960331|52941|
        |`4*10^9`|18719227|2962763|52946|
        |`4*10^10`|18739633|2965275|52950|

	- PojectEuler\Problem0002\0002_05.jl

        |`upperlimit`|elapsed time (ns)|bytes allocated|pool allocs|
        |-:|-:|-:|-:|
        |`4*10^6`|37297430|1520950|25693|
        |`4*10^7`|148907|784|30|
        |`4*10^8`|130560|784|30|
        |`4*10^9`|152747|784|30|
        |`4*10^10`|152320|784|30|



## [Problem 0003](https://projecteuler.net/problem=3)

- 未着工

## [Problem 0004](https://projecteuler.net/problem=4)

- 未着工

## [Problem 0005](https://projecteuler.net/problem=5)

- 未着工

## [Problem 0006](https://projecteuler.net/problem=6)

- 未着工

## [Problem 0007](https://projecteuler.net/problem=7)

- 未着工

## [Problem 0008](https://projecteuler.net/problem=8)

- 未着工

## [Problem 0005](https://projecteuler.net/problem=5)

- 未着工

## [Problem 0009](https://projecteuler.net/problem=9)

- 未着工

## [Problem 0010](https://projecteuler.net/problem=10)

- 未着工
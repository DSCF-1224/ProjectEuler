## 構成 ##
* problem0001_01.vbs
* problem0001_02.vbs
* problem0001_03.vbs
* problem0001_04.vbs
* problem0001_05.vbs
* problem0001_06.vbs

## problem0001_01.vbs ##
* `Function Problem0001_01( max )`
	* 引数は `max` の1個. 値渡し
	* 1 から `max (>1)` 未満までの整数から, 3 ないし 5 の倍数のみを抽出し, その総和を求める
	* 反復子 `itr` を 1 から `max` まで 1 ずつ増加させながら, `itr` が 3 ないし 5 の倍数であるかを，3 ないし 5 で割ったときの余りで判定し, 倍数なら和を計算する
	* `itr` が 3 ないし 5 の倍数であるかを判定するのには [Statement `If ... ElseIf ... End If`](https://msdn.microsoft.com/ja-jp/library/cc392462.aspx) を利用
	* 例外（エラー）処理
		* 引数 `max` が数値として認識できない場合を [`Function IsNumeric`](https://msdn.microsoft.com/ja-jp/library/cc410249.aspx) を用いて検出
		* 引数 `max` が**整数型**および**長整数型**ではない場合を [`Function VarType`](https://msdn.microsoft.com/ja-jp/library/cc392346.aspx) を用いて検出
		* 引数 `max` が 1 未満の場合を不等号を用いて検出

## problem0001_02.vbs ##
* `Function Problem0001_02( max )`
	* 引数は `max` の1個. 値渡し
	* 1 から `max (>1)` 未満までの整数から, 3 ないし 5 の倍数のみを抽出し, その総和を求める
	* 反復子 `itr` を 1 から `max` まで 1 ずつ増加させながら, `itr` が 3 ないし 5 の倍数であるかを，3 ないし 5 で割ったときの余りで判定し, 倍数なら和を計算する
	* `itr` が 3 ないし 5 の倍数であるかを判定するのには [Statement `If ... End If`](https://msdn.microsoft.com/ja-jp/library/cc392462.aspx) と [`Or` 演算子](https://msdn.microsoft.com/ja-jp/library/cc392426.aspx)を利用
	* 例外（エラー）処理
		* 引数 `max` が数値として認識できない場合を [`Function IsNumeric`](https://msdn.microsoft.com/ja-jp/library/cc410249.aspx) を用いて検出
		* 引数 `max` が**整数型**および**長整数型**ではない場合を [`Function VarType`](https://msdn.microsoft.com/ja-jp/library/cc392346.aspx) を用いて検出
		* 引数 `max` が 1 未満の場合を不等号を用いて検出

## problem0001_03.vbs ##
* `Function Calc_SumOfMultiples( divisor, max )`
	* 引数は `divisor` と `max` の2個. 共に値渡し
	* 1 から `max (>1)` 未満までの整数から, 整数値 `divisor` の倍数のみを抽出し, その総和を求める
	* 総和の計算には，等差数列の総和の公式を用いている
	* 例外（エラー）処理
		* 引数 `divisor` が数値として認識できない場合を [`Function IsNumeric`](https://msdn.microsoft.com/ja-jp/library/cc410249.aspx) を用いて検出
		* 引数 `divisor` が**整数型**および**長整数型**ではない場合を [`Function VarType`](https://msdn.microsoft.com/ja-jp/library/cc392346.aspx) を用いて検出
		* 引数 `divisor` が 1 未満の場合を不等号を用いて検出
* `Function Problem0001_03( max )`
	* 引数は `max` の1個. 値渡し
	* 1 から `max (>1)` 未満までの整数から, 3 ないし 5 の倍数のみを抽出し, その総和を求める
	* `Function Calc_SumOfMultiples` を用い，1 から `max (>1)` 未満までの整数から, 3, 5, 15 の倍数の総和を各々算出し, 求める総和を求めている
	* 「 3 の倍数の総和」と「 5 の倍数の総和」の単純な和には, 「 15 の倍数の総和」が2個含まれていることに注意

## problem0001_04.vbs ##
* `Sub Problem0001_04( max )`
	* [problem0001_01.vbs](#problem0001_01vbs) の `Function Problem0001_01` を `Sub` に書き換え, [`Function MsgBox`](https://msdn.microsoft.com/ja-jp/library/cc410277.aspx) による出力まで実行するようにしたもの
	* 引数は `max` の1個. 値渡し
	* 1 から `max (>1)` 未満までの整数から, 3 ないし 5 の倍数のみを抽出し, その総和を求める
	* 反復子 `itr` を 1 から `max` まで 1 ずつ増加させながら, `itr` が 3 ないし 5 の倍数であるかを，3 ないし 5 で割ったときの余りで判定し, 倍数なら和を計算する
	* `itr` が 3 ないし 5 の倍数であるかを判定するのには [Statement `If ... ElseIf ... End If`](https://msdn.microsoft.com/ja-jp/library/cc392462.aspx) を利用
	* 例外（エラー）処理
		* 引数 `max` が数値として認識できない場合を [`Function IsNumeric`](https://msdn.microsoft.com/ja-jp/library/cc410249.aspx) を用いて検出
		* 引数 `max` が**整数型**および**長整数型**ではない場合を [`Function VarType`](https://msdn.microsoft.com/ja-jp/library/cc392346.aspx) を用いて検出
		* 引数 `max` が 1 未満の場合を不等号を用いて検出

## problem0001_05.vbs ##
* `Sub Problem0001_05( max )`
	* [problem0001_02.vbs](#problem0001_02vbs) の `Function Problem0001_02` を `Sub` に書き換え, [`Function MsgBox`](https://msdn.microsoft.com/ja-jp/library/cc410277.aspx) による出力まで実行するようにしたもの
	* 引数は `max` の1個. 値渡し
	* 1 から `max (>1)` 未満までの整数から, 3 ないし 5 の倍数のみを抽出し, その総和を求める
	* 反復子 `itr` を 1 から `max` まで 1 ずつ増加させながら, `itr` が 3 ないし 5 の倍数であるかを，3 ないし 5 で割ったときの余りで判定し, 倍数なら和を計算する
	* `itr` が 3 ないし 5 の倍数であるかを判定するのには [Statement `If ... End If`](https://msdn.microsoft.com/ja-jp/library/cc392462.aspx) と [`Or` 演算子](https://msdn.microsoft.com/ja-jp/library/cc392426.aspx)を利用
	* 例外（エラー）処理
		* 引数 `max` が数値として認識できない場合を [`Function IsNumeric`](https://msdn.microsoft.com/ja-jp/library/cc410249.aspx) を用いて検出
		* 引数 `max` が**整数型**および**長整数型**ではない場合を [`Function VarType`](https://msdn.microsoft.com/ja-jp/library/cc392346.aspx) を用いて検出
		* 引数 `max` が 1 未満の場合を不等号を用いて検出
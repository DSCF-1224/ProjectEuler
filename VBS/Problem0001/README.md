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
	* 1 から `max (>1)` までの整数から, 3 ないし 5 の倍数のみを抽出し, その総和を求める
	* 反復子 `itr` を 1 から `max` まで 1 ずつ増加させながら, `itr` が 3 ないし 5 の倍数であるかを，3 ないし 5 で割ったときの余りで判定し, 倍数なら和を計算する
	* `If ... ElseIf ... End If` を利用

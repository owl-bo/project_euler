# オイラープロジェクトをRubyでプログラミング演習

## 問題文について

以下のページから翻訳された問題文を引用する。有志に感謝。  
http://odz.sakura.ne.jp/projecteuler/  

## コーディングについて

原則としてRubocopやCookpadのRubyコーディング基準を遵守する。  
参考URL:  
https://github.com/fortissimo1997/ruby-style-guide/blob/japanese/README.ja.md  
https://github.com/cookpad/styleguide/blob/master/ruby.ja.md  
  
全文が長いため初心者にとって特徴的な部分のみ抜粋する  

* 1行の文字数は80文字以内
* メソッドの行数は10行以下
* メソッドの引数は4以下
* 原則としてFor文は利用しない

より具体的にはこのレポジトリに含まれるrubocop設定ファイルによるrubocopをクリアすること。  

---  
  
## No. 001  
  
> Problem 1 「3と5の倍数」 †  
> 10未満の自然数のうち, 3 もしくは 5 の倍数になっているものは 3, 5, 6, 9 の4つがあり, これらの合計は 23 になる.  
>   
> 同じようにして, 1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ.  
  
CodeSize: 115 byte  
  
[Code](https://github.com/owlworks/project_euler/blob/master/codes/001.rb "Code")  
  
---  
  
## No. 002  
  
> Problem 2 「偶数のフィボナッチ数」 †  
> フィボナッチ数列の項は前の2つの項の和である. 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.  
>   
> 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...  
> 数列の項の値が400万以下の, 偶数値の項の総和を求めよ.  
  
CodeSize: 236 byte  
  
[Code](https://github.com/owlworks/project_euler/blob/master/codes/002.rb "Code")  
  
---  
  
## No. 003  
  
> Problem 3 「最大の素因数」 †  
> 13195 の素因数は 5, 7, 13, 29 である.  
>   
> 600851475143 の素因数のうち最大のものを求めよ.  
  
CodeSize: 892 byte  
  
[Code](https://github.com/owlworks/project_euler/blob/master/codes/003.rb "Code")  
  
---  
  
## No. 004  
  
> Problem 4 「最大の回文積」 †  
> 左右どちらから読んでも同じ値になる数を回文数という. 2桁の数の積で表される回文数のうち, 最大のものは 9009 = 91 × 99 である.  
>   
> では, 3桁の数の積で表される回文数の最大値を求めよ.  
  
CodeSize: 677 byte  
  
[Code](https://github.com/owlworks/project_euler/blob/master/codes/004.rb "Code")  
  

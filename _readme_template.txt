\# オイラープロジェクトをRubyでプログラミング演習

\#\# 問題文について

以下のページから翻訳された問題文を引用する。有志に感謝。  
http://odz.sakura.ne.jp/projecteuler/  

\#\# コーディングについて

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

#{codes}

Progress: #{project_progress_str}
Pending: #{skip_problems}

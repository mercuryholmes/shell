
## 説明
プログレスバーを表示するコマンドです。

* bash
```bash
I=$(printf "Loading[%10s]"); echo "$I"; for i in {1..10}; do I=${I/ /■}; echo "$I"; sleep 1; done; echo "Load complate";
```

* Perl
```Perl
perl -e 'print my $txt = "Loading[".(" " x 10)."]\n"; for(1..10){ $txt =~ s/\s/■/; print $txt; sleep 1; } print "Load complate\n"; ';
```

bash 参考記事
* ``` $() ```
https://qiita.com/mashumashu/items/bbc3a79bc779fe8c4f99
* ``` printf ```
https://atmarkit.itmedia.co.jp/ait/articles/1907/05/news012.html
* ``` echo "$I"; ```
https://maku77.github.io/linux/io/echo-spaces.html
* ``` ${I/ /■} ```
https://qiita.com/aosho235/items/c36568830a8d47288284
# Perlの環境構築

#### plenvのインストール

* plenv

```shell
git clone git://github.com/tokuhirom/plenv.git ~/.plenv
```

* perl-build

```shell
git clone git://github.com/tokuhirom/Perl-Build.git ~/.plenv/plugins/perl-build/
```

#### plenvのpathを通す

```shell
echo '# plenv' >> ~/.bash_profile
echo 'export PATH="$HOME/.plenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(plenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
```

#### 指定のバージョンをインストール

* インストール可能なバージョンを確認

```shell
plenv install -l
```

* インストール

```shell
plenv install $PERL_VERSION
plenv rehash
```

* 確認

```shell
plenv versions
```

#### グローバルに設定

* 切り替え

```shell
plenv global $PERL_VERSION
plenv versions
perl -v
```

#### ディレクトリ個別でバージョン切り替えする場合

* 作業用ディレクトリで実行

```shell
plenv local $PERL_VERSION
plenv versions
perl -v
```

#### cpanmのインストール

```shell
plenv install-cpanm
plenv rehash
```

#### cartonのインストール

```shell
plenv exec cpanm Carton
plenv rehash
```

* 作業用ディレクトリでcpanfileを作成してインストール

```shell
plenv exec carton install
```

* 実行方法

```shell
carton exec
or
plenv exec carton exec
```

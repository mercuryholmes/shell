# Rubyの環境構築

#### rbenvのインストール

* rbenv

```shell
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
```

* ruby-build

```shell
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
```

#### rbenvのpathを通す

```shell
echo '# rbenv' >> ~/.bash_profile
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
```

#### 指定のバージョンをインストール

* インストール可能なバージョンを確認

```shell
rbenv install -l
```

* インストール

```shell
rbenv install $RUBY_VERSION
rbenv rehash
```

* 確認

```shell
rbenv versions
```

#### グローバルに設定

* 切り替え

```shell
rbenv global $RUBY_VERSION
rbenv versions
ruby -v
```

#### ディレクトリ個別でバージョン切り替えする場合

* 作業用ディレクトリで実行

```shell
ruby local $RUBY_VERSION
rbenv versions
ruby -v
```

#### bundlerのインストール

```shell
rbenv exec gem install bundler
rbenv rehash
```

#### bundlerの設定

```shell
rbenv exec bundle init
rbenv exec bundle config
rbenv exec bundle config set --local path 'vendor/bundle'
```

* Gemのインストール方法

```shell
bundle install
or
rbenv exec bundle install 
```

* 実行方法

```shell
bundle exec ruby
or
rbenv bundle exec ruby
```

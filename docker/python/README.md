# Pythonの環境構築

#### pyenvのインストール

* pyenv

```shell
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
```

#### pyenvのpathを通す

```shell
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init --path)"' >> ~/.bash_profile
source ~/.bash_profile
```

#### 指定のバージョンをインストール

* インストール可能なバージョンを確認

```shell
pyenv install -l
```

* インストール

```shell
pyenv install $PYTHON_VERSION
pyenv rehash
```

* 確認

```shell
pyenv versions
```

#### グローバルに設定

* 切り替え

```shell
pyenv global $PYTHON_VERSION
pyenv versions
python -v
```

#### ディレクトリ個別でバージョン切り替えする場合

* 作業用ディレクトリで実行

```shell
pyenv local $PYTHON_VERSION
pyenv versions
python -v
```

### 仮想環境を作成

* 作業用ディレクトリで実行

```shell
python -m venv .venv
```

* 仮想環境に入る

```shell
source .venv/bin/activate
```

* requirements.txtを作成して仮想環境でインストール

```shell
pip install -r requirements.txt
```

* 仮想環境を抜け出す

```shell
deactivate
```
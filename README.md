# README

新規プロジェクトのテンプレートです。
必須かもしれない Gem を初期から含んだプロジェクトです。

各プロジェクトで使用する前にプロジェクトの名前を変更してください。
以下参照。
https://qiita.com/colorrabbit/items/11e16f323ed36a0cb7ab

依存ライブラリのインストール
```bash
$ bundle install --path vendor/bundle --jobs=4

# 設定の確認
$ cat .bundle/config

# 使用されていない Gem を消す
$ bundle clean
```

初期設定
```bash
# pre-commit ファイル生成
$ bundle exec pre-commit install

# .git/hooks/pre-commit の23行目を修正する
then cmd="rbenv exec ruby"              <= 修正前
then cmd="rbenv exec bundle exec ruby"  <= 修正後

# rubocop と scss-lint をパスしないと git commit 不可にする
$ git config pre-commit.checks "[rubocop, scss_lint]"

# db の作成
$ bundle exec rails db:setup
```

リジポ兄ィ〜
```bash
$ bundle exec ridgepole -c config/database.yml -E development --apply -f db/Schemafile

# もしくは以下のどちらかでもできる
$ sh scripts/migrate.sh
$ bash scripts/migrate.sh
```

解析ツール
```bash
# ruby
$ bundle exec rubocop
$ bundle exec rails_best_practices

# ruby 高速化サジェスチョン
$ bundle exec fasterer

# slim
$ bundle exec slim-lint app/views/

# scss
$ bundle exec scss-lint

# セキュリティ
$ bundle exec brakeman
```

ローカルの master と develop を除くマージ済みブランチを一括削除する
```bash
$ git branch --merged | grep -vE '^\*|master$|develop$' | xargs -I % git branch -D %
```

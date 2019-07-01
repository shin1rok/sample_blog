# README

Sample Blog (https://shin1rok-blog-app.herokuapp.com/)

個人の学習用として作成しているものなので、ブログサービスとしての利用はしないでください。(そもそも機能が足りなすぎて使えないとは思いますが。)

適当に触ってみるなどは構いません。
フィードバック歓迎です。

データは定期的に削除します。

## バージョン
- Ruby: 2.6.3
- Rails: 5.2.3
- PostgreSQL: 11.3

## 環境構築
### ローカル
```
bundle install --path vendor/bundle
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed

# テスト, Linter
bundle exec rspec
bundle exec rubocop
```

### Docker
```
# イメージ作成
docker-compose build

# DBセットアップ
docker-compose run --rm web bin/rails db:create
docker-compose run --rm web bin/rails db:migrate
docker-compose run --rm web bin/rails db:seed

# 起動、停止
docker-compose up
docker-compose down

# Gem追加、更新
docker-compose run --rm web bundle install

# テスト, Linter
docker-compose run --rm web rspec
docker-compose run --rm web rubocop
```

## デプロイ
### 初回
```
heroku login
heroku create shin1rok-blog-app
```

### 2回目以降
```
git push heroku master
heroku run rails db:migrate
```

## 実装方針
### PostモデルとDraftの関係
- Postが実態でDraftはPostの状態である


# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## 実装方針
### PostモデルとDraftの関係
- Postが実態でDraftはPostの状態である

## Dockerコマンド
```
# イメージ作成
docker-compose build

# DBセットアップ
docker-compose run --rm web bin/rails db:create
docker-compose run --rm web bin/rails db:migrate

# 起動、停止
docker-compose up
docker-compose down

# Gem追加、更新
docker-compose run --rm web bundle install

# RuboCop
docker-compose run --rm web rubocop
```

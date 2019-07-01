# README

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

## 実装方針
### PostモデルとDraftの関係
- Postが実態でDraftはPostの状態である


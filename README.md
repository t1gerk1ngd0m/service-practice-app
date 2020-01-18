# README

新規Railsプロジェクト作成用アプリケーション
新たにRailsアプリを作成する際、環境構築などを行う手間を省くため、このリポジトリから`git clone`してapp名を変更すればいいだけにしました。

## 環境
- Ruby 2.6.5
- Ruby on Rails 6.0.0
- PostgreSQL 11.5

## 使い方
1. ローカルのターミナルにて`git clone https://github.com/t1gerk1ngd0m/service_practice_app.git`
2. `bundle exec bundle install`
3. `rake db:create` `rails s`を行い動くか確認する。
4. `rake db:drop`で旧名のDBを落とす。
5. `rails g rename:into New-Name`でapp名変更。下記のような結果を確認。
```
Search and replace module in...
        gsub  config.ru
        gsub  Gemfile
        gsub  Gemfile.lock
        gsub  Rakefile
        gsub  README.rdoc
        gsub  config/application.rb
        gsub  config/boot.rb
        gsub  config/environment.rb
        gsub  config/environments/development.rb
        gsub  config/environments/production.rb
        gsub  config/environments/test.rb
        gsub  config/initializers/assets.rb
        gsub  config/initializers/backtrace_silencers.rb
        gsub  config/initializers/config.rb
        gsub  config/initializers/cookies_serializer.rb
        gsub  config/initializers/filter_parameter_logging.rb
        gsub  config/initializers/inflections.rb
        gsub  config/initializers/mime_types.rb
        gsub  config/initializers/omniauth.rb
        gsub  config/initializers/session_store.rb
        gsub  config/initializers/wrap_parameters.rb
        gsub  config/routes.rb
        gsub  config/schedule.rb
        gsub  config/initializers/session_store.rb
        gsub  config/database.yml
Renaming references...
Renaming directory...Done!
New application path is 'PATH_To/NEW_APP'
```
6. `cd ../New-Name`で新しいappに移動。
7. `rake db:create` `rails s`で新しいapp名で動作するか確認
8. 以上を完了して開発開始。

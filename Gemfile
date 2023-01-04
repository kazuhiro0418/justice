source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.6'

gem 'rails',            '~> 5.2', '>= 5.2.4.1'
gem 'mysql2',           '~> 0.5.3'
gem 'puma',             '~> 4.3', '>= 4.3.1'
gem 'bootstrap',        '~> 4.4', '>= 4.4.1'
gem 'sass-rails',       '~> 6.0'
gem 'slim-rails',       '~> 3.2'
gem 'uglifier',         '~> 4.2'
gem 'mini_racer',       '~> 0.4.0'
gem 'turbolinks',       '~> 5.2', '>= 5.2.1'
gem 'jbuilder',         '~> 2.9', '>= 2.9.1'
gem 'jquery-rails',     '~> 4.3', '>= 4.3.5'
gem 'ridgepole',        '~> 0.8.5'
gem 'devise',           '~> 4.7', '>= 4.7.1'
gem 'kaminari',         '~> 1.1', '>= 1.1.1'
gem 'ransack',          '~> 2.3'
gem 'active_decorator', '~> 1.3', '>= 1.3.2'


group :development, :test do
  gem 'awesome_print'
  gem 'hirb'
  gem 'pry-rails'
  gem 'pry-byebug'
end

group :development do
  gem 'web-console'
  gem 'listen'
  # gem 'spring'
  # gem 'spring-watcher-listen'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'letter_opener_web'
  # コーディング規約の準拠チェック
  gem 'rubocop-rails'
  gem 'rubocop',   require: false
  gem 'scss_lint', require: false
  gem 'slim_lint'
  gem 'fasterer'
  gem 'brakeman'
  gem 'rails_best_practices'
  gem 'pre-commit'
  # readline が 8.0 になったらこれないと動かない
  gem 'rb-readline'
  # デバッグ用
  gem 'ruby-debug-ide'
  gem 'debase'
  gem 'rack-mini-profiler', require: false
end

group :test do
  gem 'factory_bot_rails'
  gem 'fuubar'
  gem 'rspec-rails', '~> 3.9'
end

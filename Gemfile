source 'http://rubygems.org'

gem 'sinatra'
gem 'sinatra-cross_origin'
gem 'activerecord', '~> 6.0', '>= 6.0.3.2', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'fast_jsonapi'
gem 'pg', '~> 0.20.0'
gem 'thin'
gem 'bcrypt'
gem 'require_all'

group :development do
  gem 'byebug'
  gem 'dotenv'
  gem 'pry'
  gem 'tux'
  gem 'shotgun'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end

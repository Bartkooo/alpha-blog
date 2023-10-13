source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "puma", "~> 5.6"
gem "importmap-rails"
gem 'turbo-rails', '~> 1.4'
gem "stimulus-rails"
gem "jbuilder"
gem 'rouge'
gem 'sassc-rails'
gem 'bootstrap', '~> 5.2.0'
gem 'jquery-rails'

gem 'bcrypt', '~> 3.1', '>= 3.1.18'
gem 'will_paginate', '~> 3.3', '>= 3.3.1'
gem 'byebug', '~> 11.1', '>= 11.1.3'

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "sqlite3", "~> 1.4"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

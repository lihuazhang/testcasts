require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']
source 'http://ruby.taobao.org'

gem 'rails', '4.0.0'
gem 'protected_attributes'
gem 'activerecord-deprecated_finders'
gem 'journey'
gem 'mysql2'

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier', '~> 1.2.4'
  gem 'execjs'
  gem 'therubyracer', :platforms => :ruby
end

gem 'jquery-rails'
gem "omniauth", ">= 1.1.0"
gem "omniauth-github"
gem "bootstrap-sass", ">= 2.0.3"
gem "airbrake"
gem "puma"
gem "coderay"
gem "kaminari"
gem "redcarpet"
gem 'omniauth-weibo-oauth2'

# Deploy with Capistrano
gem 'capistrano'
gem 'capistrano-ext'

# File Uploading
gem 'carrierwave'

# Comment Tree Structure
gem 'ancestry'
gem 'gravatar_image_tag'

group :development, :test do
  gem "rspec-rails", ">= 2.10.1"
  gem "factory_girl_rails", ">= 3.3.0"
  gem "shoulda-matchers"
  gem "rspec-instafail"
  gem "capybara"
end

group :development do
  gem "debugger"
  gem "guard", ">= 0.6.2"
  gem "guard-bundler", ">= 0.1.3"
  gem "guard-livereload", ">= 0.3.0"
  gem "guard-rspec", ">= 0.4.3"

  #case HOST_OS
  #  when /darwin/i
      gem 'rb-fsevent'
      gem 'growl'
  #  when /linux/i
  #    gem 'libnotify'
  #    gem 'rb-inotify'
  #  when /mswin|windows/i
  #    gem 'rb-fchange'
  #    gem 'win32console'
  #    gem 'rb-notifu'
  # end
  gem "annotate", '~> 2.4.1.beta1'
  gem 'guard-annotate'
  gem "rails_best_practices"
  gem 'foreman'
end

group :test do
  gem "email_spec", ">= 1.2.1"
  gem 'simplecov', :require => false
  gem 'turn', :require => false
end

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Jquery Date
gem 'jquery-ui-rails'
# Ruby VS Code
gem 'ruby-debug-ide', '~> 0.6.0'
gem 'debase', '~> 0.2.2.beta10'
# Devise - Autenticação
gem 'devise'
# Devise i18n
gem 'devise-i18n'
# Enum_help
gem 'enum_help'
# Foreman
gem 'foreman'
# Pudit - Autenticação
gem 'pundit'
# Money-Rails
gem 'money-rails'
# PaperClip
gem 'paperclip', git: 'https://github.com/thoughtbot/paperclip.git'
# gem AWS
gem 'aws-sdk-rails'
gem 'aws-sdk', '~> 3'
gem 'aws-sdk-s3', '~> 1'
gem 'aws-sdk-ec2', '~> 1'
# i18n
gem 'rails-i18n', github: 'svenfuchs/rails-i18n', branch: 'master'
# Bootsrap SB Admin
gem 'bootstrap_sb_admin_base_v2'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Rails ActionViewr
gem 'actionview'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Redcarpet, markdown
gem 'redcarpet'
# FriendlyId is the “Swiss Army bulldozer” of slugging and permalink plugins for ActiveRecord. 
# It allows you to create pretty URL’s and work with human-friendly strings as if they were numeric ids for ActiveRecord models.
gem 'friendly_id', '~> 5.1.0'
# Wiselinks
gem 'wiselinks'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

source 'https://rails-assets.org' do
  # Bootsrap
  gem 'rails-assets-bootstrap', '~> 4.0.0.beta'
  gem 'popper_js', '~> 1.11'
  # Bootsrap Notify
  gem 'rails-assets-bootstrap.growl'
  # BootboxJs
  gem 'rails-assets-bootbox'
  # A cross-browser library of CSS animations. As easy to use as an easy thing
  gem 'rails-assets-animate-css'
  # A markdown parser built for speed
  gem 'rails-assets-marked'
end

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# JQuery
gem 'jquery-rails'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Better Errors
  gem 'better_errors'
  gem "binding_of_caller"
  # Rails ERD
  gem 'rails-erd'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Gem FAKER
  gem 'faker'
  # Markdown Lorem Ipsum
  gem 'doctor_ipsum'
  # Gem LeroLero
  gem 'lerolero_generator'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Mailcatcher
  gem 'mailcatcher'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.3", ">= 7.1.3.2"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Vite -> Webpacker
gem 'vite_rails'

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 6.0"

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# ENV variables
gem "dotenv"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'faker'
  gem 'factory_bot_rails'
end

group :development do
  gem 'guard-rspec', require: false
  gem "rubocop"
  gem "rubocop-factory_bot"
  gem "rubocop-rails"
  gem "rubocop-rspec"
  gem "rubocop-rspec_rails"
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner'
  gem "rspec-rails"
  gem 'rspec-watcher'
  gem 'shoulda-matchers', require: false
  gem 'simplecov'
end

source 'http://rubygems.org'

gem 'rails', '4.0.0'
gem 'kaminari'
gem 'faker'
gem "paperclip", "~> 3.0"
gem 'high_voltage'
gem 'bourbon'
gem 'neat'

group :assets do
  gem 'coffee-rails'
  gem 'sass-rails',   '~> 4.0.0'
	gem 'bourbon'
  gem 'neat'
end

group :development do
  gem 'pry'
end

gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'

gem 'turbolinks'

gem 'jbuilder', '~> 1.2'

group :doc do
  gem 'sdoc', require: false
end

group :test, :development do
  gem 'sqlite3'
  gem 'rspec-rails'
	gem 'capybara'
	gem 'spork-rails', github: 'sporkrb/spork-rails'
	gem 'guard-spork', github: 'guard/guard-spork'
	gem 'rb-fsevent'
	gem 'simplecov'
end

group :test do
	gem 'factory_girl_rails'
	gem 'shoulda-matchers'
end

group :production do
  gem 'rails_12factor'
	gem 'pg'
end

ruby "2.0.0"

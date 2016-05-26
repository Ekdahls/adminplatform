source 'https://rubygems.org'

#Gemfiles is libraries for functions used in Ruby on Rails.

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'


gem 'date_validator', '~> 0.9.0'

#simple form
gem 'simple_form', '~> 3.2', '>= 3.2.1'

gem 'form'

gem 'bootstrap_form'

#datepicker bootstrap gem, easy calendar for datepicking
gem 'bootstrap-datepicker-rails'

#when app is in produciton ex on Heroku, postgres 'pg' database need to be used instead of sqlite3
group :production do
	gem 'pg'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes


# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# gem 'capistrano-rails', group: :development
gem 'responders', '~> 2.1', '>= 2.1.2'
gem 'kaminari', '~> 0.16.3'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'ransack'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end


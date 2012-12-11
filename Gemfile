source 'https://rubygems.org'

gem 'rails', '3.2.9'

# Database
gem 'sqlite3'

# Twitter Bootstrap
gem 'twitter-bootstrap-rails'

# Font Awesome
gem 'font-awesome-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'backbone-rails'
gem 'handlebars_assets'

group :development do
  gem 'thin'
end

group :development, :test do
  gem 'minitest'
  gem 'turn', :require => false # for prettier tests
  gem 'pry' # for debugging
end

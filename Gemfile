source 'http://rubygems.org'

gem 'rails', "~> 3.1.0"

gem 'mysql2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem "compass", "~> 0.12.alpha.0"
end

# Javascripts runtime
gem 'therubyracer'

gem 'jquery-rails'

# paginacion
gem 'kaminari'
# busqueda
gem "meta_search","~> 1.1.x"
# formularios
gem 'formtastic', '~> 2.0.0.rc5'
# tablas
gem "tabletastic"

# Use thin as the web server
gem 'thin'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
gem 'pry', :group => :development

group :development, :test do
  gem 'rspec-rails', '~> 2.5'
  gem 'factory_girl_rails'
  gem 'forgery'
  gem 'guard-rspec'
  gem 'rb-inotify'
  gem 'libnotify'
#  gem 'guard-livereload'
end

group :test do
  gem 'capybara'
  gem 'launchy'
  gem 'shoulda-matchers'
end

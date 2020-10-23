require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']

source 'https://rubygems.org'

ruby '2.3.4'

# framework
gem 'rails',                    '~> 4.0.13'

# web server
gem 'puma',                     '~> 2.14.0'

# front-end
gem 'bluecloth',                '~> 2.2.0'
gem 'compass-rails'
gem 'haml-rails',               '~> 0.3.4'
gem 'sass-rails',             '~> 4.0.5'
gem 'bootstrap-sass',         '~> 2.3.2.0'
gem 'uglifier',               '~> 1.3.0'
gem 'jquery-rails',             '~> 2.1.2'

# back-end
gem 'pg',                       '~> 0.18.4'
gem 'rack-rewrite',             '~> 1.3.3'
gem 'rack-timeout',             '~> 0.0.3'
gem 'rails_12factor',           '~> 0.0.3'
gem 'sentry-raven',             '~> 0.15.6'


group :development do
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'sqlite3', '~> 1.3.9'
end

group :development, :test do
  gem 'awesome_print'
  gem 'byebug'
  gem 'faker'
  gem 'factory_girl_rails',     '>= 3.3.0'
  gem 'rspec-rails',            '>= 3.2'
end

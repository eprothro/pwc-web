require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']

source 'https://rubygems.org'

# see .tool-versions
ruby '2.4.10'

# framework
gem 'rails',                    '~> 4.2.11'

# web server
gem 'puma',                     '~> 5.3.1'

# front-end
gem 'bluecloth',                '~> 2.2.0'
gem 'compass-rails',            '2.0.4'
gem 'haml-rails',               '~> 0.9.0'
gem 'sass-rails',               '~> 5.0.1'
gem 'bootstrap-sass',           '~> 2.3.2.0'
gem 'uglifier',                 '~> 1.3.0'
gem 'jquery-rails',             '~> 3.1.5'

# back-end
gem 'pg',                       '~> 0.18.4'
gem 'rack-rewrite',             '~> 1.3.3'
gem 'rack-timeout',             '~> 0.0.3'
gem 'rails_12factor',           '~> 0.0.3'
gem 'sentry-raven',             '~> 0.15.6'


group :development do
  gem 'better_errors'
  gem 'quiet_assets'
end

group :development, :test do
  # gem 'awesome_print'
  gem 'byebug'
  # gem 'faker'
  # gem 'factory_girl_rails',     '>= 3.3.0'
  # gem 'rspec-rails',            '>= 3.2'
end

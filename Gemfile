source 'https://rubygems.org'

# Specify your gem's dependencies in conjur.gemspec
gemspec

gem 'conjur-api', git: 'https://github.com/inscitiv/api-ruby.git', branch: 'master'

gem 'thin'
gem 'eventmachine'
gem 'em-net-http'

group :test, :development do
  gem 'pry'
  gem 'conjur-asset-environment-api'
  gem 'conjur-asset-layer-api'
end

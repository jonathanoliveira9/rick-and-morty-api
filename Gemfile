source 'https://rubygems.org'

ruby '~> 2.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.8'

# Use postgres as the database for Active Record
gem 'pg', '0.20.0'

gem 'mongo', '2.9.0'
gem 'mongoid', '5.2.1'
gem 'mongoid_paranoia', '0.2.1'

gem 'active_mongoid', '0.1.4'

# Geração dos relatórios em PDF
gem 'pdfkit', '0.8.2'
gem 'wkhtmltopdf-binary', '0.12.4'

# Database replication
gem 'ar-octopus', '0.9.2'

# Correção das mensagens de serialize boolean
gem 'thor', '0.19.1'

# gem 'jwt', '2.1.0'

# Database tables auditing
gem 'paper_trail', '8.1.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# AMS for model serialization, use from RubyGems, don't upgrade to 0.9.x
gem 'active_model_serializers', '0.9.3'

# gem 'active_model_serializers', '~> 0.10.0.rc3'
gem 'activerecord-postgis-adapter', '3.1.5'

# Use cancan for ACL
gem 'cancancan', '2.1.3'

# Use paranoia for soft delete
gem 'paranoia', '2.4.0'

# Use will_paginate for pagination
gem 'will_paginate', '3.1.6'

# Validations
gem 'cnpj_validator', '0.3.2'
gem 'cpf_validator', '0.2.1'
gem 'email_validator', '1.6.0', require: 'email_validator/strict'
gem 'nis_validator', '0.0.1'
gem 'validates_timeliness', '4.0.2'

# Enumerate
gem 'enumerate_it', '1.6.1'

# Image upload
gem 'aws-sdk', '2.11.11'
gem 'mini_magick', '4.8.0'
gem 'paperclip', '5.1.0'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Active Job with redis
gem 'resque', '1.27.4'

# gem 'resque-scheduler'
gem 'redis', '~> 3.2'

# HTML encoding/decoding
gem 'htmlentities', '4.3.4'

# Api request library
gem 'httparty', '0.16.0'

# Scheduled tasks
gem 'clockwork', '2.0.2', require: false

# Daemonizes clockwork
gem 'daemons', '1.2.6'

# Operations gem
gem 'composable_operations', '0.10.1'

# Cache
gem 'actionpack-action_caching', '1.2.0'

gem 'rack-cors', '1.0.2', require: 'rack/cors'

gem 'exception_notification', '4.2.2'

group :support, :production do
  gem 'newrelic_rpm', '6.9.0.363'
end

group :development do
  gem 'spring', '2.0.2'

  gem 'capistrano', '3.12.0', require: false
  gem 'capistrano-rails', '1.4.0', require: false
end

group :development, :test do
  # Linter
  gem 'rubocop', '0.72.0'

  # Lib de testes
  gem 'rspec-rails', '~> 3.8'

  # Extensões do faker
  gem 'cpf_faker', '1.3.0'
  gem 'faker', '1.8.7'
  gem 'nis_faker', '0.0.1'

  # Lib para criação de registros para testes
  gem 'factory_bot_rails', '5.0.2'
end

group :test do
  gem 'fakeredis', '0.7.0'
  gem 'minispec-rails', '0.3.0'
  gem 'minitest', '5.11.3'
  gem 'minitest-reporters', '1.1.19', group: :test
  gem 'mocha', '1.9.0'
  gem 'shoulda', '2.11.3'
  gem 'shoulda-matchers', '3.1.2', require: false
  gem 'simplecov', '0.15.1', require: false
  gem 'test-unit', '3.3.3'
end

# Engines
gem 'api_auth',          path: 'engines/api_auth'
gem 'api_base',          path: 'engines/api_base'
gem 'employee_benefits', path: 'engines/marketplace/employee_benefits'
gem 'ftp_integration',   path: 'engines/marketplace/ftp_integration'
gem 'location',          path: 'engines/location'

gem 'rqrcode', '0.10.1'

gem 'digest-crc', '0.4.1', require: 'digest/crc16_ccitt'

#  Forçando a versão do json. Nosso código não é compatível com a versão ~> 2
gem 'json', '1.8.6'

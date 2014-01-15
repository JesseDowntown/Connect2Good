source 'https://rubygems.org'

# specify ruby version so heroku doesn't
# nag you during a build
ruby '2.0.0'

gem 'rails', '~> 4.0'

gem 'devise'
gem 'devise-async'
gem 'haml-rails'
gem 'jquery-rails'
gem 'js-routes'
gem 'faker', require: false
gem 'fog'
gem 'machinist', require: false
gem 'mini_magick'
gem 'pg'
gem 'pg_search'
gem 'rails_admin',  '~> 0.5.0'
gem 'rolify'
gem 'sidekiq'
gem 'simple_form', '~> 3.0.0.rc'
gem 'will_paginate'
group :production, :staging do
  gem 'rails_12factor'
end

group :assets do
  gem 'coffee-rails', '~> 4.0'
  gem 'font-awesome-rails'
  gem 'html5shiv-rails'
  gem 'jquery-ui-rails'
  gem 'sass-rails',   '~> 4.0'
  gem 'uglifier', '>= 1.0.3'
  gem 'foundation-rails'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman',      require: false
  gem 'guard-bundler'
  gem 'guard-cucumber'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'guard-sidekiq'
  gem 'hirb'
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'terminal-notifier-guard', require: RUBY_PLATFORM.include?('darwin') && 'terminal-notifier-guard'
end

group :development, :test do
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'cucumber'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'timecop'
end

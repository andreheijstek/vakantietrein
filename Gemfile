source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false
# Use bootstrap als front-end library
gem 'bootstrap'
# CSS bundling is required when using bootstrap
gem "cssbundling-rails"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# use postgres as database
gem "pg"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"
# Pundit for authorization
gem "pundit"
# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.0"
# Use Sass to process CSS
gem "sassc-rails"
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
# Warden
gem "warden"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  # Use factory bot to manufacture objects, mostly for testing
  gem "factory_bot"
  # Use Faker to fake test data
  gem "faker"
  # Use Rspec for testing
  gem "rspec-rails"
  # Use selenium to control web pages for testing
  gem "selenium-webdriver"
  # Use SitePrism as page object model library for testing
  gem "site_prism"
end

group :development do
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler"
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem "spring"
end


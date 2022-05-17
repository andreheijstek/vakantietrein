# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'
# Add a comment summarizing the current schema
gem 'annotate'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false
# Use bootstrap als front-end library
gem 'bootstrap'
# CSS bundling is required when using bootstrap
gem 'cssbundling-rails'
gem 'foreman'
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'
# use postgres as database
gem 'pg'
# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'
# Pundit for authorization
gem 'pundit'
# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.0'
# Use Rubocop to check static code quality
gem 'rubocop'
gem 'rubocop-performance'
gem 'rubocop-rails'
gem 'rubocop-rspec'

# Use slim as template language instead of ERB
gem 'slim'
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
# Warden
gem 'warden'

group :development, :test do
  # Great Ruby debugging companion: pretty print Ruby objects to visualize their structure.
  # Supports custom object formatting via plugins
  gem 'awesome_print'
  # A Ruby backtrace nicely printed.
  gem 'backtrace'
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  # Use factory bot to manufacture objects, mostly for testing
  gem 'factory_bot'
  # Use Faker to fake test data
  gem 'faker'
  # performance monitoring
  gem 'flamegraph'
  # performance monitoring
  gem 'memory_profiler'
  # Use Pry for debugging
  gem 'pry'
  # performance monitoring
  gem 'rack-mini-profiler'
  # Use Rspec for testing
  gem 'rspec-rails'
  # Use selenium to control web pages for testing
  gem 'site_prism'
  # performance monitoring
  gem 'stackprof'
  # Use webdriver instead of selenium or chrome webdriver
  gem 'webdrivers'
end

group :development do
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem 'rack-mini-profiler'
  # rails_best_practices is a code metric tool to check the quality of Rails code.
  gem "rails_best_practices"
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem 'spring'
end

# frozen_string_literal: true

# task to run tests

desc "run rubocop"
task :rubocop do
  system "rubocop"
end

desc "eslint"
task :eslint do
  system "npx eslint ."
end

desc "lint all source code"
task :lint => [:rubocop, :eslint]

desc "rspec"
task :rspec do
  system "bundle exec rspec spec/models"
end

desc "jest"
task :jest do
  system "jest"
end

desc "jasmine"
task :jasmine do
  system "yarn tsc app/javascript/**/*.ts"
  system "yarn test"
end

desc "unit test all source code"
task :unit_test => [:rspec, :jest]

desc "run a localhost server"
task :run do
  system "node_modules/http-server/bin/http-server src"
end

desc "run all tests"
task :test => [:rspec, :jasmine]

desc "check all code, static and dynamic"
task :check => [:lint, :unit_test]

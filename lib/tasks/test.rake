# frozen_string_literal: true

# task to run tests

desc "run rubocop"
task :rubocop do
  system "rubocop"
end

desc "rspec"
task :rspec do
  system "bundle exec rspec spec/models"
end

desc "jest"
task :jest do
  system "npm test"
end
desc "eslint"
task :eslint do
  system "npx eslint ."
end

desc "run a localhost server"
task :run do
  system "node_modules/http-server/bin/http-server src"
end

desc "test"
task :test do
  Rake::Task["rubocop"].execute
  Rake::Task["eslint"].execute
  Rake::Task["rspec"].execute
  Rake::Task["jest"].execute
end

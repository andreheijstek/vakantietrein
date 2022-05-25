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

desc "eslint"
task :eslint do
  system "npx eslint ."
end

desc "test"
task :test do
  Rake::Task["rubocop"].execute
  Rake::Task["eslint"].execute
  Rake::Task["rspec"].execute
end

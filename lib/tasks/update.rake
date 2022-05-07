# frozen_string_literal: true

# regular update/cleanup tasks that shall be run every day to keep the environment
# up to date

desc "update bundle"
task :bundle_update do
  system "bundle update"
end

desc "upgrade brew"
task :brew_upgrade do
  system "brew upgrade"
end

# desc "give chromedriver the right permissions"
# task :chromedriver_permissions do
#   dir1 = `which chromedriver`
#   puts dir1
  # system "xattr -d com.apple.quarantine #{chromedriver}"
# end

desc "update/cleanup environment"
task :update_env do
  Rake::Task["bundle_update"].execute
  Rake::Task["brew_upgrade"].execute
end

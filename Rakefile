require "bundler/setup"

APP_RAKEFILE = File.expand_path("spec/dummy/Rakefile", __dir__)
load "rails/tasks/engine.rake"

load "rails/tasks/statistics.rake"

require "bundler/gem_tasks"

# Silence that annoying AF first line of `rake spec` output.
# https://stackoverflow.com/a/20846681
if defined? RSpec
  task('app:spec').clear
  RSpec::Core::RakeTask.new('app:spec') do |t|
    t.verbose = false
  end
end

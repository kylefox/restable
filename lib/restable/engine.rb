module Restable
  class Engine < ::Rails::Engine
    isolate_namespace Restable

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end

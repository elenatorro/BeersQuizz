require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module BeersQuizzApp
  class Application < Rails::Application
    config.assets.paths << Rails.root.join("vendor","assets","bower_components")
    config.assets.precompile << %r(.*.(?:eot|svg|ttf|woff)$)
  end
end

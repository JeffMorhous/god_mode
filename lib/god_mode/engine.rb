module GodMode
  class Engine < ::Rails::Engine
    isolate_namespace GodMode
  #   initializer "god_mode.assets.precompile" do |app|
  #     app.config.assets.precompile += %w( application.js application.css )
  #   end
  end
end

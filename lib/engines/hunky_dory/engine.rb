require 'bootstrap-sass'

module HunkyDory
  class Engine < Rails::Engine
    initializer :append_migrations do |app|
      unless app.root.to_s.match(root.to_s)
        config.paths['db/migrate'].expanded.each do |expand_path|
          app.config.paths['db/migrate'] << expand_path
        end
      end
    end
  end
end

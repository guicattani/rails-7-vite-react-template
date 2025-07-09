require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "rails/test_unit/railtie"
# Pick the frameworks you want:
# require "active_storage/engine"
# require "action_mailer/railtie"
# require "action_mailbox/engine"

Bundler.require(*Rails.groups)

module ChangeMe
  class Application < Rails::Application
    config.load_defaults 8.0
    config.generators do |g|
      g.test_framework :rspec
    end
  end
end

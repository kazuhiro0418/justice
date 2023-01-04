require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Study
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.paths.add 'lib', eager_load: true
    config.autoload_paths += %W[#{config.root}/lib]
    config.active_record.default_timezone = :utc
    config.time_zone = 'UTC'
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config/locales/**/*.{rb,yml}').to_s]

    config.generators do |g|
      g.assets false
      g.helper false
      g.template_engine :slim
      g.test_framework false
    end

    config.action_view.field_error_proc = proc { |html_tag, _instance| html_tag }
  end
end

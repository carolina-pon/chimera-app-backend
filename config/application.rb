require_relative "boot"

require "rails/all"
Bundler.require(*Rails.groups)

module ChimeraAppFrontend
  class Application < Rails::Application
    config.load_defaults 7.0
    config.api_only = true
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.i18n.default_locale = :ja
    # i18nの複数ロケールファイルが読み込まれるようパスを通す
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.generators do |g|
      g.test_framework false # テストを自動生成しない
    end
  end
end

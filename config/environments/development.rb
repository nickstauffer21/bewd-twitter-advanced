Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => 'public, max-age=172800'
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  config.active_storage.service = :amazon

  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false


  config.active_support.deprecation = :log

 
  config.active_record.migration_error = :page_load

  config.assets.debug = true


  config.assets.quiet = true


  config.file_watcher = ActiveSupport::EventedFileUpdateChecker


  config.generators do |g|
    g.test_framework nil
  end
end

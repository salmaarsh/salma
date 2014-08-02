Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
 # config.action_mailer.raise_delivery_errors = false


  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.action_mailer.default_url_options = { host: 'localhost',port: '3000' }
  config.assets.debug = true
  config.assets.raise_runtime_errors = true

#new code
config.action_mailer.delivery_method = :smtp
config.action_mailer.perform_deliveries = true
config.action_mailer.raise_delivery_errors = true
config.action_mailer.default :charset => "utf-8"

config.action_mailer.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: "gmail.com",
  authentication: "plain",
  enable_starttls_auto: true,
  user_name: "salma@clicklabs.in",
  password: "lovefriends456"
}
end

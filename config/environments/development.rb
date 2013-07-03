# -*- encoding : utf-8 -*-
Rts2Diplom::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.eager_load = false

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models


  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)


  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {:address => 'mail.msiu.ru', :post => 25, :domain => 'msiu.ru', :authentication => :plain}
    config.action_mailer.default_url_options = { :host => "localhost:3000", :only_path => false }
end

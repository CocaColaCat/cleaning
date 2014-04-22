Cleaning::Application.configure do
  config.cache_classes = false

  config.whiny_nils = true

  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  config.action_mailer.raise_delivery_errors = false

  config.active_support.deprecation = :log

  config.action_dispatch.best_standards_support = :builtin

  config.assets.compress = false

  config.assets.debug = true
  
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_setting = {
    address: "smtp.gamil.com",
    port: 587,
    user_name: "jianping.zhou.1986@gmail.com",
    password: ""
  }

end

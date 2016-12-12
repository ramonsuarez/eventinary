Devise.setup do |config|

  config.secret_key = '244c19e5c4c2f02440f114edb52d9b15c7b640a05c6c6595b692503958762a13f0381943f8069edee9865f6a6c69a7d898f52f08a8331de781a65e825d16c5d3'

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'


  require 'devise/orm/active_record'


  config.case_insensitive_keys = [:email]


  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 11

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

  config.omniauth :facebook, ENV["FB_ID"], ENV["FB_SECRET"],
    scope: 'email',
    info_fields: 'email, first_name, last_name',
    image_size: 'square',  # 50x50, guaranteed ratio
    secure_image_url: true
end

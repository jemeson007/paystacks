require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Fn
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    ActionMailer::Base.smtp_settings = {
    	# :address => 'smtp.gmail.com',
    	# :domain => 'mail.google.com',
    	# :port => 587,
    	# :user_name  => 'emesonjonah@gmail.com',
    	# :password => "$parrow$12@4",
    	# :authentication => 'login',
    	# :enable_starttls_auto => true



                           :address   => 'smtp.sendgrid.net',
                           :port      => 587,
                           :domain    => 'sendgrid.com',
                           :user_name => 'dataflux',
                           :password  => '#parrow#12',
                           :authentication => 'plain',
                           :enable_starttls_auto => true
    }
  end
end

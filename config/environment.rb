# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

# email config
Depot::Application.configure do 
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "depot.toddpickell.me",
    authentication: "plain",
    use_name: "myappleguy",
    password: "************",
    enable_starttls: true
  }
  
end

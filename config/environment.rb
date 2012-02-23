# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application

Device307Auth::Application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   :enable_starttls_auto => true,
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "gmail.com",
   :authentication => :plain,
   :user_name => "yourmail@gmail.com",
   :password => "somepassword",
}

ActionMailer::Base.default_content_type = "text/html"

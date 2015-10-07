# encoding: UTF-8

# Load the rails application
require File.expand_path('../application', __FILE__)
require File.expand_path('../config_loader', __FILE__)

APP_CONFIG = ConfigLoader.load_app_config

# For invalid fields, Rails adds a wrapper div.field_with_error around the input field. Which sucks,
# because I didn't ask for any wrappers to magically appear and screw my form styles. So, disable them.
# See more: https://coderwall.com/p/s-zwrg
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end

# Initialize the rails application
Kassi::Application.initialize!

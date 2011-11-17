class ApplicationController < ActionController::Base
  include Clearance::Authentication
  layout 'application'

  helper :all # include all helpers, all the time
  protect_from_forgery
  
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  add_flash_types :error,:another_custom_type
  protect_from_forgery with: :exception
 before_action :authenticate_user!
 
end

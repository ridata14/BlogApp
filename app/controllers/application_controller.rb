class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception

# Create a before filter calling the strong parameter created below

	before_action :configure_permitted_parameters, if: :devise_controller?

# Added this protected method for the custom fields that I added, then declared in the before filter above

protected

# It is very important to declare ALL the fields in a given form for you to write into the DB.

	def configure_permitted_parameters
	  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :remember_me, :avatar) }
	  devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:name, :email, :password, :password_confirmation, :remember_me, :avatar) }
	  devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation, :current_password, :remember_me, :avatar) }
	end

end
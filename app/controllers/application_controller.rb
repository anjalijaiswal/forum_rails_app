class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << [:username, :about_me, :admin]
  end

  def after_sign_out_path_for(resource)

    puts "????????????????????????????????"
    forums_path
  end
  
  def is_admin?
  	if current_user.admin?
  		true
    else
    	render :text => 'Not Admin. Access denied'
  	end
  end
end

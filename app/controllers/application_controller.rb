class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  def after_sign_in_path_for(resource) 
  	if resource.role == "Teacher"
  		 books_path
  	elsif resource.role == "Parent"
  		 "/users/dashboard"
  	end
  end

  def after_sign_out_path_for(resource) 
  	 books_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :role
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

end

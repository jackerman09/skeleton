class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def present(object, klass = nil)
	  klass ||= "#{object.class}Presenter".constantize
	  klass.new(object, view_context)
	end

  protected

	  def configure_permitted_parameters
	    # devise_parameter_sanitizer.for(:sign_up) << :username
	    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :username) }
	  end
end

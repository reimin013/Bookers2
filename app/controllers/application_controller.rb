class ApplicationController < ActionController::Base

 before_action :current_user, :configure_permitted_parameters, if: :devise_controller?

 def current_user
 	return unless session[:user_id]
 	@current_user ||= User.find(session[:user_id])
 end
# def after_sign_in_path_for(resource)
# user_path(resource.id)
# end

 protected
 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
 end
end

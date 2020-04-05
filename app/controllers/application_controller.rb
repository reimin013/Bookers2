class ApplicationController < ActionController::Base

 before_action :configure_permitted_parameters, if: :devise_controller?

 # def current_user
 # 	return unless session[:user_id]
 # 	@current_user ||= User.find(session[:user_id])
 # end

 Refile.secret_key = '6b7e2a7c798502136cf5adc8ee33fabac97fc324e009ab638bd3433ca0b98aeffb70ad28977de42e9fe3cd73ac78941b41519ee7995d70692f23204f7f216ad1'

 def after_sign_in_path_for(resource)
    user_path(resource.id)
 end
 # resource がないと何がログインしたかの情報を持ってこれないため、この引数を消すとエラーが出てしまう

 protected
 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
 end
end

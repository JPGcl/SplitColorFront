class ApplicationController < ActionController::Base
#class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!
    #def after_sign_in_path_for(resource)
    #    resource.next_step
    #end

    protected

    def configure_permitted_parameters
        added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
        devise_parameter_sanitizer.permit(:sign_in, keys: added_attrs)
        devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
        devise_parameter_sanitizer.permit(:sign_update, keys: added_attrs)
    end


end
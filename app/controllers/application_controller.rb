class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    include SessionsHelper
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
    
    def after_sign_in_path_for(resource)
        if current_user
            flash[:notice] = "ログインに成功しました"
            root_url
        else
            flash[:notice] = "新規登録完了しました。"
            new_profile_path
        end
    end
    
    def after_sign_out_path_for(resource)
        new_user_session_path
    end
    
    private
    def logged_in_user
        unless logged_in?
            redirect_to login_url
        end
    end
end

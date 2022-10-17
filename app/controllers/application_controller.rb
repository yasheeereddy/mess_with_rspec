class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    helper_method :current_user, :logged_in?, :require_user


    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        end 

    end

    def logged_in?
        !!current_user
    end
    def require_user
        if !logged_in?           
            redirect_to login_path
            flash[:alert] = "You must log in first"
        end
    end

end

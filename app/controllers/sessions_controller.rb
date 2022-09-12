class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password]) 
            session[:user_id] = user.id
            flash[:notice] = "logged in successfuully"
            redirect_to "/tasks"
        else
            flash.now[:alert] = "There is something wrong with your credentials"
            render '/'
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "logged out successfully"
        redirect_to root_path
    end
  
       
      
end

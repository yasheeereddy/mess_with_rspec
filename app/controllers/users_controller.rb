class UsersController < ApplicationController

    def new
        @user = User.new
    end
    def index
        @users = User.all
        p @users
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "user created successfully"
            redirect_to login_path
        else
            render 'new'
        end
    end

    def show
        @user = User.find(params[:id])
    end

    private
 
    def user_params
        params.require(:user).permit(:username, :email, :password)

    end

    
end
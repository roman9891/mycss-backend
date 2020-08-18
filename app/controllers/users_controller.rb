class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users
    end
    
    def show
        user = User.find(params[:id])
        render json: user.styles
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    private 
   
    def user_params
        params.require(:users).permit(:username, :password)
    end
end

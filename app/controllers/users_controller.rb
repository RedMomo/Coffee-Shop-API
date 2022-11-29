class UsersController < ApplicationController
    def index 
        user = User.all
        render json: user
    end

    def show 
        user = User.find(params[:id])
        render json = user
    end

    def create 
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def update 
        user = User.find(params[:id])
        user.update(user_params)
        render json: user, status: :accepted
    end

    def destroy 
        user = User.find(params[:id])
        user.destroy
        head :no_content
    end

    private 
    def user_params
        params.permit(:first_name, :last_name, :email, :password, :admin)
    end
end

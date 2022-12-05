class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    # rescue_from ActiveRecord::RecordInvalid, with: :handle_invalid_record

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
        @token = encode_token(user_id: user.id)
        render json: {
            user: UserSerializer.new(user), 
            token: @token
        }, status: :created
    end

    def me 
        render json: current_user, status: :ok
    end

    # def update 
    #     user = User.find(params[:id])
    #     user.update(user_params)
    #     render json: user, status: :accepted
    # end

    def destroy 
        user = User.find(params[:id])
        user.destroy
        head :no_content
    end

    def create 
        user = User.create!(user_params)
        @token = encode_token(user_id: user.id)
        render json: {
            user: UserSerializer.new(user), 
            token: @token
        }, status: :created
    end


    private 
    def user_params
        params.permit(:first_name, :last_name, :email, :password, :username, :admin)
    end

    # def handle_invalid_record(e)
    #     render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    # end
end

class UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create]
    skip_before_action :authorized, only: [:create]
    rescue_from ActiveRecord::RecordInvalid, with: :handle_invalid_record

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
        if user.save 
            Cart.create(user_id: user.id, active: true)
        end
        @token = encode_token(user_id: user.id, admin: user.admin)
        render json: {
            user: UserSerializer.new(user), 
            token: @token
        }, status: :created
    end

    def me 
        render json: current_user, status: :ok
        # render json: {hithere: 'hi_there'}
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
        params.permit(:first_name, :last_name, :email, :password, :username, :admin)
    end

    def handle_invalid_record(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end
end

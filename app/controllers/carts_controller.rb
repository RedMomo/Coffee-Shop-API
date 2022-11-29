class CartsController < ApplicationController
    def index 
        cart = Cart.all
        render json: cart
    end

    def show 
        cart = Cart.find(params[:id])
        render json = cart
    end

    def update 
        cart = Cart.find(params[:id])
        cart.update!(cart_params)
        render json: cart, status: :accepted
    end

    def create 
        cart = Cart.create!(cart_params)
        render json: cart, status: :created
    end

    def destroy 
        cart = Cart.find(params[:id])
        cart.destroy
        head :no_content
    end

    private 
    def cart_params
        params.permit(:user_id, :active)
    end
end

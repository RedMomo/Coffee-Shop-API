class CartItemsController < ApplicationController
    def index 
        cart = CartItem.all
        render json: cart
    end
    
    def show 
        cart = CartItem.find(params[:id])
        render json = cart
    end

    def create 
        cart = CartItem.create!(cart_item_params)
        render json: cart, status: :created
    end

    def update 
        cart = CartItem.find(params[:id])
        cart.update!(cart_item_params)
        render json: cart, status: :accepted
    end

    def destroy 
        cart = CartItem.find(params[:id])
        cart.destroy
        head :no_content
    end

    private 
    def cart_item_params
        params.permit(:product_id, :cart_id, :quantity)
    end
end

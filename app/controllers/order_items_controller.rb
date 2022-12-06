class OrderItemsController < ApplicationController
    def index
        cart_items = CartItem.all
        render json: cart_items, status: :ok
    end

    def create

        
        user = User.find(current_user.id)
        carts = Cart.find_by(user_id: current_user.id)
        puts "----------------"
        puts(user, carts, params[:product_id])
        puts "----------------"

        cartitem = CartItem.create(cart_id:carts.id, product_id: params[:product_id])
        render json: cartitem, status: :created
    end

    # User.second.carts.first.products

    def show 
        order = OrderItem.find(params[:id])
        render json = order
    end
    
    def update 
        order = OrderItem.find(params[:id])
        order.update!(order_item_params)
        render json: order, status: :accepted
    end

    def destroy 
        order = OrderItem.find(params[:id])
        order.destroy
        head :no_content
    end

    private 
    def order_item_params
        params.permit(:product_id, :order_id, :total_price, :quantity)
    end
end

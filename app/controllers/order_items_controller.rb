class OrderItemsController < ApplicationController
    def index 
        order = OrderItem.all
        render json: order
    end

    def show 
        order = OrderItem.find(params[:id])
        render json = order
    end

    def create 
        order = OrderItem.create!(order_item_params)
        render json: order, status: :created
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

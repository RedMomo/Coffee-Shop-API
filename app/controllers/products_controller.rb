class ProductsController < ApplicationController
    def index 
        product = Product.all
        render json: product
    end

    def show 
        product = Product.find(params[:id])
        render json = product, serializer: ProductwithadditionalinfoSerializer
    end

    def create 
        product = Product.create!(product_params)
        render json: product, status: :created
    end

    def update 
        product = Product.find(params[:id])
        product.update!(product_params)
        render json: product, status: :accepted
    end

    def destroy
        product = Product.find(params[:id])
        product.destroy
        head :no_content
    end

    private 
    def product_params
        params.permit(:title, :featured, :roast, :single_origin, :description, :price, :tasting_notes, :image_url)
        # will need to put additional info back, when it exists
    end
end

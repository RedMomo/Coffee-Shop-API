class AdditionalInfosController < ApplicationController
    def index 
        info = AdditionalInfo.all
        render json: info
    end

    def show 
        info = AdditionalInfo.find(params[:id])
        render json = info
    end

    def update 
        info = AdditionalInfo.find(params[:id])
        info.update!(info_params)
        render json: info, status: :accepted
    end

    def create 
        info = AdditionalInfo.create!(additional_info_params)
        render json: info, status: :created
    end

    def destroy 
        info = AdditionalInfo.find(params[:id])
        info.destroy
        head :no_content
    end

    private 
    def additional_info_params
        params.permit(:process, :origin, :altitude, :image_url)
    end
end

class DestinationsController < ApplicationController

    def index
        destinations = Destination.all
        render json: destinations
    end

    def show
        destination = Destination.find(params[:id])
        render json: destination
    end
    
end

private

def destination_params
    params.require(:destination).permit(:country, :city, :user_id)
end
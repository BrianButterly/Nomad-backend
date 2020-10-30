class StaysController < ApplicationController

    def index
        stays = Stay.all
        render json: stays
    end


end

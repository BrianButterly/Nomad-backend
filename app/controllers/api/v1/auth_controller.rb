class Api::V1::AuthController < ApplicationController

    # def index
    #     users = User.all
    #     render json: users
    # end


    def create
        
        user = User.find_by(username: params[:username])  
        
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: { error: 'Invalid username or password'}
        end

    end
       
end
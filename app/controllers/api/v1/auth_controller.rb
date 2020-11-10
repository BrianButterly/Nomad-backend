
require 'JWT'

class Api::V1::AuthController < ApplicationController

    def create
        
        user = User.find_by(username: params[:username])  
        
        if user && user.authenticate(params[:password])
            payload = { user_id: user.id}
            token = JWT.encode(payload, 'S3cr3t', 'HS256')
            render json: { user: user, token: token }
        else
            render json: { error: 'Invalid username or password'}
        end

    end

    def show

        token = request.headers[:Authorization].split(' ')[1]
        decoded_token = JWT.decode(token, 'S3cr3t', true, { algorithm: 'HS256' })
        user_id = decoded_token[0]['user_id']
    
        user = User.find(user_id)
    
        render json: { user: user }
    
    end
       
end
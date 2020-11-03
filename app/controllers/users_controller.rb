class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end
    
end

#     def show
#         user = User.find(params[:id])
#         render json: user
#     end

# end

# private

# def user_params
#     params.require(:user).permit(:username, :password, :location)
# end
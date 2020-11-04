class HostsController < ApplicationController

    def index
        hosts = Host.all
        render json: hosts
    end

    def show
        host = Host.find(params[:id])
        render json: host
    end

    def update
        host = Host.find(params[:id])
        host.update(host_params)
        render json: host
    end
    
end

private

def host_params
    params.require(:host).permit(:name, :age, :bio, :rating)
end
  


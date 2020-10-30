class HostsController < ApplicationController

    def index
        hosts = Host.all
        render json: hosts
    end

  
end

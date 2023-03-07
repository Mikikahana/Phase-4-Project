class DriversController < ApplicationController

    def index
        drivers = Driver.all
        render json: drivers, status: :ok
    end

    def show
        driver = find_driver
        render json: driver, status: :ok
    end

    def create
        driver = Driver.create!(driver_params)
        render json: driver, status: :created
    end

    private

    def find_driver
        Driver.find(params[:id])
    end

    def driver_params
        params.permit(:name, :email, :password, :pfp_url, :vehicle_type)
    end

end

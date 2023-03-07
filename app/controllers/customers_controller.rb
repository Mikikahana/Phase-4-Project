class CustomersController < ApplicationController

    def index
        customers = Customer.all
        render json: customers, status: :ok
    end

    def show
        customer = find_customer
        render json: customer, status: :ok
    end

    def create
        customer = Customer.create!(customer_params)
        render json: customer, status: :created
    end

    private

    def find_customer
        Customer.find(params[:id])
    end

    def customer_params
        params.permit(:name, :email, :password, :pfp_url)
    end

end

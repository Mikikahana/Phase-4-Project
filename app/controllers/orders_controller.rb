class OrdersController < ApplicationController

    def index
        orders = Order.all
        render json: orders, status: :ok
    end

    def show
        order = find_order
        render json: order, status: :ok
    end

    def create

    end

    private

    def find_order
        Order.find(params[:id])
    end

    def order_params
        params.permit(:delivery_address)
    end

end

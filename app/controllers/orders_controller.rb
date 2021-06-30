class OrdersController < ApplicationController

    def index
        @orders = Order.all
        render json: @orders
    end

    def create
        @order = Order.new(order_params)
        if @order.save
            render json: @order
        else 
            render json: {error: "Error: Order not created"}
        end
    end

    def show
        @order = Order.find(params[:id])
        render json: @order
    end

    def destroy
        @order = Order.find(params[:id])
        @order.destroy
    end

    private

    def order_params
        params.require(:order).permit(:date)
    end

end

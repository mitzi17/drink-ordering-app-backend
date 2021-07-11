class DrinksController < ApplicationController

    before_action :set_order

    def index
        @drinks = Drink.all
        render json: @drinks
    end

    def create
        @drink = @order.drinks.new(drink_params)
        if @drink.save
            render json: @order
        else 
            render json: {error: "Error: Drink not created"}
        end
    end

    def show
        @drink = Drink.find(params[:id])
        render json: @drink
    end

    def destroy

    end

    private

    def set_order
        @order = Order.find(params[:order_id])
    end

    def drink_params
        params.require(:drink).permit(:base, :flavor, :size, :add_on, :order_id)
    end

end

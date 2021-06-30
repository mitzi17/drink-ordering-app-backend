class DrinksController < ApplicationController

    before_action :set_drink

    def index
        @drinks = @order.drinks
        render json: @drinks
    end

    def create
        @drink = Drink.new(drink_params)
        if @drink.save
            render json: @drink
        else 
            render json: {error: "Error: Drink not created"}
        end
    end

    def show
        @drink = Drink.all.find(params[:id])
        render json: @drink
    end

    def destroy

    end

    private

    def set_drink
        @drink = Drink.all.find(params[:order_id])
    end

    def drink_params
        params.require(:drink).permit(:base, :flavor, :size, :add_on, :order_id)
    end

end

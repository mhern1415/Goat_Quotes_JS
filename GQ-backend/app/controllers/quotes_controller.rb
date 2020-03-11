class QuotesController < ApplicationController

    def index
        @quotes = Quote.all 

        render json: @quotes, status: 200
    end

    def create 
        @quote = Quote.new

        render json: @quote, status: 200
    end

    def destroy 
        @quote = Quote.find(params[:id])

        render json: @quote, status: 200
    end

end



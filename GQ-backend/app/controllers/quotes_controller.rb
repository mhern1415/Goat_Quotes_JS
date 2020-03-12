class QuotesController < ApplicationController
    def index
        @quotes = Quote.all 

        render json: @quotes, status: 200
    end

    def create 
        @quote = Quote.new(quote_params)

        render json: @quote, status:200
    end

    def destroy
        @quote = Quote.find(quote_params)
        @quote.destroy
        render json: ("Quote Deleted.").to_json 
    end
end

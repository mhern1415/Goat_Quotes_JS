class SportsController < ApplicationController
    def index
        @sports = Sport.all 
        render json: @sports, status:200
    end
    


end

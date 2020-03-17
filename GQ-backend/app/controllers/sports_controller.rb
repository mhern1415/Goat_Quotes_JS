class SportsController < ApplicationController
    def index
        @sports = Sport.all 
        render json: @sports.to_json(:except => [:created_at, :updated_at])
    end



end

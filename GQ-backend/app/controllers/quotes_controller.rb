class QuotesController < ApplicationController
    def index
        @quotes = Quote.all 

        render json: @quotes.to_json(:include => {:athlete => {:only => [:name]} , :sport => {:only => [:name]}},
                :except => [:created_at, :updated_at])
    end

    def create 
        @quote = Quote.new(content:params[:content], sport_id:params[:sport], athlete_id:(Athlete.create(name:params[:athlete])).id)  
            if @quote.save
                   render json: @quote.to_json(:include => {:athlete => {:only => [:name]} , :sport => {:only => [:name]}},
                            :except => [:created_at, :updated_at])
            else
                        render json: ("Error saving quote!").to_json
            end
    end

  #  def update
   #     @quote = Quote.find(params[:id])
    #    @quote.update(content:params[:content], sport_id:params[:sport], athlete_id:(Athlete.create(name:params[:athlete])).id) 
     #       if @quote.save
      #          render json: @quote.to_json(:include => {:athlete => {:only => [:name]} , :sport => {:only => [:name]}},
       #             :except => [:created_at, :updated_at])
        #    else
         #       render json: ("Error saving quote!").to_json
          #  end
    #end

    def destroy
        @quote = Quote.find(params[:id])
        @quote.destroy 
        render json: ("Quote Deleted!").to_json 
    end
end

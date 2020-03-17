class ApplicationController < ActionController::API
    def params
        request.parameters
    end
end

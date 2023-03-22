class ApplicationController < ActionController::API

    def app_response(message: 'Success',status: 200, data: nil)
        render json: {message: message, data:data},status: status
    end

end

class UsersController < ApplicationController

    def register

        user= User.create(user_params)
        if user.valid?
            app_response(message:"SIGNUP SUCCESSFUL", status: :created, data: user)
        else
            app_response(message:"Something went wrong", status: :unprocessable_entity, data: user.errors)
        end
    end

    private
    def user_params
        params.permit(:username, :email, :password)
    end

end


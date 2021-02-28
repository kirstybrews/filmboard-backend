class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: { error_message: "Something went wrong"}
        end
    end

    def profile
        token = request.headers["Authenticate"]
        user = User.find(decode(token)["user_id"])
        render json: user
    end

    private
    def user_params
        params.require(:user).permit(:name, :username, :password, :password_confirmation)
    end
end

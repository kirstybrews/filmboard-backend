class ApplicationsController < ApplicationController

    def index
        render json: Application.all.to_json(:include => {
            :job_posting => {:except => [:updated_at, :created_at]}
        })
    end

    def create
        app = Application.new(application_params)
        if app.save
            render json: app
        else
            render json: {error_message: "Something went wrong"}
        end
    end

    def update
        application = Application.find(params[:id])
        application.update(application_params)
        render json: application
    end

    private
    def application_params
        params.require(:application).permit(:message, :user_id, :job_posting_id)
    end
end

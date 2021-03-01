class ApplicationsController < ApplicationController

    def index
        render json: Application.all.to_json(:include => {
            :job_posting => {:except => [:updated_at, :created_at]}
        })
    end

    def update
        application = Application.find(params[:id])
        application.update(application_params)
        render json: application
    end

    private
    def application_params
        params.require(:application).permit(:message)
    end
end

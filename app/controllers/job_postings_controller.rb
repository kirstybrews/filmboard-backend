class JobPostingsController < ApplicationController
    def index
        render json: JobPosting.all.reverse.to_json({
            :include => {:applications => {
                :include => [:user]
            }}
          })
    end

    def create
        job_posting = JobPosting.new(job_posting_params)
        if job_posting.save
            render json: job_posting.to_json({
                :include => {:applications => {
                    :include => [:user]
                }}
              })
        else
            render json: { error_message: "Something went wrong"}
        end
    end

    private

    def job_posting_params
        params.require(:job_posting).permit(:role, :start_date, :length_of_time, :location, :project_description, :user_id, :project_title, :project_type, :compensation, :need_gear)
    end
end

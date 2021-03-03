class JobPostingsController < ApplicationController
    def index
        render json: JobPosting.all.to_json({
            :except => [:updated_at, :created_at]
          })
    end

    def create
        job_posting = JobPosting.new(job_posting_params)
        if job_posting.save
            render json: job_posting.to_json({
                :except => [:updated_at, :created_at]
              })
        else
            render json: { error_message: "Something went wrong"}
        end
    end

    private

    def job_posting_params
        params.require(:job_posting).permit(:role, :start_date, :length_of_time, :location, :project_description, :user_id)
    end
end

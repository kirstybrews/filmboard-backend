class JobPostingsController < ApplicationController
    def index
        job_postings = JobPosting.where(status: "Accepting Applicants")
        render json: job_postings.reverse.to_json({
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
            render json: {errors: job_posting.errors}
        end
    end

    def update
        job_posting = JobPosting.find(params[:id])
        if job_posting.update(job_posting_params)
            render json: job_posting.to_json({
                :include => {:applications => {
                    :include => [:user]
                }}
              })
        else
            render json: {errors: job_posting.errors}
        end
    end

    private

    def job_posting_params
        params.require(:job_posting).permit(:role, :start_date, :length_of_time, :location, :project_description, :user_id, :project_title, :project_type, :compensation, :need_gear, :status)
    end
end

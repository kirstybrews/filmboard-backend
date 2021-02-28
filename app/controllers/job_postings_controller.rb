class JobPostingsController < ApplicationController
    def index
        render json: JobPosting.all.to_json({
            :except => [:updated_at, :created_at]
          })
    end
end

class JobPosting < ApplicationRecord
    validates :role, presence: true
    validates :start_date, presence: true
    validates :length_of_time, presence: true
    validates :location, presence: true
    validates :project_description, presence: true
    validates :project_title, presence: true
    validates :project_type, presence: true

    belongs_to :user
    has_many :applications
end

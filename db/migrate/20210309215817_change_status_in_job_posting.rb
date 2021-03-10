class ChangeStatusInJobPosting < ActiveRecord::Migration[6.0]
  def change
    change_column :job_postings, :status, :string, :default => "Accepting Applicants"
  end
end

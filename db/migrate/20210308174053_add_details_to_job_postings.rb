class AddDetailsToJobPostings < ActiveRecord::Migration[6.0]
  def change
    add_column :job_postings, :project_title, :string
    add_column :job_postings, :project_type, :string
    add_column :job_postings, :compensation, :string
    add_column :job_postings, :need_gear, :boolean
  end
end

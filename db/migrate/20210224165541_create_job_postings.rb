class CreateJobPostings < ActiveRecord::Migration[6.0]
  def change
    create_table :job_postings do |t|
      t.string :role
      t.string :start_date
      t.string :length_of_time
      t.string :location
      t.text :project_description
      t.integer :user_id

      t.timestamps
    end
  end
end

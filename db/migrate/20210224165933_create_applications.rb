class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.integer :job_posting_id
      t.integer :user_id
      t.text :message

      t.timestamps
    end
  end
end

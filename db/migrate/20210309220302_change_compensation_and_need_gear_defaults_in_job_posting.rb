class ChangeCompensationAndNeedGearDefaultsInJobPosting < ActiveRecord::Migration[6.0]
  def change
    change_column :job_postings, :compensation, :string, :default => "None"
    change_column :job_postings, :need_gear, :boolean, :default => false
  end
end

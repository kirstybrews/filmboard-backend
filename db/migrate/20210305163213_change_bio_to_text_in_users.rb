class ChangeBioToTextInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :bio, :text
  end
end

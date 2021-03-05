class AddBioAndAvatarToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bio, :string
    add_column :users, :avatar, :string 
  end
end

class AddLocationAndEmailToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :location, :string
    add_column :users, :email, :string
  end
end

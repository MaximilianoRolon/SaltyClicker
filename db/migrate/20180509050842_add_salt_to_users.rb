class AddSaltToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :salt, :integer
  end
end

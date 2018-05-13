class AddSaltPerSecondToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :salt_per_second, :integer
  end
end

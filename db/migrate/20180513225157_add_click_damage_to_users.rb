class AddClickDamageToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :click_damage, :integer
  end
end

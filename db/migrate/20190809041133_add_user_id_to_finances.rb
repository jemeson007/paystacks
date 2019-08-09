class AddUserIdToFinances < ActiveRecord::Migration[5.1]
  def change
  	add_column :finances, :user_id, :integer

  end
end

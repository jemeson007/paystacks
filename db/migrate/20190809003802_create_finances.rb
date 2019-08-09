class CreateFinances < ActiveRecord::Migration[5.1]
  def change
    create_table :finances do |t|
      t.text :supplierName
      t.string :email
      t.string :Ingredient
      t.string :accountNumber
      t.decimal :amount

      t.timestamps
    end
  end
end

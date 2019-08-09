class AddSupplierNumberToFinance < ActiveRecord::Migration[5.1]
  def change
    add_column :finances, :supplierNumber, :string
  end
end

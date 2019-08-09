class AddBankNameToFinance < ActiveRecord::Migration[5.1]
  def change
    add_column :finances, :BankName, :string
  end
end

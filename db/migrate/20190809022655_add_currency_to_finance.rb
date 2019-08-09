class AddCurrencyToFinance < ActiveRecord::Migration[5.1]
  def change
    add_column :finances, :currency, :string
  end
end

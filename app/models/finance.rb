class Finance < ApplicationRecord
	
	validates :supplierName, :email, :Ingredient, :BankName, :supplierNumber, :accountNumber, :currency, :amount, presence: true
	
	belongs_to :user



	def spend
		return amount * 1.015
	end

end

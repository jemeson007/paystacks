class FinanceController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
	  @finances = Finance.all
	end

	def show
	  @finance = Finance.find(params[:id])
	end

	def new
	  @finance = current_user.finances.build 	
	end

	def edit
	  @finance = Finance.find(params[:id])	
	end

	def create
	  @finance = current_user.finances.build(finance_params)

	  if finance.save
	  	redirect_to @finance
	  else
	  	render 'new'
	  end
	  	
	end

	def update
		@finance = Finance.find(params[:id])
		if @finance.update(finance_params)
			redirect_to @finance
		else
			render 'edit'
		end
	end

	def destroy
		@finance  =  Finance.find(params[:id])
		@finance.destroy

		redirect_to finances_path
	end


	private

	def finance_params
		params.require(:finance).permit(:supplierName, :email, :ingredient, :supplierNumber, :accountNumber, :amount)
	end

end

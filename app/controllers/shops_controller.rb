class ShopsController < ApplicationController
	def new
	@shop = Shop.new
end

def index
	@shops = Shop.all
end

def create
	@shop = Shop.new(shop_param)
	if @shop.save
		redirect_to shop_path
	else
			render 'new'
	end
end

	private
	def shop_param
		params.require(:shop).permit(:shop_id, :name, :contact)
		
	end
end

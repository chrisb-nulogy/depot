class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  
  def index
  	@products = Product.order(:title)
  	
  	if session[:store_index_counter].nil?
  		session[:store_index_counter] = 0
  	end

  	session[:store_index_counter] += 1
  end
end

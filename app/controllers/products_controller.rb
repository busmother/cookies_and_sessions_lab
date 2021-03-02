class ProductsController < ApplicationController
    def index
        # @product = Product.new
        # @cart = cart
    end

    def add
        # byebug
        cart << params[:product]
        render :index
    end
end
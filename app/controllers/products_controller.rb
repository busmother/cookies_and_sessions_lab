class ProductsController < ApplicationController
    def index
        # @product = Product.new
        @cart = cart
    end

    def add
        @product = Product.create(name: params[:name])
        @product.add_to_cart
    end
end
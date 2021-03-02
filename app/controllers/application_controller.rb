class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def add_to_cart
    @item = Product.find(params[:id])
    cart = session[:cart] || []
    cart << @product.id
    session[:cart] = cart
  end

  def cart
    session[:cart] ||= []
  end
end

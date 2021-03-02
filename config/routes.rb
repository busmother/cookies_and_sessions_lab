Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'products#index'

  resources :products, only: %i[index show new create]

  post 'products/add' do
    @product = "horse"
    @product.add_to_cart
  end

end

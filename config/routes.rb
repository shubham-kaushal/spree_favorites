Spree::Core::Engine.add_routes do

	resources :variants, only: [] do
    resource :favorite, only: [:create, :destroy]
  end

  resources :users, only: [], :path => 'account' do
	  resources :favorites, only: :index
  end

#  resources :favorites, only: [:index, :create, :destroy]


#  resources :wishlists
#  resources :wished_products, only: [:create, :update, :destroy]
#  get '/wishlist' => 'wishlists#default', as: 'default_wishlist'

  namespace :admin, path: Spree.admin_path do
    resources :users do
      resources :favorites, only: [:index, :destroy]
    end
  end

end
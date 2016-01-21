Rails.application.routes.draw do
  devise_for :users, :skip => [:sessions]
  as :user do
    get 'signin' => 'devise/sessions#new', :as => :new_user_session
    post 'signin' => 'devise/sessions#create', :as => :user_session
    delete 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  mount MagicLamp::Genie, at: "/magic_lamp" if defined?(MagicLamp)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  root 'static_pages#home'
  get 'about'   => 'static_pages#about'

  get 'artist_search' => 'users#index'
  get 'crew_search' => 'crews#index'
  get 'news' => 'news#index'
  get 'map_search' => 'maps#index'
  get 'learn' => 'learn#index'

  resources :users do
    resources :artwork
  end

  resources :crews do
    resources :artwork
  end

  get 'popular' => 'artwork#popular'

  resources :featured_content
  get 'featured' => 'featured_content#index'
  get 'about' => 'about#show'
  get 'users/:id/feed' => 'users#feed'

  resources :learn,   only: [:index, :show]
  resources :news,    only: [:index, :show]
  resources :maps,    only: [:index, :show]


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

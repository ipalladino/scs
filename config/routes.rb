Rails.application.routes.draw do
  resources :templates

  resources :menu_items do
    member do
      get 'link_page'
      get 'unlink_page'
    end
  end

  resources :pages do
    member do
      get 'update_order'
      get 'add_item'
      get 'remove_item'
      get 'preview'
    end
  end

  #to get default generic items data
  get '/generic_items/get_default' => 'generic_items#get_default'
  resources :generic_items do
    member do
      get 'preview'
    end
  end
  #get 'generic_items/:id/preview' => 'generic_items#preview', as: :generic_item


  root 'static_pages#default'

  get '/contact_us' => 'static_pages#contact_us'
  
  get '/:section/:name' => 'static_pages#home'
  get '/:section' => 'static_pages#home'
  get '/company/ourvision' => 'static_pages#ourvision'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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

Rails.application.routes.draw do

  resources :line_items
=begin
  line_items     GET    /line_items(.:format)          line_items#index
                 POST   /line_items(.:format)          line_items#create
  new_line_item  GET    /line_items/new(.:format)      line_items#new
  edit_line_item GET    /line_items/:id/edit(.:format) line_items#edit
  line_item      GET    /line_items/:id(.:format)      line_items#show
                 PATCH  /line_items/:id(.:format)      line_items#update
                 PUT    /line_items/:id(.:format)      line_items#update
                 DELETE /line_items/:id(.:format)      line_items#destroy
=end



  resources :carts
  get 'store/index'

  resources :products

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'store#index'

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

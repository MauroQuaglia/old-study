Rails.application.routes.draw do

  resources :line_items
=begin

  Per oguna di queste viene chreato anche un path che le sollecita:

  line_items     GET    /line_items(.:format)          line_items#index    --> line_items_path, link_to chiama GET
                 POST   /line_items(.:format)          line_items#create   --> line_items_path, button_to chiama POST
  new_line_item  GET    /line_items/new(.:format)      line_items#new      --> new_line_items_path
  edit_line_item GET    /line_items/:id/edit(.:format) line_items#edit     --> edit_line_item_path
  line_item      GET    /line_items/:id(.:format)      line_items#show     --> line_item_path
                 PATCH  /line_items/:id(.:format)      line_items#update   --> line_item_path
                 PUT    /line_items/:id(.:format)      line_items#update   --> line_item_path
                 DELETE /line_items/:id(.:format)      line_items#destroy  --> line_item_path


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

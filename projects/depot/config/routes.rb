Rails.application.routes.draw do

  get 'admin' => 'admin#index'

  # shortcut per non srivere tutte le volte il nome del controller
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users


  resources :products do
    get :who_bought_on_member, on: :member #Aggiungiamo una GET, si applioca ad ogni membro della collezione di prodotti.
    get :who_bought_on_collection, on: :collection #Aggiungiamo una GET, si applioca ad ogni membro della collezione di prodotti.

    resources :reviews
  end


  resources :xxx, shallow: true do
    resources :yyy
  end

=begin
  product_reviews     GET    /products/:product_id/reviews(.:format)          reviews#index
                      POST   /products/:product_id/reviews(.:format)          reviews#create
  new_product_review  GET    /products/:product_id/reviews/new(.:format)      reviews#new
  edit_product_review GET    /products/:product_id/reviews/:id/edit(.:format) reviews#edit
  product_review      GET    /products/:product_id/reviews/:id(.:format)      reviews#show
                      PATCH  /products/:product_id/reviews/:id(.:format)      reviews#update
                      PUT    /products/:product_id/reviews/:id(.:format)      reviews#update
                      DELETE /products/:product_id/reviews/:id(.:format)      reviews#destroy
=end

=begin
  who_bought_on_member_product      GET    /products/:id/who_bought_on_member(.:format) products#who_bought_on_member
  who_bought_on_collection_products GET    /products/who_bought_on_collection(.:format) products#who_bought_on_collection
=end


=begin
  ES:format.html, ecc tutte hannoil format opzionale, significa che posso chiamarle con una certa estensione e ottenere delle risposte diverse, txt, json, html, ecc...
  il CRUD è contenuto in queste sette rotte. più 3 speciali (*)



  products           GET    /products(.:format)                      products#index      *List
                     POST   /products(.:format)                      products#create     Create creo la risorsa
  new_product        GET    /products/new(.:format)                  products#new        *New
  edit_product       GET    /products/:id/edit(.:format)             products#edit       Read la risorsa
  product            GET    /products/:id(.:format)                  products#show       *Show
                     PATCH  /products/:id(.:format)                  products#update     Update la risorsa
                     PUT    /products/:id(.:format)                  products#update     Update la risorsa
                     DELETE /products/:id(.:format)                  products#destroy    Delete la risorsa
=end


  get 'store/index'


  #http://localhost:3000/ = http://localhost:3000/en
  #http://localhost:3000/es
  scope '(:locale)' do # tra parentesi significa opzionale
    resources :orders
    resources :line_items
    resources :carts
    root 'store#index', as: 'store', via: :all
  end
  resources :products

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


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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

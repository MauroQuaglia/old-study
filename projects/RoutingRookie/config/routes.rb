Rails.application.routes.draw do

  get 'patients/:id', to: 'patients#show',
      as: 'patient' # Crea patient_path e patient_url. Questi come parametro vogliono un numero, infatti devono creare cose del tipo patients/17, infatti fanno riferimento alla rotta stessa [get 'patients/:id'].

  resources :photos # plurare, specifico per il CRUD, crea anche la index (all)
  resource :geocodes # singolare. Non crea la index.

 # get 'profile', to: :show ???

=begin
  E' uno shortcut per creare tutte le risorse che normalmente vengono usate da un sito.
  NB: Questi path/url sono visibili in tutti i controller dell'applicazione. Notare che sono tutti quelli con GET di default.

  photos_path può essere usato con GET o POST a seconda dei contesti. Rails lo capisce.


  photos     GET    /photos(.:format)          photos#index                  photos_path, photos_url
             POST   /photos(.:format)          photos#create
  new_photo  GET    /photos/new(.:format)      photos#new                    new_photo_path, new_photo_url
  edit_photo GET    /photos/:id/edit(.:format) photos#edit                   edit_photo_path(ID), edit_photo_url(ID)
  photo      GET    /photos/:id(.:format)      photos#show                   photo_path(ID), photo_url(ID)
             PATCH  /photos/:id(.:format)      photos#update
             PUT    /photos/:id(.:format)      photos#update
             DELETE /photos/:id(.:format)      photos#destroy
=end

########################################################################################################################

  # Raggruppa i controller sotto un namespace. Da notare che l'url diventa del tipo /admin/articles
  # se non si vuole /admin/ vedere l'esempio dopo
  namespace :admin do
    resources :articles
  end

=begin
  admin_articles     GET    /admin/articles(.:format)          admin/articles#index
                     POST   /admin/articles(.:format)          admin/articles#create
  new_admin_article  GET    /admin/articles/new(.:format)      admin/articles#new
  edit_admin_article GET    /admin/articles/:id/edit(.:format) admin/articles#edit
  admin_article      GET    /admin/articles/:id(.:format)      admin/articles#show
                     PATCH  /admin/articles/:id(.:format)      admin/articles#update
                     PUT    /admin/articles/:id(.:format)      admin/articles#update
                     DELETE /admin/articles/:id(.:format)      admin/articles#destroy
=end

 #######################################################################################################################

  # Il controller è sempre Admin::ArticlesController comunque.
  scope module: 'admin' do # '/admin' se voglio togliere il prefisso Admin:: dal controller
    resources :articles
  end

=begin
  articles     GET    /articles(.:format)                admin/articles#index
               POST   /articles(.:format)                admin/articles#create
  new_article  GET    /articles/new(.:format)            admin/articles#new
  edit_article GET    /articles/:id/edit(.:format)       admin/articles#edit
  article      GET    /articles/:id(.:format)            admin/articles#show
               PATCH  /articles/:id(.:format)            admin/articles#update
               PUT    /articles/:id(.:format)            admin/articles#update
               DELETE /articles/:id(.:format)            admin/articles#destroy
=end


########################################################################################################################

  # Quando abbiamo risorse che sono figlie di altre risorse.
  # Tipicamente quando mappano delle risorse su database.

  # RAILS WAY: per chiarezza meglio non andare oltre a questo livello di innesto.
  resources :magazines do
    resources :ads
  end

  # Le prime mappate all'AdsController le seconde al MagazinesController.
  # Per esempio la prima deve essere richiamata così: magazine_ads_url(@magazine)

=begin
  magazine_ads           GET    /magazines/:magazine_id/ads(.:format)          ads#index
                         POST   /magazines/:magazine_id/ads(.:format)          ads#create
  new_magazine_ad        GET    /magazines/:magazine_id/ads/new(.:format)      ads#new
  edit_magazine_ad       GET    /magazines/:magazine_id/ads/:id/edit(.:format) ads#edit
  magazine_ad            GET    /magazines/:magazine_id/ads/:id(.:format)      ads#show
                         PATCH  /magazines/:magazine_id/ads/:id(.:format)      ads#update
                         PUT    /magazines/:magazine_id/ads/:id(.:format)      ads#update
                         DELETE /magazines/:magazine_id/ads/:id(.:format)      ads#destroy

  magazines              GET    /magazines(.:format)                           magazines#index
                         POST   /magazines(.:format)                           magazines#create
  new_magazine           GET    /magazines/new(.:format)                       magazines#new
  edit_magazine          GET    /magazines/:id/edit(.:format)                  magazines#edit
  magazine               GET    /magazines/:id(.:format)                       magazines#show
                         PATCH  /magazines/:id(.:format)                       magazines#update
                         PUT    /magazines/:id(.:format)                       magazines#update
                         DELETE /magazines/:id(.:format)                       magazines#destroy

=end

  ########################################################################################################################

  # Si possono fare anche cose di questo tipo:
  # vedere anche lo shortcut 'shallow'

  resources :my_articles do
    resources :comments, only: [:index, :new, :create]
  end
  resources :comments, only: [:show, :edit, :update, :destroy]
=begin

  my_article_comments        GET    /my_articles/:my_article_id/comments(.:format)     comments#index
                             POST   /my_articles/:my_article_id/comments(.:format)     comments#create
  new_my_article_comment     GET    /my_articles/:my_article_id/comments/new(.:format) comments#new

  my_articles                GET    /my_articles(.:format)                             my_articles#index
                             POST   /my_articles(.:format)                             my_articles#create
  new_my_article             GET    /my_articles/new(.:format)                         my_articles#new
  edit_my_article            GET    /my_articles/:id/edit(.:format)                    my_articles#edit
  my_article                 GET    /my_articles/:id(.:format)                         my_articles#show
                             PATCH  /my_articles/:id(.:format)                         my_articles#update
                             PUT    /my_articles/:id(.:format)                         my_articles#update
                             DELETE /my_articles/:id(.:format)                         my_articles#destroy

  edit_comment               GET    /comments/:id/edit(.:format)                       comments#edit
  comment                    GET    /comments/:id(.:format)                            comments#show
                             PATCH  /comments/:id(.:format)                            comments#update
                             PUT    /comments/:id(.:format)                            comments#update
                             DELETE /comments/:id(.:format)                            comments#destroy
=end

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

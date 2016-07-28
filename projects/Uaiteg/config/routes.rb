Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


=begin

  meridians     GET    /meridians(.:format)          meridians#index
                POST   /meridians(.:format)          meridians#create

  new_meridian  GET    /meridians/new(.:format)      meridians#new

  edit_meridian GET    /meridians/:id/edit(.:format) meridians#edit

  meridian      GET    /meridians/:id(.:format)      meridians#show
                PATCH  /meridians/:id(.:format)      meridians#update
                PUT    /meridians/:id(.:format)      meridians#update
                DELETE /meridians/:id(.:format)      meridians#destroy
=end


  root 'meridians#index'
  resources :meridians#, :path => '/' # E' un modo per dirgli che la root è la index di questo.


end

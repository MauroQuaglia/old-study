Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'meridians#index'

  resources(:meridians, format: false)

=begin
  Prefix Verb   URI Pattern                   Controller#Action
  root           GET    /                             meridians#index
  meridians      GET    /meridians(.:format)          meridians#index
                 POST   /meridians(.:format)          meridians#create
  new_meridian   GET    /meridians/new(.:format)      meridians#new
  edit_meridian  GET    /meridians/:id/edit(.:format) meridians#edit
  meridian       GET    /meridians/:id(.:format)      meridians#show
                 PATCH  /meridians/:id(.:format)      meridians#update
                 PUT    /meridians/:id(.:format)      meridians#update
                 DELETE /meridians/:id(.:format)      meridians#destroy
=end


end

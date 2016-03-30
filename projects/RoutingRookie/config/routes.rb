Rails.application.routes.draw do

  get '/prezzi_(:category)_(:page).aspx', to: 'guided_offers#listing'
  get '/prezzi_(:category).aspx', to: 'guided_offers#table'

  match '*url', to: 'application#not_acceptable', via: :all

end

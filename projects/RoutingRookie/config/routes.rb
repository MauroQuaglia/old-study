Rails.application.routes.draw do

  get '/prezzi_(:category)_(:page).aspx', to: 'guided_offers#listing'

  match '*url', to: 'application#not_found', via: :all

end

Rails.application.routes.draw do

  get '/prezzi_(:category)_(:page).aspx', to: 'guided_offers#listing', as: :guided_offers_listing
  get '/prezzi_(:category).aspx', to: 'guided_offers#table', as: :guided_offers_table

  get '/prezzo_(:category)_(:search)^min(:min_price)^max(:max_price).aspx',                        to: 'listings#price'
  get '/prezzo_(:category)_(:search)^min(:min_price).aspx', default: {max_price: Float::INFINITY}, to: 'listings#price'
  get '/prezzo_(:category)_(:search)^max(:max_price).aspx', default: {min_price: 0},               to: 'listings#price'
  get '/prezzo_(:category)_(:search).aspx', default: {min_price: 0, max_price: Float::INFINITY},   to: 'listings#price'

  #get '/prezzo_(:category)_(:search)(^min(:min_price))(^max(:max_price)).aspx', to: 'listings#price', constraints: { search: /[^\^%5E]+/x }


  match '*url', to: 'application#not_acceptable', via: :all

end


# test routing con tutte le casistiche di mpping parametri
# test di request con gli status code
# test del controller con tutte le casistiche di preparazione dell'ambiete della view
# test delle view

# decidere gli status code, ...
# controller: ListingsController (per i listini)
# controller: GuidedSearches, GuidedOffers, GuidedTrees, Navigations, GuidedLinks, GuidedPages, GuidedListings
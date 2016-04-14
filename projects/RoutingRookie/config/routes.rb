Rails.application.routes.draw do

  get '/prezzi_(:category)_(:page).aspx', to: 'guided_offers#listing', as: :guided_offers_listing
  get '/prezzi_(:category).aspx'        , to: 'guided_offers#table'  , as: :guided_offers_table


  # get '/prezzo_(:category)_(:search)^min(:min_price)^max(:max_price).aspx', to: 'listings#min_max_price'
  # get '/prezzo_(:category)_(:search)^min(:min_price).aspx', to: 'listings#min_price'
  # get '/prezzo_(:category)_(:search)^max(:max_price).aspx', to: 'listings#max_price'
  #
  # get '/prezzo_(:category)_(:search).aspx', to: 'listings#price' # Ricordarsi di mettere i default per i prezzi.

  # '/prezzo__%5Emin%5Emax.aspx'
  get '/prezzo_(:category)_(:search)(^min(:min_price))(^max(:max_price)).aspx', to: 'listings#price', constraints: { search: /[^\^%5E]+/x }


  match '*url', to: 'application#not_acceptable', via: :all

end




# test routing con tutte le casistiche di mpping parametri
# test di request con gli status code
# test del controller con tutte le casistiche di preparazione dell'ambiete della view
# test delle view

# decidere gli status code, ...
# controller: ListingsController (per i listini)
# controller: GuidedSearches, GuidedOffers, GuidedTrees, Navigations, GuidedLinks, GuidedPages, GuidedListings
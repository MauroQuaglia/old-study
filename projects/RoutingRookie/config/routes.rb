class MyApp

end

Rails.application.routes.draw do

  root to: 'users#show'

  # Bound Parameters
  #  get ':controller(/:action(/:id))'

  # La crea generica!
  # Se chiedo /photos/show/1 risponde!
  # Se chiedo /users/show/3 risponde!
  # GET  /:controller(/:action(/:id))(.:format) :controller#:action
  # Le parentesi significa che i parametri sono opzionali quindi le rotte gestite in realtà sono:
  # /photos
  # /photos/show
  # /photos/show/1

  # Segmenti dinamici
  # get ':controller/:action/:id/:user_id'
  #  GET  /:controller/:action/:id/:user_id(.:format) :controller#:action
  # controller a action sono abbligatori ... poi :id e :user_id dentro l'action li becco come parametri

  # Segmenti statici
  #get ':controller/:action/:id/with_user/:user_id' # with_user è un path fisso.


=begin
  get 'photos/:id',
      to: 'photos#any',
      default: {mauro: 'quaglia'},
      as: 'prova'

=end

  # delete 'photos/:id', to: 'photos#any'

  # http://localhost:3000/xxxbooks
  #  GET  /*books(.:format) photos#show

  #get '*books', to: 'photos#show', format: false # GET  /*books     photos#show
  # get '*books', to: 'photos#show', format: true  # GET  /*books.:format photos#show {:format=>/.+/}

  # get '/users', to: 'users#show'
  # get '/photos', to: redirect('/users')
  # match '/photos', to: MyApp, via: :all bah non capisco come funziona


end

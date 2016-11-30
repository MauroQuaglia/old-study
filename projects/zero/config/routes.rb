Rails.application.routes.draw do

  root(to: 'welcome#home')

  resources(:features)

  match('/404', to: 'errors#not_found', via: :all)
  match('/500', to: 'errors#internal_server_error', via: :all)

end

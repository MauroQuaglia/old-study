Rails.application.routes.draw do

  scope(format: :true) do
    root(to: 'homepage#index')
    match('/404', to: 'errors#not_found', via: :all)
    match('/500', to: 'errors#internal_server_error', via: :all)
  end

end

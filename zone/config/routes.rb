Rails.application.routes.draw do

  scope('(:locale)', locale: %r{it|en}, format: false) do
    localized() do
      root(to: 'welcome#index')
      get('/database', to: 'welcome#database')
      get('/prova', to: 'welcome#index2')
      resources :foods
    end
  end

end

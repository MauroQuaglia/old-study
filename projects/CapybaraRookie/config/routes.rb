Rails.application.routes.draw do

  root 'capybara#welcome', as: :welcome

  get 'capybara' => 'capybara#index', as: :capybara

  get 'capybara-cookie' => 'capybara#show_cookie', as: :capybara_show_cookie

  get 'capybara-bulk-javascript' => 'capybara#capybara_bulk_javascript', as: :capybara_bulk_javascript

end

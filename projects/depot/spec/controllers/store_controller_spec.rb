require 'rails_helper'

RSpec.describe StoreController do
  render_views # Carica l'html della view. Serve per le assert con have_css.

  it 'should get index' do
    get :index

    expect(response).to have_http_status(:success)

    # Questi dovrebbero essere spostati nei test di view.
    expect(response.body).to have_css('#columns #side a', minimum: 4) # In realtà dovrebbe essere un test di Application.
    expect(response.body).to have_css('#main .entry', count: 3) # carica la fixture quindi ci sono 3 elementi
    expect(response.body).to have_css('h3', text: 'Ruby Programming') # check su un elemento
    expect(response.body).to have_css('.price', /\$[,\d]+\.\d\d/) # Boh, non si capisce come dirgli che è una regexp, ma non funziona bene
  end

  it 'markup needed for store.js.coffee' do
    get :index

    expect(response.body).to have_css('.store .entry img', count: 3)
    expect(response.body).to have_css('.entry input[type = submit]', count: 3)
  end




end

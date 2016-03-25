require 'rails_helper'

RSpec.describe GuidedOffersController do

  it 'rejects nil parameters' do
    get :listing
    expect(response).to have_http_status(400)
    expect(controller.params[:category]).to be_nil
    expect(controller.params[:page]).to be_nil

    get :listing, {category: 'cellulari'}
    expect(response).to have_http_status(400)
    expect(controller.params[:category]).to eq('cellulari')
    expect(controller.params[:page]).to be_nil

    get :listing, {page: '1'}
    expect(response).to have_http_status(400)
    expect(controller.params[:category]).to be_nil
    expect(controller.params[:page]).to eq('1')
  end

  it 'rejects empty parameters' do
    get :listing, {category: '', page: ''}
    expect(response).to have_http_status(400)
    expect(controller.params[:category]).to be_empty
    expect(controller.params[:page]).to be_empty

    get :listing, {category: 'cellulari', page: ''}
    expect(response).to have_http_status(400)
    expect(controller.params[:category]).to eq('cellulari')
    expect(controller.params[:page]).to be_empty

    get :listing, {category: '', page: '1'}
    expect(response).to have_http_status(400)
    expect(controller.params[:category]).to be_empty
    expect(controller.params[:page]).to eq('1')
  end

end
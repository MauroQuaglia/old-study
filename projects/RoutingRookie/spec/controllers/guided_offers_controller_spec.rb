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

  it 'manage page parameter' do
    get :listing, {category: 'any', page: 'a'}
    expect(response).to have_http_status(400)
    expect(controller.params[:category]).to eq('any')
    expect(controller.params[:page]).to eq('a')

    get :listing, {category: 'any', page: '-1'}
    expect(response).to have_http_status(400)
    expect(controller.params[:category]).to eq('any')
    expect(controller.params[:page]).to eq('-1')

    get :listing, {category: 'any', page: '0'}
    expect(response).to have_http_status(400)
    expect(controller.params[:category]).to eq('any')
    expect(controller.params[:page]).to eq('0')

    get :listing, {category: 'any', page: '1'}
    expect(response).to have_http_status(200)
    expect(controller.params[:category]).to eq('any')
    expect(controller.params[:page]).to eq('1')

    get :listing, {category: 'any', page: '1000000'}
    expect(response).to have_http_status(410)
    expect(controller.params[:category]).to eq('any')
    expect(controller.params[:page]).to eq('1000000')
  end


  xit 'manage category with valid page parameters' do
    get :listing, {category: 'all', page: '1'}
    expect(response).to have_http_status(400)
    expect(controller.params[:category]).to eq('all')
    expect(controller.params[:page]).to eq('1')

    get :listing, {category: 'telefonia', page: '1'}
    expect(response).to have_http_status(400)
    expect(controller.params[:category]).to eq('telefonia')
    expect(controller.params[:page]).to eq('1')

    get :listing, {category: 'cellulari', page: '1'}
    expect(response).to have_http_status(200)
    expect(controller.params[:category]).to eq('cellulari')
    expect(controller.params[:page]).to eq('1')
  end

end
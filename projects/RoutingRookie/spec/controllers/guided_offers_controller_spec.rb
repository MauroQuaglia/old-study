require 'rails_helper'

RSpec.describe GuidedOffersController do

  context '/prezzi_CATEGORY_PAGE.aspx' do

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
      expect(response).to have_http_status(404)
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

    it 'manage category with valid page parameters' do
      get :listing, {category: 'all', page: '1'}
      expect(response).to have_http_status(404)
      expect(controller.params[:category]).to eq('all')
      expect(controller.params[:page]).to eq('1')

      get :listing, {category: 'telefonia', page: '1'}
      expect(response).to have_http_status(404)
      expect(controller.params[:category]).to eq('telefonia')
      expect(controller.params[:page]).to eq('1')

      get :listing, {category: 'inesistente', page: '1'}
      expect(response).to have_http_status(404)
      expect(controller.params[:category]).to eq('inesistente')
      expect(controller.params[:page]).to eq('1')

      get :listing, {category: 'cellulari', page: '1'}
      expect(response).to have_http_status(200)
      expect(controller.params[:category]).to eq('cellulari')
      expect(controller.params[:page]).to eq('1')
    end
  end

  context '/prezzi_CATEGORY.aspx' do

    it 'rejects nil parameter' do
      get :table
      expect(response).to have_http_status(400)
      expect(controller.params[:category]).to be_nil
    end

    it 'rejects empty parameter' do
      get :table, {category: ''}

      expect(response).to have_http_status(400)
      expect(controller.params[:category]).to be_empty
    end

    it 'manage category parameter' do
      get :table, {category: 'all'}
      expect(response).to have_http_status(200)
      expect(controller.params[:category]).to eq('all')

      get :table, {category: 'telefonia'}
      expect(response).to have_http_status(200)
      expect(controller.params[:category]).to eq('telefonia')

      get :table, {category: 'inesistente'}
      expect(response).to have_http_status(404)
      expect(controller.params[:category]).to eq('inesistente')

      get :table, {category: 'cellulari'}
      expect(response).to have_http_status(200)
      expect(controller.params[:category]).to eq('cellulari')
    end
  end

end
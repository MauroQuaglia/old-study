require 'rails_helper'

RSpec.describe 'Routes' do

  context '/prezzi_CATEGORY_PAGE.aspx' do

    it 'understand empty parameters' do
      expect(get: '/prezzi__.aspx').to route_to({controller: 'guided_offers', action: 'listing'})
      expect(get: '/prezzi_cellulari_.aspx').to route_to({controller: 'guided_offers', action: 'listing', category: 'cellulari'})
      expect(get: '/prezzi__1.aspx').to route_to({controller: 'guided_offers', action: 'listing', page: '1'})
    end

    it 'understand correct parameters' do
      expect(get: '/prezzi_cellulari_1.aspx').to route_to({controller: 'guided_offers', action: 'listing', category: 'cellulari', page: '1'})
    end

  end

  context '/prezzi_CATEGORY.aspx' do

    it 'understand empty parameter' do
      expect(get: '/prezzi_.aspx').to route_to({controller: 'guided_offers', action: 'table'})
    end

    it 'understand correct parameters' do
      expect(get: '/prezzi_cellulari.aspx').to route_to({controller: 'guided_offers', action: 'table', category: 'cellulari'})
    end

  end

end
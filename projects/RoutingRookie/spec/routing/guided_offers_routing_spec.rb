require 'rails_helper'

RSpec.describe 'Routes' do

  context '/prezzo_CATEGORY_SEARCH.aspx' do

    # Ricordarsi di mettere i default per i prezzi.
    it 'understand parameters' do
      expect(get: '/prezzo__.aspx').to route_to({controller: 'listings', action: 'price'})
      expect(get: '/prezzo__nokia.aspx').to route_to({controller: 'listings', action: 'price', search: 'nokia'})
      expect(get: '/prezzo_cellulari_.aspx').to route_to({controller: 'listings', action: 'price', category: 'cellulari'})
      expect(get: '/prezzo_cellulari_nokia.aspx').to route_to({controller: 'listings', action: 'price', category: 'cellulari', search: 'nokia'})
    end

  end

  context '/prezzo_CATEGORY_SEARCH^min(:MIN_PRICE).aspx' do

    it 'understand parameters' do
      expect(get: '/prezzo__%5Emin.aspx').to route_to({controller: 'listings', action: 'min_price'})
      expect(get: '/prezzo__%5Emin100.aspx').to route_to({controller: 'listings', action: 'min_price', min_price: '100'})
      expect(get: '/prezzo__nokia%5Emin.aspx').to route_to({controller: 'listings', action: 'min_price', search: 'nokia'})
      expect(get: '/prezzo__nokia%5Emin100.aspx').to route_to({controller: 'listings', action: 'min_price', search: 'nokia', min_price: '100'})
      expect(get: '/prezzo_cellulari_%5Emin.aspx').to route_to({controller: 'listings', action: 'min_price', category: 'cellulari'})
      expect(get: '/prezzo_cellulari_%5Emin100.aspx').to route_to({controller: 'listings', action: 'min_price', category: 'cellulari', min_price: '100'})
      expect(get: '/prezzo_cellulari_nokia%5Emin.aspx').to route_to({controller: 'listings', action: 'min_price', category: 'cellulari', search: 'nokia'})
      expect(get: '/prezzo_cellulari_nokia%5Emin100.aspx').to route_to({controller: 'listings', action: 'min_price', category: 'cellulari', search: 'nokia', min_price: '100'})
    end


  end

  context '/prezzo_CATEGORY_SEARCH^min(:MIN_PRICE).aspx' do

    it 'understand parameters' do
      expect(get: '/prezzo__%5Emin.aspx').to route_to({controller: 'listings', action: 'min_price'})
      expect(get: '/prezzo__%5Emin100.aspx').to route_to({controller: 'listings', action: 'min_price', min_price: '100'})
      expect(get: '/prezzo__nokia%5Emin.aspx').to route_to({controller: 'listings', action: 'min_price', search: 'nokia'})
      expect(get: '/prezzo__nokia%5Emin100.aspx').to route_to({controller: 'listings', action: 'min_price', search: 'nokia', min_price: '100'})
      expect(get: '/prezzo_cellulari_%5Emin.aspx').to route_to({controller: 'listings', action: 'min_price', category: 'cellulari'})
      expect(get: '/prezzo_cellulari_%5Emin100.aspx').to route_to({controller: 'listings', action: 'min_price', category: 'cellulari', min_price: '100'})
      expect(get: '/prezzo_cellulari_nokia%5Emin.aspx').to route_to({controller: 'listings', action: 'min_price', category: 'cellulari', search: 'nokia'})
      expect(get: '/prezzo_cellulari_nokia%5Emin100.aspx').to route_to({controller: 'listings', action: 'min_price', category: 'cellulari', search: 'nokia', min_price: '100'})
    end
  end

  context '/prezzo_CATEGORY_SEARCH^max(:MAX_PRICE).aspx' do

    it 'understand parameters' do
      expect(get: '/prezzo__%5Emax.aspx').to route_to({controller: 'listings', action: 'max_price'})
      expect(get: '/prezzo__%5Emax100.aspx').to route_to({controller: 'listings', action: 'max_price', max_price: '100'})
      expect(get: '/prezzo__nokia%5Emax.aspx').to route_to({controller: 'listings', action: 'max_price', search: 'nokia'})
      expect(get: '/prezzo__nokia%5Emax100.aspx').to route_to({controller: 'listings', action: 'max_price', search: 'nokia', max_price: '100'})
      expect(get: '/prezzo_cellulari_%5Emax.aspx').to route_to({controller: 'listings', action: 'max_price', category: 'cellulari'})
      expect(get: '/prezzo_cellulari_%5Emax100.aspx').to route_to({controller: 'listings', action: 'max_price', category: 'cellulari', max_price: '100'})
      expect(get: '/prezzo_cellulari_nokia%5Emax.aspx').to route_to({controller: 'listings', action: 'max_price', category: 'cellulari', search: 'nokia'})
      expect(get: '/prezzo_cellulari_nokia%5Emax100.aspx').to route_to({controller: 'listings', action: 'max_price', category: 'cellulari', search: 'nokia', max_price: '100'})
    end
  end

  context '/prezzo_CATEGORY_SEARCH^min(:MIN_PRICE)^max(:MAX_PRICE).aspx' do

    it 'understand parameters' do
      expect(get: '/prezzo__%5Emin%5Emax.aspx').to route_to({controller: 'listings', action: 'min_max_price'})
      expect(get: '/prezzo__%5Emin%5Emax500.aspx').to route_to({controller: 'listings', action: 'min_max_price', max_price: '500'})
      expect(get: '/prezzo__%5Emin100%5Emax.aspx').to route_to({controller: 'listings', action: 'min_max_price', min_price: '100'})
      expect(get: '/prezzo__%5Emin100%5Emax500.aspx').to route_to({controller: 'listings', action: 'min_max_price', min_price: '100', max_price: '500'})
      expect(get: '/prezzo__nokia%5Emin%5Emax.aspx').to route_to({controller: 'listings', action: 'min_max_price', search: 'nokia'})
      expect(get: '/prezzo__nokia%5Emin%5Emax500.aspx').to route_to({controller: 'listings', action: 'min_max_price', search: 'nokia', max_price: '500'})
      expect(get: '/prezzo__nokia%5Emin100%5Emax.aspx').to route_to({controller: 'listings', action: 'min_max_price', search: 'nokia', min_price: '100'})
      expect(get: '/prezzo__nokia%5Emin100%5Emax500.aspx').to route_to({controller: 'listings', action: 'min_max_price', search: 'nokia', min_price: '100', max_price: '500'})
      expect(get: '/prezzo_cellulari_%5Emin%5Emax.aspx').to route_to({controller: 'listings', action: 'min_max_price', category: 'cellulari'})
      expect(get: '/prezzo_cellulari_%5Emin%5Emax500.aspx').to route_to({controller: 'listings', action: 'min_max_price', max_price: '500', category: 'cellulari'})
      expect(get: '/prezzo_cellulari_%5Emin100%5Emax.aspx').to route_to({controller: 'listings', action: 'min_max_price', min_price: '100', category: 'cellulari'})
      expect(get: '/prezzo_cellulari_%5Emin100%5Emax500.aspx').to route_to({controller: 'listings', action: 'min_max_price', min_price: '100', max_price: '500', category: 'cellulari'})
      expect(get: '/prezzo_cellulari_nokia%5Emin%5Emax.aspx').to route_to({controller: 'listings', action: 'min_max_price', search: 'nokia', category: 'cellulari'})
      expect(get: '/prezzo_cellulari_nokia%5Emin%5Emax500.aspx').to route_to({controller: 'listings', action: 'min_max_price', search: 'nokia', max_price: '500', category: 'cellulari'})
      expect(get: '/prezzo_cellulari_nokia%5Emin100%5Emax.aspx').to route_to({controller: 'listings', action: 'min_max_price', search: 'nokia', min_price: '100', category: 'cellulari'})
      expect(get: '/prezzo_cellulari_nokia%5Emin100%5Emax500.aspx').to route_to({controller: 'listings', action: 'min_max_price', search: 'nokia', min_price: '100', max_price: '500', category: 'cellulari'})
    end
  end

end
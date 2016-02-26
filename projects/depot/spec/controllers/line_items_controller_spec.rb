require 'rails_helper'

RSpec.describe LineItemsController do
  fixtures :products

  describe 'POST #create' do

    it 'should create line_item' do
      expect { post :create, product_id: products(:ruby).id }.
          to change { LineItem.count }.from(0).to(1)
    end

    it 'should create line_item via ajax' do
      expect { xhr :post, :create, product_id: products(:ruby).id }.
          to change { LineItem.count }.from(0).to(1)
    end

    it 'should redirect after create a line item' do
      post :create, product_id: products(:ruby).id

      # Dato che non trova il carrello in sessione ne crea uno in automatico.
      # Il controller crea una line_item per il carrello.
      # Con assign ho accesso alla variabile nel controller, non solo per impostarla ma anche per leggerla.
      expect(response).
          to redirect_to store_path
    end

  end

end

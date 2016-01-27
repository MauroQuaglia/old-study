require 'rails_helper'

RSpec.describe LineItemsController do
  fixtures :products

  describe 'POST #create' do

    it 'should create line_item' do
      expect { post :create, product_id: products(:ruby).id }.
          to change { LineItem.count }.from(0).to(1)
    end

    it 'should redirect after create a line item' do
      post :create, product_id: products(:ruby).id

      expect(response).to redirect_to (cart_path(assigns(:line_item).cart))
    end

  end

end

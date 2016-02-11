require 'rails_helper'

RSpec.describe CartsController do

  describe 'DELETE #destroy' do

    it 'should destroy a cart' do
      # Andrà sul db di test.
      cart = Cart.create
      session[:cart_id] = cart

      expect { delete :destroy, id: cart.id }.to change { Cart.count }.from(1).to(0)
      expect(response).to redirect_to(store_url)
    end


  end

end

require 'rails_helper'

RSpec.describe OrdersController do
  fixtures :products

  describe '#new' do

    it 'require item in cart' do
      get :new

      expect(response).to redirect_to(store_path)
      expect(flash[:notice]).to eq('Your cart is empty!')
    end

    it 'success when items in cart' do
      item = LineItem.new
      item.build_cart
      item.product = products(:ruby)
      item.save!

      session[:cart_id] = item.cart_id

      get :new

      expect(response).to have_http_status(:success)
    end

  end

  describe '#create' do

    it 'should create order' do
      # La form fa il submit di un order, quindi gli passa tutti i campi address, email, name, pay_type.
      expect { post :create, order: {address: 'xyz', email: 'x@y.z', name: 'Xyz', pay_type: Order::PAYMENT_TYPES.first} }.to change { Order.count }.by(1)
      expect(response).to redirect_to(store_path)
    end

  end

end

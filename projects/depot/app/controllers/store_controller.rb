class StoreController < ApplicationController
  include StoreCounter, CurrentCart
  before_action(:set_cart)
  skip_before_action(:authorize)

  def index
    # E' lazy, la query la fa quando chiedo a @product qualche operazione (es. each) altrimenti non fa nulla.
    @products = Product.order(:title)

    update(session)

    @store_counter = session[:store_counter]
  end

end

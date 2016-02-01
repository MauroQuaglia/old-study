class StoreController < ApplicationController
  include StoreCounter

  def index
    # E' lazy, la query la fa quando chiedo a @product qualche operazione (es. each) altrimenti non fa nulla.
    @products = Product.order(:title)

    update(session)

    @store_counter = session[:store_counter]
  end

end

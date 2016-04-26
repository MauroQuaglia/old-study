class StoreController < ApplicationController
  include StoreCounter, CurrentCart
  before_action(:set_cart)
  skip_before_action(:authorize)

  def index

    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end

    # E' lazy, la query la fa quando chiedo a @product qualche operazione (es. each) altrimenti non fa nulla.

    update(session)

    @store_counter = session[:store_counter]
  end

end

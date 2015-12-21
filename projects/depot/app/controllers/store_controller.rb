class StoreController < ApplicationController

  def index
    # E' lazy, la query la fa quando chiedo a @product qualche operazione (es. each) altrimenti non fa nulla.
    @products = Product.order(:title)


  end

end

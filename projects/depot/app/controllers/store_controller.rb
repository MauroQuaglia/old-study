class StoreController < ApplicationController

  def index
    # E' lazy, la query la fa quando chiedo a @product qualche operazione (es. each) altrimenti non fa nulla.
    @products = Product.order(:title)
    @session_id = session[:session_id]
    session[:mq] = 'MQ'
    @session_inspector = session.inspect
  end

end

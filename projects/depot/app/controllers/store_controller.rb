#require 'hello_world' Se metto l'autoload_path il require non serve

class StoreController < ApplicationController
  include StoreCounter, CurrentCart
  before_action(:set_cart)
  skip_before_action(:authorize)

  def index
    # set di informazioni disponibili
    #return render text: action_name.inspect
    #return render text: cookies.inspect
    #return render text: headers.inspect
    #return render text: params.inspect
    #return render text: request.inspect
    #return render text: response.inspect
    #return render text: session.inspect

    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end

    @say = HelloWorld.say
    # E' lazy, la query la fa quando chiedo a @product qualche operazione (es. each) altrimenti non fa nulla.

    update(session)

    @store_counter = session[:store_counter]
  end


  def method_missing(name, *args)
    render(inline: "Action sconosciuta: #{name}; parameters: #{params.inspect}")
  end


  def test
    #render text: 'cccj'
    render file: '/home/xpuser/mauro-quaglia/studio/projects/depot/_appunti_depot/documentazione.txt'
  end
end


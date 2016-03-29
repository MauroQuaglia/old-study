class GuidedOffersController < ApplicationController

  def listing
    puts "Category: [#{params[:category]}]; Page: [#{params[:page]}]"

    category = params[:category]
    page = params[:page]

    # Validazione della presenza dei parametri.
    if not (category.present? && page.present?)
      return bad_request
    end

    # A questo punto entrambe i parametri sono presenti...

    # Validazione del parametro page.
    if not is_integer?(page)
      return bad_request
    end

    # Dato che c'è il parametri page (indipendentemente da cosa esso sia)
    #if (category == 'all' || category == 'macro')
   #   return bad_request
    #end


    render text: "Category: [#{params[:category]}]; Page: [#{params[:page]}]"
  end

  private

  def is_integer?(string)
    true if Integer(string) rescue false
  end


end
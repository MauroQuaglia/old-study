class GuidedOffersController < ApplicationController

  def listing
    category = params[:category]
    page = params[:page]

    if category.nil? || page.nil?
      return bad_request
    end

    if not is_integer?(page)
      return bad_request
    end

    page_number = Integer(page)

    if page_number < 0
      return bad_request
    end

    if page_number == 0
      return not_found
    end

    if page_number >= 1_000_000
      return gone
    end

    # Il parametro page è corretto, controllo la categoria
    if category == 'all' || category == 'telefonia' || category == 'inesistente'
      return not_found
    end

    render text: "LISTINO: [#{params.inspect}]"
  end

  def table
    #guided o brand o listino con redirect http://www.trovaprezzi.it/prezzi_accessori-fotografia.aspx
    category = params[:category]

    if category.nil?
      return bad_request
    end

    if category == 'inesistente'
      return not_found
    end

    if category == 'accessori-cellulari'
      return render text: 'Guided: accessori-cellulari'
    end

    if category == 'accessori-fotografia'
      # non dovrei fare redirect ma chiamare la rotta con 200
      #return redirect_to guided_offers_listing_path(category, 1)
      #render :action => :listing
    end

    render text: "TABLE: [#{params.inspect}]"
  end

  private

  def is_integer?(string)
    true if Integer(string) rescue false
  end


end
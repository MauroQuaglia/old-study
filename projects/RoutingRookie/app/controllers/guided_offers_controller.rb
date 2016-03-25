class GuidedOffersController < ApplicationController

  def listing
    puts "Category: [#{params[:category]}]; Page: [#{params[:page]}]"

    category = params[:category]
    page = params[:page]

    if not (category.present? && page.present?)
      return bad_request
    end



    render text: "Category: [#{params[:category]}]; Page: [#{params[:page]}]"
  end

end
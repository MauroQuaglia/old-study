class GuidedOffersController < ApplicationController

  def listing
    puts "Category: [#{params[:category]}]; Page: [#{params[:page]}]"
    return bad_request if (!params[:category].present? || !params[:page].present?)
    render text: "Category: [#{params[:category]}]; Page: [#{params[:page]}]"
  end

end
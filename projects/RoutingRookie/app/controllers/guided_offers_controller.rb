class GuidedOffersController < ApplicationController

  def listing
    render text: "Category: [#{params[:category]}]; Page: [#{params[:page]}]"
  end

end
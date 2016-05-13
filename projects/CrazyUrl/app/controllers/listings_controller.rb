class ListingsController < ApplicationController

  def index
    render text: "Fprezzo with params: [#{params.inspect}]"
  end

end
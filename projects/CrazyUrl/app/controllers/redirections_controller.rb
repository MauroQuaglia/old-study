class RedirectionsController < ApplicationController

  def index
    puts params.inspect
    return not_found
  end

end
class UsersController < ApplicationController

  def show
    render text: params[:id]
  end

end
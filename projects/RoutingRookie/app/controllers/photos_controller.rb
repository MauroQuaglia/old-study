class PhotosController < ApplicationController

  def destroy
    render text 'Destroyed!'
  end

  def show
    render text: params[:id]
  end

  def index
    render text: 'index'
  end

end
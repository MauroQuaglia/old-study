class PhotosController < ApplicationController

  def destroy
    render text 'Destroyed!'
  end

  def show
    render text: params.inspect
  end

  def index
    render text: 'index'
  end

  def any
    render text: params.inspect
  end

end
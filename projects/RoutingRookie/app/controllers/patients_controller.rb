class PatientsController < ApplicationController

  def show
    @id = params[:id]
    @photos_path = photos_path
  end

end

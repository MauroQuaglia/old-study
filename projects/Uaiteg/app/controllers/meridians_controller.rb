class MeridiansController < ApplicationController
  before_action :set_meridian, only: [:show, :edit, :update, :destroy]

  # GET /meridians
  # GET /meridians.json
  def index
    @meridians = Meridian.all
  end

  # GET /meridians/1
  # GET /meridians/1.json
  def show
  end

  # GET /meridians/new
  def new
    @meridian = Meridian.new
  end

  # GET /meridians/1/edit
  def edit
  end

  # POST /meridians
  # POST /meridians.json
  def create
    @meridian = Meridian.new(meridian_params)

    respond_to do |format|
      if @meridian.save
        format.html { redirect_to @meridian, notice: 'Meridian was successfully created.' }
        format.json { render :show, status: :created, location: @meridian }
      else
        format.html { render :new }
        format.json { render json: @meridian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meridians/1
  # PATCH/PUT /meridians/1.json
  def update
    respond_to do |format|
      if @meridian.update(meridian_params)
        format.html { redirect_to @meridian, notice: 'Meridian was successfully updated.' }
        format.json { render :show, status: :ok, location: @meridian }
      else
        format.html { render :edit }
        format.json { render json: @meridian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meridians/1
  # DELETE /meridians/1.json
  def destroy
    @meridian.destroy
    respond_to do |format|
      format.html { redirect_to meridians_url, notice: 'Meridian was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meridian
      @meridian = Meridian.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meridian_params
      params.require(:meridian).permit(:name)
    end
end

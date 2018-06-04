class ReleaseCouriersController < ApplicationController
  #before_action :set_release_courier, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  load_and_authorize_resource param_method: :release_courier_params

  # GET /release_couriers
  # GET /release_couriers.json
  def index
    @release_couriers = ReleaseCourier.all
  end

  # GET /release_couriers/1
  # GET /release_couriers/1.json
  def show
  end

  # GET /release_couriers/new
  def new
    @release_courier = ReleaseCourier.new
  end

  # GET /release_couriers/1/edit
  def edit
  end

  # POST /release_couriers
  # POST /release_couriers.json
  def create
    @release_courier = ReleaseCourier.new(release_courier_params)

    respond_to do |format|
      if @release_courier.save
        format.html { redirect_to @release_courier, notice: 'Release courier was successfully created.' }
        format.json { render :show, status: :created, location: @release_courier }
      else
        format.html { render :new }
        format.json { render json: @release_courier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /release_couriers/1
  # PATCH/PUT /release_couriers/1.json
  def update
    respond_to do |format|
      if @release_courier.update(release_courier_params)
        format.html { redirect_to @release_courier, notice: 'Release courier was successfully updated.' }
        format.json { render :show, status: :ok, location: @release_courier }
      else
        format.html { render :edit }
        format.json { render json: @release_courier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /release_couriers/1
  # DELETE /release_couriers/1.json
  def destroy
    @release_courier.destroy
    respond_to do |format|
      format.html { redirect_to release_couriers_url, notice: 'Release courier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_release_courier
      @release_courier = ReleaseCourier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def release_courier_params
      params.require(:release_courier).permit(:date, :destination, :reference, :orderNumber, :project_id, :user_id, {file: [].to_s})
    end
end

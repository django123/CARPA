class StatutCouriersController < ApplicationController
  before_action :set_statut_courier, only: [:show, :edit, :update, :destroy]

  # GET /statut_couriers
  # GET /statut_couriers.json
  def index
    @statut_couriers = StatutCourier.all
  end

  # GET /statut_couriers/1
  # GET /statut_couriers/1.json
  def show
  end

  # GET /statut_couriers/new
  def new
    @statut_courier = StatutCourier.new
  end

  # GET /statut_couriers/1/edit
  def edit
  end

  # POST /statut_couriers
  # POST /statut_couriers.json
  def create
    @statut_courier = StatutCourier.new(statut_courier_params)

    respond_to do |format|
      if @statut_courier.save
        format.html { redirect_to @statut_courier, notice: 'Statut courier was successfully created.' }
        format.json { render :show, status: :created, location: @statut_courier }
      else
        format.html { render :new }
        format.json { render json: @statut_courier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statut_couriers/1
  # PATCH/PUT /statut_couriers/1.json
  def update
    respond_to do |format|
      if @statut_courier.update(statut_courier_params)
        format.html { redirect_to @statut_courier, notice: 'Statut courier was successfully updated.' }
        format.json { render :show, status: :ok, location: @statut_courier }
      else
        format.html { render :edit }
        format.json { render json: @statut_courier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statut_couriers/1
  # DELETE /statut_couriers/1.json
  def destroy
    @statut_courier.destroy
    respond_to do |format|
      format.html { redirect_to statut_couriers_url, notice: 'Statut courier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statut_courier
      @statut_courier = StatutCourier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statut_courier_params
      params.require(:statut_courier).permit(:statut)
    end
end

class EntryCouriersController < ApplicationController
  #before_action :set_entry_courier, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!
  load_and_authorize_resource param_method: :entry_courier_params

  # GET /entry_couriers
  # GET /entry_couriers.json
  def index
    @entry_couriers = EntryCourier.all
  end

  # GET /entry_couriers/1
  # GET /entry_couriers/1.json
  def show
  end

  # GET /entry_couriers/new
  def new
    @entry_courier = EntryCourier.new
  end

  # GET /entry_couriers/1/edit
  def edit
  end

  # POST /entry_couriers
  # POST /entry_couriers.json
  def create
    @entry_courier = EntryCourier.new(entry_courier_params)

    respond_to do |format|
      if @entry_courier.save
        format.html { redirect_to @entry_courier, notice: 'Entry courier was successfully created.' }
        format.json { render :show, status: :created, location: @entry_courier }
      else
        format.html { render :new }
        format.json { render json: @entry_courier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry_couriers/1
  # PATCH/PUT /entry_couriers/1.json
  def update
    respond_to do |format|
      if @entry_courier.update(entry_courier_params)
        format.html { redirect_to @entry_courier, notice: 'Entry courier was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry_courier }
      else
        format.html { render :edit }
        format.json { render json: @entry_courier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_couriers/1
  # DELETE /entry_couriers/1.json
  def destroy
    @entry_courier.destroy
    respond_to do |format|
      format.html { redirect_to entry_couriers_url, notice: 'Entry courier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_courier
      @entry_courier = EntryCourier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_courier_params
      params.require(:entry_courier).permit(:reference, :subject,
                                            :sender, :receveir,
                                            :duration, :sentDate,
                                            :orderNumber, :user_id,
                                            :project_id, :aasm_state,{file: [].to_s})
    end
end

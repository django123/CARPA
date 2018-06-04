class ArchiveEntryCouriersController < ApplicationController
  #before_action :set_archive_entry_courier, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!
  load_and_authorize_resource param_method: :archive_entry_courier_params
  # GET /archive_entry_couriers
  # GET /archive_entry_couriers.json
  def index
    @archive_entry_couriers = ArchiveEntryCourier.all
  end

  # GET /archive_entry_couriers/1
  # GET /archive_entry_couriers/1.json
  def show
  end

  # GET /archive_entry_couriers/new
  def new
    @archive_entry_courier = ArchiveEntryCourier.new
  end

  # GET /archive_entry_couriers/1/edit
  def edit
  end

  # POST /archive_entry_couriers
  # POST /archive_entry_couriers.json
  def create
    @archive_entry_courier = ArchiveEntryCourier.new(archive_entry_courier_params)

    respond_to do |format|
      if @archive_entry_courier.save
        format.html { redirect_to @archive_entry_courier, notice: 'Archive entry courier was successfully created.' }
        format.json { render :show, status: :created, location: @archive_entry_courier }
      else
        format.html { render :new }
        format.json { render json: @archive_entry_courier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archive_entry_couriers/1
  # PATCH/PUT /archive_entry_couriers/1.json
  def update
    respond_to do |format|
      if @archive_entry_courier.update(archive_entry_courier_params)
        format.html { redirect_to @archive_entry_courier, notice: 'Archive entry courier was successfully updated.' }
        format.json { render :show, status: :ok, location: @archive_entry_courier }
      else
        format.html { render :edit }
        format.json { render json: @archive_entry_courier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archive_entry_couriers/1
  # DELETE /archive_entry_couriers/1.json
  def destroy
    @archive_entry_courier.destroy
    respond_to do |format|
      format.html { redirect_to archive_entry_couriers_url, notice: 'Archive entry courier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archive_entry_courier
      @archive_entry_courier = ArchiveEntryCourier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archive_entry_courier_params
      params.require(:archive_entry_courier).permit(:user_id, :entry_courier_id,
                                                    :description, :name,
                                                    :reference, {file: [].to_s})
    end
end

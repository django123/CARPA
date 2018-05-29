class ArchiveReleaseCouriersController < ApplicationController
  #before_action :set_archive_release_courier, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!
  load_and_authorize_resource param_method: :archive_release_courier_params
  # GET /archive_release_couriers
  # GET /archive_release_couriers.json
  def index
    @archive_release_couriers = ArchiveReleaseCourier.all
  end

  # GET /archive_release_couriers/1
  # GET /archive_release_couriers/1.json
  def show
  end

  # GET /archive_release_couriers/new
  def new
    @archive_release_courier = ArchiveReleaseCourier.new
  end

  # GET /archive_release_couriers/1/edit
  def edit
  end

  # POST /archive_release_couriers
  # POST /archive_release_couriers.json
  def create
    @archive_release_courier = ArchiveReleaseCourier.new(archive_release_courier_params)

    respond_to do |format|
      if @archive_release_courier.save
        format.html { redirect_to @archive_release_courier, notice: 'Archive release courier was successfully created.' }
        format.json { render :show, status: :created, location: @archive_release_courier }
      else
        format.html { render :new }
        format.json { render json: @archive_release_courier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archive_release_couriers/1
  # PATCH/PUT /archive_release_couriers/1.json
  def update
    respond_to do |format|
      if @archive_release_courier.update(archive_release_courier_params)
        format.html { redirect_to @archive_release_courier, notice: 'Archive release courier was successfully updated.' }
        format.json { render :show, status: :ok, location: @archive_release_courier }
      else
        format.html { render :edit }
        format.json { render json: @archive_release_courier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archive_release_couriers/1
  # DELETE /archive_release_couriers/1.json
  def destroy
    @archive_release_courier.destroy
    respond_to do |format|
      format.html { redirect_to archive_release_couriers_url, notice: 'Archive release courier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archive_release_courier
      @archive_release_courier = ArchiveReleaseCourier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archive_release_courier_params
      params.require(:archive_release_courier).permit(:user_id, :release_courier_id,
                                                      :description, :name,
                                                      :reference, {file: []})
    end
end

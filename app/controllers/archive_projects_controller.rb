class ArchiveProjectsController < ApplicationController
  #before_action :set_archive_project, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!
  load_and_authorize_resource param_method: :archive_project_params
  # GET /archive_projects
  # GET /archive_projects.json
  def index
    @archive_projects = ArchiveProject.all
  end

  # GET /archive_projects/1
  # GET /archive_projects/1.json
  def show
  end

  # GET /archive_projects/new
  def new
    @archive_project = ArchiveProject.new
  end

  # GET /archive_projects/1/edit
  def edit
  end

  # POST /archive_projects
  # POST /archive_projects.json
  def create
    @archive_project = ArchiveProject.new(archive_project_params)

    respond_to do |format|
      if @archive_project.save
        format.html { redirect_to @archive_project, notice: 'Archive project was successfully created.' }
        format.json { render :show, status: :created, location: @archive_project }
      else
        format.html { render :new }
        format.json { render json: @archive_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archive_projects/1
  # PATCH/PUT /archive_projects/1.json
  def update
    respond_to do |format|
      if @archive_project.update(archive_project_params)
        format.html { redirect_to @archive_project, notice: 'Archive project was successfully updated.' }
        format.json { render :show, status: :ok, location: @archive_project }
      else
        format.html { render :edit }
        format.json { render json: @archive_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archive_projects/1
  # DELETE /archive_projects/1.json
  def destroy
    @archive_project.destroy
    respond_to do |format|
      format.html { redirect_to archive_projects_url, notice: 'Archive project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archive_project
      @archive_project = ArchiveProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archive_project_params
      params.require(:archive_project).permit(:user_id, :project_id,
                                              :description, :name,
                                              :reference, {file: []})
    end
end

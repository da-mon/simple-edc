class StudyCentresController < ApplicationController
  before_action :set_study_centre, only: [:show, :edit, :update, :destroy]

  # GET /study_centres
  # GET /study_centres.json
  def index
    @study_centres = StudyCentre.all
  end

  # GET /study_centres/1
  # GET /study_centres/1.json
  def show
  end

  # GET /study_centres/new
  def new
    @study_centre = StudyCentre.new
  end

  # GET /study_centres/1/edit
  def edit
  end

  # POST /study_centres
  # POST /study_centres.json
  def create
    @study_centre = StudyCentre.new(study_centre_params)

    respond_to do |format|
      if @study_centre.save
        format.html { redirect_to @study_centre, notice: 'Study centre was successfully created.' }
        format.json { render :show, status: :created, location: @study_centre }
      else
        format.html { render :new }
        format.json { render json: @study_centre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_centres/1
  # PATCH/PUT /study_centres/1.json
  def update
    respond_to do |format|
      if @study_centre.update(study_centre_params)
        format.html { redirect_to @study_centre, notice: 'Study centre was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_centre }
      else
        format.html { render :edit }
        format.json { render json: @study_centre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_centres/1
  # DELETE /study_centres/1.json
  def destroy
    @study_centre.destroy
    respond_to do |format|
      format.html { redirect_to study_centres_url, notice: 'Study centre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_study_centre
    @study_centre = StudyCentre.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def study_centre_params
    params.require(:study_centre).permit(:references, :references)
  end
end

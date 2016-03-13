class StudyEventFormsController < ApplicationController
  before_action :set_study_event_form, only: [:show, :edit, :update, :destroy]

  # GET /study_event_forms
  # GET /study_event_forms.json
  def index
    @study_event_forms = StudyEventForm.all
  end

  # GET /study_event_forms/1
  # GET /study_event_forms/1.json
  def show
  end

  # GET /study_event_forms/new
  def new
    @study_event_form = StudyEventForm.new
  end

  # GET /study_event_forms/1/edit
  def edit
  end

  # POST /study_event_forms
  # POST /study_event_forms.json
  def create
    @study_event_form = StudyEventForm.new(study_event_form_params)

    respond_to do |format|
      if @study_event_form.save
        format.html { redirect_to @study_event_form, notice: 'Study event form was successfully created.' }
        format.json { render :show, status: :created, location: @study_event_form }
      else
        format.html { render :new }
        format.json { render json: @study_event_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_event_forms/1
  # PATCH/PUT /study_event_forms/1.json
  def update
    respond_to do |format|
      if @study_event_form.update(study_event_form_params)
        format.html { redirect_to @study_event_form, notice: 'Study event form was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_event_form }
      else
        format.html { render :edit }
        format.json { render json: @study_event_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_event_forms/1
  # DELETE /study_event_forms/1.json
  def destroy
    @study_event_form.destroy
    respond_to do |format|
      format.html { redirect_to study_event_forms_url, notice: 'Study event form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_event_form
      @study_event_form = StudyEventForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_event_form_params
      params.require(:study_event_form).permit(:study_event_id, :study_form_id)
    end
end

class StudyFormsController < ApplicationController
  before_action :set_study_form, only: [:show, :edit, :update, :destroy]

  # GET /study_forms
  # GET /study_forms.json
  def index
    @study_forms = StudyForm.all
  end

  # GET /study_forms/1
  # GET /study_forms/1.json
  def show
  end

  # GET /study_forms/new
  def new
    @study_form = StudyForm.new
  end

  # GET /study_forms/1/edit
  def edit
  end

  # POST /study_forms
  # POST /study_forms.json
  def create
    @study_form = StudyForm.new(study_form_params)

    respond_to do |format|
      if @study_form.save
        format.html { redirect_to @study_form, notice: 'Study form was successfully created.' }
        format.json { render :show, status: :created, location: @study_form }
      else
        format.html { render :new }
        format.json { render json: @study_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_forms/1
  # PATCH/PUT /study_forms/1.json
  def update
    respond_to do |format|
      if @study_form.update(study_form_params)
        format.html { redirect_to @study_form, notice: 'Study form was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_form }
      else
        format.html { render :edit }
        format.json { render json: @study_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_forms/1
  # DELETE /study_forms/1.json
  def destroy
    @study_form.destroy
    respond_to do |format|
      format.html { redirect_to study_forms_url, notice: 'Study form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_form
      @study_form = StudyForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_form_params
      params[:study_form]
    end
end

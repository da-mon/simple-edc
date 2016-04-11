class FormConditionsController < ApplicationController
  before_action :set_form, only: [:new, :create, :index]
  before_action :set_form_condition, only: [:show, :edit, :update, :destroy]

  # GET /form_conditions
  # GET /form_conditions.json
  def index
    @form_conditions = FormCondition.all
  end

  # GET /form_conditions/1
  # GET /form_conditions/1.json
  def show
  end

  # GET /form_conditions/new
  def new
    @form_condition = @form.form_conditions.build
  end

  # GET /form_conditions/1/edit
  def edit
  end

  # POST /form_conditions
  # POST /form_conditions.json
  def create
    respond_to do |format|
      if create_form_condition
        format.html { redirect_to edit_form_condition_path @form_condition, notice: 'Form condition was successfully created.' }
        format.json { render :show, status: :created, location: @form_condition }
      else
        format.html { render :new }
        format.json { render json: @form_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_conditions/1
  # PATCH/PUT /form_conditions/1.json
  def update
    respond_to do |format|
      if @form_condition.update(form_condition_params)
        format.html { redirect_to edit_form_condition_path @form_condition, notice: 'Form condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @form_condition }
      else
        format.html { render :edit }
        format.json { render json: @form_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_conditions/1
  # DELETE /form_conditions/1.json
  def destroy
    @form_condition.destroy
    respond_to do |format|
      format.html { redirect_to edit_form_path @form_condition.form, notice: 'Form condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def create_form_condition
    @form_condition = @form.form_conditions.create(form_condition_params)
  end

  def set_form
    @form = Form.find(params[:form_id])
  end

  def set_form_condition
    @form_condition = FormCondition.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def form_condition_params
    params.require(:form_condition).permit(:form_id)
  end
end

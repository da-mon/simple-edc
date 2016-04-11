class FormConditionConditionsController < ApplicationController
  before_action :set_form_condition, only: [:new, :create, :index]
  before_action :set_form_condition_condition, only: [:show, :edit, :update, :destroy]

  # GET /form_condition_conditions
  # GET /form_condition_conditions.json
  def index
    @form_condition_conditions = FormConditionCondition.all
  end

  # GET /form_condition_conditions/1
  # GET /form_condition_conditions/1.json
  def show
  end

  # GET /form_condition_conditions/new
  def new
    @form_condition_condition = @form_condition.form_condition_conditions.build
  end

  # GET /form_condition_conditions/1/edit
  def edit
  end

  # POST /form_condition_conditions
  # POST /form_condition_conditions.json
  def create
    respond_to do |format|
      if create_form_condition_condition
        format.html { redirect_to edit_form_condition_path @form_condition_condition.form_condition, notice: 'Form condition condition was successfully created.' }
        format.json { render :show, status: :created, location: @form_condition_condition }
      else
        format.html { render :new }
        format.json { render json: @form_condition_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_condition_conditions/1
  # PATCH/PUT /form_condition_conditions/1.json
  def update
    respond_to do |format|
      if @form_condition_condition.update(form_condition_condition_params)
        format.html { redirect_to edit_form_condition_path @form_condition_condition.form_condition, notice: 'Form condition condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @form_condition_condition }
      else
        format.html { render :edit }
        format.json { render json: @form_condition_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_condition_conditions/1
  # DELETE /form_condition_conditions/1.json
  def destroy
    @form_condition_condition.destroy
    respond_to do |format|
      format.html { redirect_to form_condition_conditions_url, notice: 'Form condition condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def create_form_condition_condition
    @form_condition_condition = @form_condition.form_condition_conditions.create(form_condition_condition_params)
  end

  def set_form_condition
    @form_condition = FormCondition.find(params[:form_condition_id])
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_form_condition_condition
    @form_condition_condition = FormConditionCondition.find(params[:id])
    @form_condition = @form_condition_condition.form_condition
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def form_condition_condition_params
    params.require(:form_condition_condition).permit(:form_condition_id, :field_id, :connector, :operator, :operand)
  end
end

class FormConditionFieldsController < ApplicationController
  before_action :set_form_condition, only: [:new, :create, :index]
  before_action :set_form_condition_field, only: [:show, :edit, :update, :destroy]

  # GET /form_condition_fields
  # GET /form_condition_fields.json
  def index
    @form_condition_fields = FormConditionField.all
  end

  # GET /form_condition_fields/1
  # GET /form_condition_fields/1.json
  def show
  end

  # GET /form_condition_fields/new
  def new
    @form_condition_field = @form_condition.form_condition_fields.build
  end

  # GET /form_condition_fields/1/edit
  def edit
  end

  # POST /form_condition_fields
  # POST /form_condition_fields.json
  def create
    respond_to do |format|
      if create_form_condition_field
        format.html { redirect_to edit_form_condition_path @form_condition_field.form_condition, notice: 'Form condition condition was successfully created.' }
        format.json { render :show, status: :created, location: @form_condition_field }
      else
        format.html { render :new }
        format.json { render json: @form_condition_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_condition_fields/1
  # PATCH/PUT /form_condition_fields/1.json
  def update
    respond_to do |format|
      if @form_condition_field.update(form_condition_field_params)
        format.html { redirect_to edit_form_condition_path @form_condition_field.form_condition, notice: 'Form condition condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @form_condition_field }
      else
        format.html { render :edit }
        format.json { render json: @form_condition_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_condition_fields/1
  # DELETE /form_condition_fields/1.json
  def destroy
    @form_condition_field.destroy
    respond_to do |format|
      format.html { redirect_to form_condition_fields_url, notice: 'Form condition condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def create_form_condition_field
    @form_condition_field = @form_condition.form_condition_fields.create(form_condition_field_params)
  end

  def set_form_condition
    @form_condition = FormCondition.find(params[:form_condition_id])
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_form_condition_field
    @form_condition_field = FormConditionField.find(params[:id])
    @form_condition = @form_condition_field.form_condition
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def form_condition_field_params
    params.require(:form_condition_field).permit(:form_condition_id, :field_id, :connector, :operator, :operand)
  end
end

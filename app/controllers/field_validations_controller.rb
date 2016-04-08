class FieldValidationsController < ApplicationController
  before_action :set_field, only: [:new, :create, :index]
  before_action :set_field_validation, only: [:show, :edit, :update, :destroy]

  # GET /field_validations
  # GET /field_validations.json
  def index
    @field_validations = FieldValidation.all
  end

  # GET /field_validations/1
  # GET /field_validations/1.json
  def show
  end

  # GET /field_validations/new
  def new
    @field_validation = @field.field_validations.build
  end

  # GET /field_validations/1/edit
  def edit
  end

  # POST /field_validations
  # POST /field_validations.json
  def create
    respond_to do |format|
      if create_field_validation
        format.html { redirect_to edit_field_path @field_validation.field, notice: 'Field validation was successfully created.' }
        format.json { render :show, status: :created, location: @field_validation.field }
      else
        format.html { render :new }
        format.json { render json: @field_validation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /field_validations/1
  # PATCH/PUT /field_validations/1.json
  def update
    respond_to do |format|
      if @field_validation.update(field_validation_params)
        format.html { redirect_to edit_field_path @field_validation.field, notice: 'Field validation was successfully updated.' }
        format.json { render :show, status: :ok, location: @field_validation }
      else
        format.html { render :edit }
        format.json { render json: @field_validation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_validations/1
  # DELETE /field_validations/1.json
  def destroy
    @field_validation.destroy
    respond_to do |format|
      format.html { redirect_to edit_field_path @field, notice: 'Field validation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def create_field_validation
    @field_validation = @field.field_validations.create(field_validation_params)
  end

  def set_field
    @field = Field.find(params[:field_id])
  end

  def set_field_validation
    @field_validation = FieldValidation.find(params[:id])
    @field = @field_validation.field
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def field_validation_params
    params.require(:field_validation).permit(:id,
                                             :connector,
                                             :operator,
                                             :operand)
  end
end

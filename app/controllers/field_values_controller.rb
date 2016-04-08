class FieldValuesController < ApplicationController
  before_action :set_field, only: [:new, :create, :index]
  before_action :set_field_value, only: [:show, :edit, :update, :destroy]

  # GET /field_values
  # GET /field_values.json
  def index
    @field_values = FieldValue.all
  end

  # GET /field_values/1
  # GET /field_values/1.json
  def show
  end

  # GET /field_values/new
  def new
    @field_value = @field.field_values.build
  end

  # GET /field_values/1/edit
  def edit
  end

  # POST /field_values
  # POST /field_values.json
  def create
    respond_to do |format|
      if create_field_value
        format.html { redirect_to edit_field_path @field_value.field, notice: 'Field value was successfully created.' }
        format.json { render :show, status: :created, location: @field_value.field }
      else
        format.html { render :new }
        format.json { render json: @field_value.field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /field_values/1
  # PATCH/PUT /field_values/1.json
  def update
    respond_to do |format|
      if @field_value.update(field_value_params)
        format.html { redirect_to edit_field_path @field_value.field, notice: 'Field value was successfully updated.' }
        format.json { render :show, status: :ok, location: @field_value.field }
      else
        format.html { render :edit }
        format.json { render json: @field_value.field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_values/1
  # DELETE /field_values/1.json
  def destroy
    @field_value.destroy
    respond_to do |format|
      format.html { redirect_to edit_field_path @field, notice: 'Field value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def create_field_value
    @field_value = @field.field_values.create(field_value_params)
  end

  def set_field
    @field = Field.find(params[:field_id])
  end

  def set_field_value
    @field_value = FieldValue.find(params[:id])
    @field = @field_value.field
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def field_value_params
    params.require(:field_value).permit(:id,
                                        :field_value,
                                        :label)
  end
end

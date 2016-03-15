class ParticipantEventFormFieldsController < ApplicationController
  before_action :set_participant_event_form_field, only: [:show, :edit, :update, :destroy]

  # GET /participant_event_form_fields
  # GET /participant_event_form_fields.json
  def index
    @participant_event_form_fields = ParticipantEventFormField.all
  end

  # GET /participant_event_form_fields/1
  # GET /participant_event_form_fields/1.json
  def show
  end

  # GET /participant_event_form_fields/new
  def new
    @participant_event_form_field = ParticipantEventFormField.new
  end

  # GET /participant_event_form_fields/1/edit
  def edit
  end

  # POST /participant_event_form_fields
  # POST /participant_event_form_fields.json
  def create
    @participant_event_form_field = ParticipantEventFormField.new(participant_event_form_field_params)

    respond_to do |format|
      if @participant_event_form_field.save
        format.html { redirect_to @participant_event_form_field, notice: 'Participant event form field was successfully created.' }
        format.json { render :show, status: :created, location: @participant_event_form_field }
      else
        format.html { render :new }
        format.json { render json: @participant_event_form_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participant_event_form_fields/1
  # PATCH/PUT /participant_event_form_fields/1.json
  def update
    respond_to do |format|
      if @participant_event_form_field.update(participant_event_form_field_params)
        format.html { redirect_to @participant_event_form_field, notice: 'Participant event form field was successfully updated.' }
        format.json { render :show, status: :ok, location: @participant_event_form_field }
      else
        format.html { render :edit }
        format.json { render json: @participant_event_form_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participant_event_form_fields/1
  # DELETE /participant_event_form_fields/1.json
  def destroy
    @participant_event_form_field.destroy
    respond_to do |format|
      format.html { redirect_to participant_event_form_fields_url, notice: 'Participant event form field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant_event_form_field
      @participant_event_form_field = ParticipantEventFormField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participant_event_form_field_params
      params.require(:participant_event_form_field).permit(:participant_event_form_id)
    end
end

class ParticipantEventFormsController < ApplicationController
  include ParticipantSetup
  before_action :set_participant_event_form, only: [:show, :edit, :update, :destroy]
  before_action :set_form_fields, only: [:show, :edit, :update, :destroy]

  # GET /participant_event_forms
  # GET /participant_event_forms.json
  def index
    @participant_event_forms = ParticipantEventForm.all
  end

  # GET /participant_event_forms/1
  # GET /participant_event_forms/1.json
  def show
  end

  # GET /participant_event_forms/new
  def new
    @participant_event_form = ParticipantEventForm.new
  end

  # GET /participant_event_forms/1/edit
  def edit
  end

  # POST /participant_event_forms
  # POST /participant_event_forms.json
  def create
    @participant_event_form = ParticipantEventForm.new(participant_event_form_params)

    respond_to do |format|
      if @participant_event_form.save
        format.html { redirect_to @participant_event_form, notice: 'Participant event form was successfully created.' }
        format.json { render :show, status: :created, location: @participant_event_form }
      else
        format.html { render :new }
        format.json { render json: @participant_event_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participant_event_forms/1
  # PATCH/PUT /participant_event_forms/1.json
  def update
    respond_to do |format|
      if @participant_event_form.update(participant_event_form_params)
        format.html { redirect_to @participant_event_form, notice: 'Participant event form was successfully updated.' }
        format.json { render :show, status: :ok, location: @participant_event_form }
      else
        format.html { render :edit }
        format.json { render json: @participant_event_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participant_event_forms/1
  # DELETE /participant_event_forms/1.json
  def destroy
    @participant_event_form.destroy
    respond_to do |format|
      format.html { redirect_to participant_event_forms_url, notice: 'Participant event form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_form_fields
    @form = @participant_event_form.event_form.form
    @fields = @form.fields
  end

  def set_participant_event_form
    @participant_event_form = ParticipantEventForm.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def participant_event_form_params
    params.require(:participant_event_form).permit(:participant_id, :event_form_id)
  end
end

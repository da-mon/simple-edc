class EventFormsController < ApplicationController
  before_action :set_event, only: [:new, :create, :index]
  before_action :set_event_form, only: [:show, :edit, :update, :destroy]

  # GET /event_forms
  # GET /event_forms.json
  def index
    @event_forms = @event.event_forms
  end

  # GET /event_forms/1
  # GET /event_forms/1.json
  def show
  end

  # GET /event_forms/new
  def new
    @event_form = @event.event_forms.build
  end

  # GET /event_forms/1/edit
  def edit
  end

  # POST /event_forms
  # POST /event_forms.json
  def create
    @event_form = EventForm.new(event_form_params)

    respond_to do |format|
      if create_event_form
        format.html { redirect_to @event_form, notice: 'Event form was successfully created.' }
        format.json { render :show, status: :created, location: @event_form }
      else
        format.html { render :new }
        format.json { render json: @event_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_forms/1
  # PATCH/PUT /event_forms/1.json
  def update
    respond_to do |format|
      if @event_form.update(event_form_params)
        format.html { redirect_to @event_form, notice: 'Event form was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_form }
      else
        format.html { render :edit }
        format.json { render json: @event_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_forms/1
  # DELETE /event_forms/1.json
  def create_event_form
    @event_form = @event.event_forms.create(event_form_params)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def destroy
    @event_form.destroy
    respond_to do |format|
      format.html { redirect_to event_forms_url, notice: 'Event form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_event_form
    @event_form = EventForm.find(params[:id])
    @event = @event_form.event
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def event_form_params
    params.require(:event_form).permit(:id, :form_id, :_destroy)
  end
end

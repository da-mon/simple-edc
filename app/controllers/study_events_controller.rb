class StudyEventsController < ApplicationController
  before_action :set_study_event, only: [:show, :edit, :update, :destroy]

  # GET /study_events
  # GET /study_events.json
  def index
    @study_events = StudyEvent.all
  end

  # GET /study_events/1
  # GET /study_events/1.json
  def show
  end

  # GET /study_events/new
  def new
    @study_event = StudyEvent.new
  end

  # GET /study_events/1/edit
  def edit
  end

  # POST /study_events
  # POST /study_events.json
  def create
    @study_event = StudyEvent.new(study_event_params)

    respond_to do |format|
      if @study_event.save
        format.html { redirect_to @study_event, notice: 'Study event was successfully created.' }
        format.json { render :show, status: :created, location: @study_event }
      else
        format.html { render :new }
        format.json { render json: @study_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_events/1
  # PATCH/PUT /study_events/1.json
  def update
    respond_to do |format|
      if @study_event.update(study_event_params)
        format.html { redirect_to @study_event, notice: 'Study event was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_event }
      else
        format.html { render :edit }
        format.json { render json: @study_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_events/1
  # DELETE /study_events/1.json
  def destroy
    @study_event.destroy
    respond_to do |format|
      format.html { redirect_to study_events_url, notice: 'Study event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_event
      @study_event = StudyEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_event_params
      params[:study_event]
    end
end

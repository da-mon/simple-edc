class CreateParticipantEventFormService < Struct.new(:participant, :participant_event_form_params, :event_form_id)
  def call
    participant_event_form = @participant.participant_event_forms.create(@participant_event_form_params)
    participant_event_form.event_form = EventForm.find(@event_form_id)
    participant_event_form.save!
    participant_event_form
  end
end
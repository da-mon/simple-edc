module ParticipantsHelper
  def link_to_participant_event_form(event_form)
    link_to event_form.form.name, new_participant_participant_event_form_path(@participant.id, {:event_form_id => event_form.id})
    #= link_to event_form.form.name, participant_event_form_path(ParticipantEventForm.find_or_create_by(:participant_id => @participant.id, :event_form_id => event_form.id))
  end
end

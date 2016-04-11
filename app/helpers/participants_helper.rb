module ParticipantsHelper
  def link_to_participant_event_form(event_form)
    link_to event_form.form, participant_event_form_link(get_participant_event_form(event_form), event_form.id)
  end

  private

  def get_participant_event_form(event_form)
    ParticipantEventForm.where(:participant_id => @participant.id, :event_form_id => event_form.id).first
  end

  def participant_event_form_link(participant_event_form, event_form_id)
    if participant_event_form
      edit_participant_event_form_path(participant_event_form)
    else
      new_participant_participant_event_form_path(@participant.id, {:event_form_id => event_form_id})
    end
  end
end

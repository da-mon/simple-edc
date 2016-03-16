module ParticipantEventFormsHelper
  def back_to_participant(participant)
    link_to 'Back to participant', participant_path(participant)
  end

  def peff_input(field, pef)
    field.code
  end

  def get_participant_event_form_field(field, pef)
    ParticipantEventFormField.where(:field_id => field.id, :participant_event_form_id => pef.id).first
  end
end

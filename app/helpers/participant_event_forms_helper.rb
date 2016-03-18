module ParticipantEventFormsHelper
  def back_to_participant(participant)
    link_to 'Back to participant', participant_path(participant)
  end

  def peff_input(field, i)
    ParticipantEventFormFieldInput::Tag.new(field, i).call
  end

  private

  def participant_event_form_field(field, pef)
    ParticipantEventFormField.where(:field_id => field.id, :participant_event_form_id => pef.id).first
  end
end

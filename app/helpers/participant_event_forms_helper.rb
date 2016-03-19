module ParticipantEventFormsHelper
  def back_to_participant(participant)
    link_to 'Back to participant', participant_path(participant)
  end

  def peff_id(pef, i)
    if pef.peff(i)
      hidden.new('id', i, pef.peff(i).id).call
    end
  end

  def peff_field_id(field, i)
    hidden.new('field_id', i, field.id).call
  end

  def peff_field_value(field, i, pef)
    field_value.new(field, i, pef.peff(i)).call
  end

  private
  def hidden
    ParticipantEventFormFieldInput::Hidden
  end

  def field_value
    ParticipantEventFormFieldInput::FieldValue
  end
end

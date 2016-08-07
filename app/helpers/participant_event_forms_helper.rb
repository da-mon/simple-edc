module ParticipantEventFormsHelper
  def back_to_participant(participant)
    link_to 'Back to participant', participant_path(participant)
  end

  def peff_id(pef, i)
    if pef.peff(i)
      ParticipantEventFormFieldInput::Input::Hidden.new('id', i, pef.peff(i).id).call
    end
  end

  def peff_field_id(field, i)
    ParticipantEventFormFieldInput::Input::Hidden.new('field_id', i, field.id).call
  end

  def peff_field_value(field, i, pef)
    ParticipantEventFormFieldInput::FieldValue.new(field, i, pef.peff(i)).call
  end

  def conditions(form)
    ParticipantEventFormCondition.new(form).call
  end
end

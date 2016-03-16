module ParticipantEventFormsHelper
  def back_to_participant(participant)
    link_to 'Back to participant', participant_path(participant)
  end

  def peff_input(field, i)
    field_value_tag(field, get_name(i))
  end

  private

  def participant_event_form_field(field, pef)
    ParticipantEventFormField.where(:field_id => field.id, :participant_event_form_id => pef.id).first
  end

  def get_name(i)
    'patient_event_form[patient_event_form_fields_attributes][' + i.to_s + '][field_value]'
  end

  def field_value_tag(field, name)
    case field.field_type.name
      when 'text'
        text_field_tag name
      when 'text_big'
        text_area_tag name
    end
  end
end

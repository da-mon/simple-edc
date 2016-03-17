module ParticipantEventFormsHelper
  def back_to_participant(participant)
    link_to 'Back to participant', participant_path(participant)
  end

  def peff_input(field, i)
    field_value_tag(field).call get_name(i), nil, get_type(field)
  end

  private

  def participant_event_form_field(field, pef)
    ParticipantEventFormField.where(:field_id => field.id, :participant_event_form_id => pef.id).first
  end

  def field_value_tag(field)
    if field.text? || field.number? || field.decimal?
      method(:text_field_tag)
    end
    if field.text_area?
      method(:text_area_tag)
    end
    if field.date?
      method(:date_field_tag)
    end
    if field.date_time?
      method(:datetime_field_tag)
    end
    method(:text_field_tag)
  end

  def get_name(i)
    "patient_event_form[patient_event_form_fields_attributes][#{i}][field_value]"
  end

  def get_type(field)
    rules = Hash['data-rule-required', 'true', 'data-rule-' + field.field_type, 'true']
    # extras
    rules
  end
end

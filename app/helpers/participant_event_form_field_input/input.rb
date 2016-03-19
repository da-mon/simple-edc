module ParticipantEventFormFieldInput
  module Input
    def input_name(i, field)
      "participant_event_form[participant_event_form_fields_attributes][#{i}][#{field}]"
    end
  end
end
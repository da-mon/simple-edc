json.array!(@participant_event_form_fields) do |participant_event_form_field|
  json.extract! participant_event_form_field, :id, :participant_event_form_id
  json.url participant_event_form_field_url(participant_event_form_field, format: :json)
end

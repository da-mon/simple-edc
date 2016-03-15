json.array!(@participant_event_forms) do |participant_event_form|
  json.extract! participant_event_form, :id, :participant_id, :event_form_id
  json.url participant_event_form_url(participant_event_form, format: :json)
end

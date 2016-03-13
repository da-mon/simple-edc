json.array!(@study_event_forms) do |study_event_form|
  json.extract! study_event_form, :id, :study_event_id, :study_form_id
  json.url study_event_form_url(study_event_form, format: :json)
end

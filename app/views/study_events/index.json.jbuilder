json.array!(@study_events) do |study_event|
  json.extract! study_event, :id
  json.url study_event_url(study_event, format: :json)
end

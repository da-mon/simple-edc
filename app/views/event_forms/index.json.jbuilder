json.array!(@event_forms) do |event_form|
  json.extract! event_form, :id
  json.url event_form_url(event_form, format: :json)
end

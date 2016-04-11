json.array!(@form_conditions) do |form_condition|
  json.extract! form_condition, :id, :form_id
  json.url form_condition_url(form_condition, format: :json)
end

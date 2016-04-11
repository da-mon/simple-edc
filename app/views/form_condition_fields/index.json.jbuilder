json.array!(@form_condition_fields) do |form_condition_field|
  json.extract! form_condition_field, :id, :form_condition_id, :field_id
  json.url form_condition_field_url(form_condition_field, format: :json)
end

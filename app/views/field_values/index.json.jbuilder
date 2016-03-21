json.array!(@field_values) do |field_value|
  json.extract! field_value, :id
  json.url field_value_url(field_value, format: :json)
end

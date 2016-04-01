json.array!(@field_validations) do |field_validation|
  json.extract! field_validation, :id
  json.url field_validation_url(field_validation, format: :json)
end

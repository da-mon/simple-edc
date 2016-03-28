crumb :field_value do |field_value|
  link field_value, field_value_path(field_value)
  parent :field, field_value.field
end

crumb :new_field_value do |field|
  link 'new field value'
  parent :field, field
end

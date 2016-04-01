crumb :field do |field|
  link field, edit_field_path(field)
  parent :form, field.form
end

crumb :new_field do |form|
  link 'new field'
  parent :form, form
end

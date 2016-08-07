# crumb :form_study do |form|
#   link 'forms'
#   parent :edit_study, form.study
# end

crumb :form do |form|
  link form, edit_form_path(form)
  parent :edit_study, form.study
end

crumb :new_form do |study|
  link 'new form'
  parent :edit_study, study
end

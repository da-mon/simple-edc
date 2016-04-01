crumb :study do |study|
  link study, edit_study_path(study)
end

crumb :new_study do
  link 'new study'
  parent :root
end

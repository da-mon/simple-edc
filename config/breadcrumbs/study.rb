crumb :study do |study|
  link study, study_path(study)
end

crumb :new_study do
  link 'new study'
  parent :root
end

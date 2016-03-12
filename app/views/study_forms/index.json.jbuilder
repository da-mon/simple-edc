json.array!(@study_forms) do |study_form|
  json.extract! study_form, :id
  json.url study_form_url(study_form, format: :json)
end

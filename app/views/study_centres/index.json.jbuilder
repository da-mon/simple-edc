json.array!(@study_centres) do |study_centre|
  json.extract! study_centre, :id, :references, :references
  json.url study_centre_url(study_centre, format: :json)
end

json.array!(@studies) do |study|
  json.extract! study, :id, :name
  json.url study_url(study, format: :json)
end

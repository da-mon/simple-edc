json.array!(@participants) do |participant|
  json.extract! participant, :id, :participant_id
  json.url participant_url(participant, format: :json)
end

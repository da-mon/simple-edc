json.array!(@study_users) do |study_user|
  json.extract! study_user, :id, :study_id, :user_id
  json.url study_user_url(study_user, format: :json)
end

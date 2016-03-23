class Study < BaseModel
  has_many :participants

  has_many :study_users
  has_many :users, :through => :study_users

  has_many :events
  has_many :forms

  has_many :study_centres
  has_many :centres, :through => :study_centres
end

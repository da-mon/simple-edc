class Event < BaseModel
  belongs_to :study
  has_many :event_forms
  has_many :forms, :through => :event_forms
end

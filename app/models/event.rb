class Event < BaseModel
  belongs_to :study
  has_many :event_forms
end

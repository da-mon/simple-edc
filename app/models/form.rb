class Form < BaseModel
  belongs_to :study

  has_many :fields
  has_many :form_conditions

  has_many :event_forms, :dependent => :destroy
  has_many :events, :through => :event_forms
end

class Form < BaseModel
  belongs_to :study

  has_many :fields
  # accepts_nested_attributes_for :fields, reject_if: :all_blank, allow_destroy: true
  # has_many :field_values, :through => :fields
  # accepts_nested_attributes_for :field_values, reject_if: :all_blank, allow_destroy: true

  has_many :event_forms, :dependent => :destroy
  has_many :events, :through => :event_forms
end

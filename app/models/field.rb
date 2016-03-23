class Field < BaseModel
  belongs_to :form
  has_many :field_values
  has_many :field_validations

  enum field_type: [:text, :textarea, :number, :decimal, :date, :time, :checkbox, :radio, :dropdown]

end

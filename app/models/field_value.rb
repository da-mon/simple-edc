class FieldValue < BaseModel
  belongs_to :field

  def to_s
    self.field.name + ' ' + self.field_value
  end
end

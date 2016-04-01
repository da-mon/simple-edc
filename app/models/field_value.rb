class FieldValue < BaseModel
  belongs_to :field

  def to_s
    self.label
  end
end

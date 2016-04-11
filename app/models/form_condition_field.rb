class FormConditionField < ActiveRecord::Base
  belongs_to :form_condition
  belongs_to :field

  def to_s
    self.field.name
  end
end

class FormCondition < ActiveRecord::Base
  belongs_to :form
  belongs_to :field
  has_many :form_condition_conditions
  has_many :form_condition_fields

  def to_s
    if !self.new_record?
      self.conditions + ' -> ' + self.fields
    else
      'new form condition'
    end
  end

  def conditions
    self.form_condition_conditions.join(' ')
  end

  def fields
    self.form_condition_fields.join(', ')
  end
end

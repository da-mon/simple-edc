class FormCondition < ActiveRecord::Base
  belongs_to :form
  has_many :form_condition_conditions
  has_many :form_condition_fields

  def to_s
    fc = self.form_condition_conditions.join(' ') + ' -> ' + self.form_condition_fields.join(', ')
    if fc && !fc.empty?
      fc
    else
      'new form condition'
    end
  end
end

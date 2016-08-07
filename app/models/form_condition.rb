class FormCondition < ActiveRecord::Base
  belongs_to :form
  belongs_to :field
  has_many :form_condition_conditions
  has_many :form_condition_targets

  def to_s
    if !self.new_record?
      self.conditions + ' -> ' + self.targets.join(',')
    else
      'new form condition'
    end
  end

  def conditions
    self.form_condition_conditions.join(' ')
  end

  def targets
    self.form_condition_targets.join(',').split(',')
  end
end

class FormConditionCondition < ActiveRecord::Base
  belongs_to :form_condition
  belongs_to :field

  enum connector: [:'and', :'or']
  enum operator: [:'equal to',
                  :'not equal to',
                  :'greater than',
                  :'greater than or equal to',
                  :'less than',
                  :'less than or equal to']

  def to_s
    start = self.connector ? self.connector + ' ' : ''
    start + self.field.name + ' ' + self.operator + ' ' + self.operand
  end
end

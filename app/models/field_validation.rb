class FieldValidation < ActiveRecord::Base
  belongs_to :field

  enum operator: [:'equal to',
                  :'not equal to',
                  :'greater than',
                  :'greater than or equal to',
                  :'less than',
                  :'less than or equal to']
  enum connector: [:'and', :'or']

  def to_s
    start = self.connector ? self.connector + ' ' : ''
    start + self.operator + ' ' + self.operand
  end
end

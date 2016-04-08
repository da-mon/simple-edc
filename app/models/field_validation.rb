class FieldValidation < ActiveRecord::Base
  belongs_to :field
  enum operator: [:'equal', :'not equal', :'greater than', :'less than']
  enum connector: [:'and', :'or']
  # enum comparison_type: [:field, :value]
  # enum type: [:error, :warning]

  def to_s
    vc = self.connector ? self.connector + ' ' : ''
    vc + self.operator + ' ' + self.operand
  end
end

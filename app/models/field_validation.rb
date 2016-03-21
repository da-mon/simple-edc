class FieldValidation < ActiveRecord::Base
  belongs_to :field
  enum comparison_operator: [:'=', :'!=', :'>', :'<']
  enum conditional_operator: [:and, :or]
  enum comparison_type: [:field, :value]
  enum validation_type: [:error, :warning]
end

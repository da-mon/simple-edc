class FieldCondition < ActiveRecord::Base
  belongs_to :field
  enum comparison_operator: [:'=', :'!=', :'>', :'<']
  enum conditional_operator: [:and, :or]
end

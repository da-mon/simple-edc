class SimplifyFieldValidations < ActiveRecord::Migration
  def change
    remove_column :field_validations, :comparison_type
    remove_column :field_validations, :conditional_operator
    remove_column :field_validations, :comparison_operand
    remove_column :field_validations, :comparison_operator
    remove_column :field_validations, :validation_type
    remove_column :field_validations, :message

    add_column :field_validations, :connector, :integer
    add_column :field_validations, :operator, :integer
    add_column :field_validations, :operand, :string
  end
end

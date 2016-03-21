class AddAttributesToFieldValidation < ActiveRecord::Migration
  def change
    add_column :field_validations, :comparison_operator, :integer
    add_column :field_validations, :comparison_type, :integer
    add_column :field_validations, :comparison_operand, :string
    add_column :field_validations, :conditional_operator, :string
    add_column :field_validations, :validation_type, :integer
    add_column :field_validations, :message, :string
  end
end

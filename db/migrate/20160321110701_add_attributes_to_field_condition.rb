class AddAttributesToFieldCondition < ActiveRecord::Migration
  def change
    add_column :field_conditions, :comparison_target, :string
    add_column :field_conditions, :comparison_operator, :integer
    add_column :field_conditions, :comparison_operand, :string
    add_column :field_conditions, :conditional_operator, :string
  end
end

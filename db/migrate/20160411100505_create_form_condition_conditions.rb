class CreateFormConditionConditions < ActiveRecord::Migration
  def change
    create_table :form_condition_conditions do |t|
      t.references :form_condition, index: true, foreign_key: true
      t.references :field, index: true, foreign_key: true
      t.integer :connector
      t.integer :operator
      t.string :operand

      t.timestamps null: false
    end
  end
end

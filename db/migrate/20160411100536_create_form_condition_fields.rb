class CreateFormConditionFields < ActiveRecord::Migration
  def change
    create_table :form_condition_fields do |t|
      t.references :form_condition, index: true, foreign_key: true
      t.references :field, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

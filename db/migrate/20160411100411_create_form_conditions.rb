class CreateFormConditions < ActiveRecord::Migration
  def change
    create_table :form_conditions do |t|
      t.references :form, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

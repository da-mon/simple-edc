class CreateFieldValues < ActiveRecord::Migration
  def change
    create_table :field_values do |t|
      t.references :field, index: true, foreign_key: true
      t.string :label
      t.string :field_value
      t.timestamps null: false
    end
  end
end

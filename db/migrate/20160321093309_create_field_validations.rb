class CreateFieldValidations < ActiveRecord::Migration
  def change
    create_table :field_validations do |t|
      t.references :field, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateStudyForms < ActiveRecord::Migration
  def change
    create_table :study_forms do |t|
      t.references :study, index: true, foreign_key: true
      t.references :form, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

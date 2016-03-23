class CreateStudyCentres < ActiveRecord::Migration
  def change
    create_table :study_centres do |t|
      t.references :study, index: true, foreign_key: true
      t.references :centre, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

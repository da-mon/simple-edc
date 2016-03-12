class CreateStudyEvents < ActiveRecord::Migration
  def change
    create_table :study_events do |t|
      t.references :event, index: true, foreign_key: true
      t.references :study, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

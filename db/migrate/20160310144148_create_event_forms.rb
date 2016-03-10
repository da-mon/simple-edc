class CreateEventForms < ActiveRecord::Migration
  def change
    create_table :event_forms do |t|
      t.references :event, index: true, foreign_key: true
      t.references :form, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

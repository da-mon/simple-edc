class CreateParticipantEventForms < ActiveRecord::Migration
  def change
    create_table :participant_event_forms do |t|
      t.references :participant, index: true, foreign_key: true
      t.references :event_form, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateParticipantEventFormFields < ActiveRecord::Migration
  def change
    create_table :participant_event_form_fields do |t|
      t.references :participant_event_form, index: {:name => "index_peff_on_pef_id"}, foreign_key: true

      t.timestamps null: false
    end
  end
end

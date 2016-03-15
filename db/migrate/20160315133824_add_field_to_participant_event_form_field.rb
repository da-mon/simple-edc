class AddFieldToParticipantEventFormField < ActiveRecord::Migration
  def change
    add_reference :participant_event_form_fields, :field, index: true, foreign_key: true
  end
end

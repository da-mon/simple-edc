class AddFieldValueToParticipantEventFormField < ActiveRecord::Migration
  def change
    add_column :participant_event_form_fields, :field_value, :string
  end
end

class RenameParticipantEventFormFieldToParticipantStudyEventFormField < ActiveRecord::Migration
  def change
    rename_table :participant_event_form_fields, :participant_study_event_form_fields
  end
end

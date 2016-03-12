class RenameParticipantEventFormToParticipantStudyEventForm < ActiveRecord::Migration
  def change
    rename_table :participant_event_forms, :participant_study_event_forms
  end
end

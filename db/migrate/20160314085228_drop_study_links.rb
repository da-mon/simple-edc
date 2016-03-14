class DropStudyLinks < ActiveRecord::Migration
  def change
    drop_table :study_event_forms
    drop_table :study_events
    drop_table :study_forms
    drop_table :participant_study_event_form_fields
    drop_table :participant_study_event_forms
  end
end

class RenameEventFormToStudyEventForm < ActiveRecord::Migration
  def change
    rename_table :event_forms, :study_event_forms
  end
end

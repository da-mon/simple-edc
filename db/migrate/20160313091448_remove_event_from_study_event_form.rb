class RemoveEventFromStudyEventForm < ActiveRecord::Migration
  def change
    remove_reference :study_event_forms, :event_id, index: true, foreign_key: true
    remove_column :study_event_forms, :event_id
  end
end
class AddStudyEventToStudyEventForm < ActiveRecord::Migration
  def change
    add_reference :study_event_forms, :study_event, index: true, foreign_key: true
  end
end

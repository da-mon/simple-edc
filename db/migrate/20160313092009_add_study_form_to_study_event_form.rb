class AddStudyFormToStudyEventForm < ActiveRecord::Migration
  def change
    add_reference :study_event_forms, :study_form, index: true, foreign_key: true
  end
end

class RemoveFormFromStudyEventForm < ActiveRecord::Migration
  def change
    remove_reference :study_event_forms, :form_id, index: true, foreign_key: true
    remove_column :study_event_forms, :form_id
  end
end

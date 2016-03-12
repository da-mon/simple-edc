class RemoveStudyFromForms < ActiveRecord::Migration
  def change
    remove_reference :forms, :study, index: true, foreign_key: true
  end
end

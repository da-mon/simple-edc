class AddStudyToForms < ActiveRecord::Migration
  def change
    add_reference :forms, :study, index: true, foreign_key: true
  end
end

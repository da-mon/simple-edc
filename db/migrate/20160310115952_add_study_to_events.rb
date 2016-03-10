class AddStudyToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :study, index: true, foreign_key: true
  end
end

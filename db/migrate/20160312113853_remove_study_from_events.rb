class RemoveStudyFromEvents < ActiveRecord::Migration
  def change
    remove_reference :events, :study, index: true, foreign_key: true
  end
end

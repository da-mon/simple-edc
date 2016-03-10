class AddStudyToParticipants < ActiveRecord::Migration
  def change
    add_reference :participants, :study, index: true, foreign_key: true
  end
end

class RenameParticipantId < ActiveRecord::Migration
  def change
    rename_column :participants, :participant_id, :participant_identifier
  end
end

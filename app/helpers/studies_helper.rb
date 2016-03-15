module StudiesHelper
  def link_to_participant(participant)
    link_to participant.participant_identifier, participant_path(participant)
  end
end

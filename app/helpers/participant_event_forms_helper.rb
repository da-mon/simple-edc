module ParticipantEventFormsHelper
  def back_to_participant(participant)
    link_to 'Back to participant', participant_path(participant)
  end
end

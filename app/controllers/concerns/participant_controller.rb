module ParticipantController
  extend ActiveSupport::Concern

  included do
    before_action :set_participant, only: [:new, :create, :index]
  end

  def set_participant
    @participant = Participant.find(params[:participant_id])
  end


end
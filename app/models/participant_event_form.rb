class ParticipantEventForm < ActiveRecord::Base
  belongs_to :participant
  belongs_to :event_form
end

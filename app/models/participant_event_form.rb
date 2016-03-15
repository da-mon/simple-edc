class ParticipantEventForm < ActiveRecord::Base
  belongs_to :participant
  belongs_to :event_form
  has_many :participant_event_form_fields
end

class ParticipantStudyEventForm < ActiveRecord::Base
  belongs_to :participant
  belongs_to :study_event_form
end

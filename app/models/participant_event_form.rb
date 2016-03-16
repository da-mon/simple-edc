class ParticipantEventForm < ActiveRecord::Base
  belongs_to :participant
  belongs_to :event_form
  has_many :participant_event_form_fields
  accepts_nested_attributes_for :participant_event_form_fields, reject_if: :all_blank, allow_destroy: true
end

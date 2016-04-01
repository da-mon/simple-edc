class ParticipantEventForm < ActiveRecord::Base
  belongs_to :participant
  belongs_to :event_form
  has_many :participant_event_form_fields
  accepts_nested_attributes_for :participant_event_form_fields, reject_if: :all_blank, allow_destroy: true

  def peff(i)
    self.participant_event_form_fields[i]
  end

  def to_s
    self.event_form.event.name + ' ' + self.event_form.form.name
  end
end

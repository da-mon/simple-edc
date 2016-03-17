class EventForm < ActiveRecord::Base
  belongs_to :event
  belongs_to :form

  has_many :participant_event_forms

  # validates_uniqueness_of :event_id, :scope => :form_id
end

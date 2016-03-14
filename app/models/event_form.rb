class EventForm < ActiveRecord::Base
  belongs_to :event
  belongs_to :form

  validates_uniqueness_of :event_id, :scope => :form_id
end

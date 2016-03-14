class EventForm < ActiveRecord::Base
  belongs_to :event
  belongs_to :form
end

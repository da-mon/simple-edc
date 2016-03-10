class Event < ActiveRecord::Base
  belongs_to :study
  has_many :event_forms
end

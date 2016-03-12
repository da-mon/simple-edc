class Event < ActiveRecord::Base
  has_many :studies, :through => :study_events, :autosave => true
  has_many :study_event_forms
end

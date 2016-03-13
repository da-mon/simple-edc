class Event < ActiveRecord::Base
  has_many :study_events
  has_many :studies, :through => :study_events, :autosave => true
  has_many :study_event_forms
  has_many :study_forms, :through => :study_event_forms, :autosave => true
  has_many :forms, :through => :study_forms, :autosave => true

end

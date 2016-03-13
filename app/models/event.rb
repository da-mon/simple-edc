class Event < ActiveRecord::Base
  has_many :study_events
  has_many :studies, :through => :study_events
  has_many :study_event_forms, :through => :study_events, :autosave => true
  accepts_nested_attributes_for :study_event_forms, reject_if: :all_blank, allow_destroy: true
end

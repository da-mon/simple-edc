class Event < ActiveRecord::Base
  has_many :study_events
  has_many :studies, :through => :study_events
end

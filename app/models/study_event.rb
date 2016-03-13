class StudyEvent < ActiveRecord::Base
  belongs_to :event
  belongs_to :study

  has_many :study_event_forms
end

class StudyEventForm < ActiveRecord::Base
  belongs_to :study_event
  belongs_to :study_form
end

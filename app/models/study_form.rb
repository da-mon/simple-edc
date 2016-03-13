class StudyForm < ActiveRecord::Base
  belongs_to :study
  belongs_to :form

  has_many :study_event_forms
end

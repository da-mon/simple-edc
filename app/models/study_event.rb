class StudyEvent < ActiveRecord::Base
  belongs_to :event
  belongs_to :study

  has_many :study_event_forms
  # accepts_nested_attributes_for :study_event_forms, reject_if: :all_blank, allow_destroy: true
end

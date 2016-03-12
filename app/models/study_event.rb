class StudyEvent < ActiveRecord::Base
  belongs_to :event
  belongs_to :study
end

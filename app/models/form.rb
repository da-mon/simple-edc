class Form < ActiveRecord::Base
  belongs_to :study
  has_many :fields
  has_many :study_event_forms
end

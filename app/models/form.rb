class Form < ActiveRecord::Base
  has_many :study_forms
  has_many :studies, :through => :study_forms, :autosave => true
  has_many :fields
  has_many :study_event_forms
end

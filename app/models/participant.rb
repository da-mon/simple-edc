class Participant < ActiveRecord::Base
  belongs_to :study
  has_many :participant_event_forms
  has_many :event_forms, :through => :participant_event_forms
  # has_many :forms, :through => :event_forms
end

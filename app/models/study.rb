class Study < ActiveRecord::Base
  has_many :participants

  has_many :study_users
  has_many :users, :through => :study_users

  has_many :study_events
  has_many :events, :through => :study_events, :autosave => true

  has_many :study_forms
  has_many :forms, :through => :study_forms, :autosave => true
end

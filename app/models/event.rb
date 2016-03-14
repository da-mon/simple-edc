class Event < ActiveRecord::Base
  belongs_to :study
  has_many :event_forms
  has_many :forms, :through => :event_forms
  accepts_nested_attributes_for :event_forms, reject_if: :all_blank, allow_destroy: true
end

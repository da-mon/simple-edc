class Form < ActiveRecord::Base
  belongs_to :study

  has_many :fields
  accepts_nested_attributes_for :fields, reject_if: :all_blank, allow_destroy: true

  has_many :event_forms
  # has_many :events, :through => :event_forms
end

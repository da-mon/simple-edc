class Form < ActiveRecord::Base
  belongs_to :study
  has_many :fields
  has_many :event_forms
end

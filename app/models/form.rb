class Form < ActiveRecord::Base
  has_many :study_forms
  has_many :studies, :through => :study_forms

  has_many :fields
  accepts_nested_attributes_for :fields, reject_if: :all_blank, allow_destroy: true
end

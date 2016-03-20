class Field < ActiveRecord::Base
  belongs_to :form
  has_many :field_values
  accepts_nested_attributes_for :field_values, reject_if: :all_blank, allow_destroy: true

  enum field_type: [:text, :textarea, :number, :decimal, :date, :time, :checkbox, :radio, :dropdown]
end

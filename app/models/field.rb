class Field < ActiveRecord::Base
  belongs_to :form
  enum field_type: [:text, :textarea, :number, :decimal, :date, :datetime, :checkbox]
end

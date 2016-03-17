class Field < ActiveRecord::Base
  belongs_to :form
  enum field_type: [:text, :text_area, :number, :decimal, :date, :date_time]
end

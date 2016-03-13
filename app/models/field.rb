class Field < ActiveRecord::Base
  belongs_to :form
  belongs_to :field_type
end

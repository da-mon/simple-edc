class Field < ActiveRecord::Base
  belongs_to :form
  # enum type: [:string, :integer, :date]
end

class StudyCentre < ActiveRecord::Base
  belongs_to :study
  belongs_to :centre
end

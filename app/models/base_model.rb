class BaseModel < ActiveRecord::Base
  self.abstract_class = true

  def to_s
    name
  end
end
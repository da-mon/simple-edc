class BaseModel < ActiveRecord::Base
  self.abstract_class = true

  def to_s
    name ? name : ''
  end
end
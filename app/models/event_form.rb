class EventForm < BaseModel
  belongs_to :event
  belongs_to :form

  has_many :participant_event_forms

  def to_s
    self.form.name
  end

  # validates_uniqueness_of :event_id, :scope => :form_id
end

class AddFormAndEventToEventForm < ActiveRecord::Migration
  def change
    add_reference :event_forms, :form, index: true, foreign_key: true
    add_reference :event_forms, :event, index: true, foreign_key: true
  end
end

class CreateEventForms < ActiveRecord::Migration
  def change
    create_table :event_forms do |t|

      t.timestamps null: false
    end
  end
end

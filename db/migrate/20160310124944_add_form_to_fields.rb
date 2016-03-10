class AddFormToFields < ActiveRecord::Migration
  def change
    add_reference :fields, :form, index: true, foreign_key: true
  end
end

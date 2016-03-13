class AddFieldTypeToField < ActiveRecord::Migration
  def change
    remove_column :fields, :field_type
    add_reference :fields, :field_type, index: true, foreign_key: true
  end
end

class FieldTypeToEnum < ActiveRecord::Migration
  def change
    remove_reference :fields, :field_type
    add_column :fields, :field_type, :integer
    drop_table :field_types
  end
end

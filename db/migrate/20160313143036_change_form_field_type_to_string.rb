class ChangeFormFieldTypeToString < ActiveRecord::Migration
  def change
    change_column :fields, :field_type, :string
  end
end

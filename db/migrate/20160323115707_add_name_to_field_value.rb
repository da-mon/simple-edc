class AddNameToFieldValue < ActiveRecord::Migration
  def change
    add_column :field_values, :name, :string
  end
end

class RenameFieldsNameToCode < ActiveRecord::Migration
  def change
    rename_column :fields, :name, :code
  end
end

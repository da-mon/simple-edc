class RemoveNameFromFieldValueAndFieldValidation < ActiveRecord::Migration
  def change
    remove_column :field_values, :name
    remove_column :field_validations, :name
  end
end

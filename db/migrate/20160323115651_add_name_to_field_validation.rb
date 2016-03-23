class AddNameToFieldValidation < ActiveRecord::Migration
  def change
    add_column :field_validations, :name, :string
  end
end

class AddNumberToField < ActiveRecord::Migration
  def change
    add_column :fields, :number, :string
  end
end

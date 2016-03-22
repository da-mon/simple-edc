class DropFieldCondition < ActiveRecord::Migration
  def change
    drop_table :field_conditions
  end
end

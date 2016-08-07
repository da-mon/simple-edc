class AddFieldToFormCondition < ActiveRecord::Migration
  def change
    add_reference :form_conditions, :field, index: true, foreign_key: true
  end
end

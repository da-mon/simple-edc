class CreateCentres < ActiveRecord::Migration
  def change
    create_table :centres do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

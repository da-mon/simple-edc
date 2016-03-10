class CreateStudyUsers < ActiveRecord::Migration
  def change
    create_table :study_users do |t|
      t.integer :study_id, :null => false
      t.integer :user_id, :null => false

      t.timestamps null: false
    end
  end
end

class CreateDiagnoses < ActiveRecord::Migration
  def change
    create_table :diagnoses do |t|
      t.string :user_id
      t.string :treatment_id
      t.string :condition_id

      t.timestamps
    end
  end
end

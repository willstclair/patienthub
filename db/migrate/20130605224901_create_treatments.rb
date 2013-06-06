class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.integer :treatment_id
      t.string :treatment_name
      t.integer :treatment_category_id

      t.timestamps
    end
  end
end

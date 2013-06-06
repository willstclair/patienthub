class CreateTreatmentCategories < ActiveRecord::Migration
  def change
    create_table :treatment_categories do |t|
      t.integer :treatment_category_id
      t.string :treatment_category_name

      t.timestamps
    end
  end
end

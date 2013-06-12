class CreateConditionCategories < ActiveRecord::Migration
  def change
    create_table :condition_categories do |t|
      t.integer :condition_category_id
      t.string :condition_category_name

      t.timestamps
    end
  end
end

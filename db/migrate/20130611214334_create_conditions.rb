class CreateConditions < ActiveRecord::Migration
  def change
    drop_table :conditions
    create_table :conditions do |t|
      t.integer :condition_id
      t.string :condition_name
      t.integer :condition_category_id

      t.timestamps
    end
  end
end

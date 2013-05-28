class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.integer :condition_id
      t.string :condition_name
      t.integer :category_id
      t.timestamps
    end
  end
end

class RemoveSomeStuff < ActiveRecord::Migration
  def change
    remove_column :conditions, :condition_id
    remove_column :condition_categories, :condition_category_id
  end
end

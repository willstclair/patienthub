class RemoveTreatmentsAdvisedFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :treatments_advised
  end

  def down
    add_column :users, :treatments_advised, :string
  end
end

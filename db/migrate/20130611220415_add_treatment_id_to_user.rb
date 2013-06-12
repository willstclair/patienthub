class AddTreatmentIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :treatment_id, :integer
  end
end

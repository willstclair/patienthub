class RemoveTreatmentIdFromDiagnoses < ActiveRecord::Migration
  def up
    remove_column :diagnoses, :treatment_id
  end

  def down
    add_column :diagnoses, :treatment_id, :integer
  end
end

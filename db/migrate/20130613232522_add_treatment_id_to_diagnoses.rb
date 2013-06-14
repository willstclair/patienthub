class AddTreatmentIdToDiagnoses < ActiveRecord::Migration
  def change
    add_column :diagnoses, :treatment_id, :integer
  end
end

class AddTreatmentNameToDiagnoses < ActiveRecord::Migration
  def change
    add_column :diagnoses, :treatment_name, :string
  end
end

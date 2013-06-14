class AddConditionNameToDiagnoses < ActiveRecord::Migration
  def change
    add_column :diagnoses, :condition_name, :string
  end
end
